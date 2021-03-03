#####################################################################
# imports

import BattleReplay
import BigWorld
from Avatar import PlayerAvatar
from CurrentVehicle import g_currentVehicle
from gui.battle_control.battle_constants import PERSONAL_EFFICIENCY_TYPE as _ETYPE
from gui.battle_control.controllers.msgs_ctrl import BattleMessagesController
from gui.Scaleform.daapi.view.battle.shared.damage_log_panel import DamageLogPanel
from gui.Scaleform.daapi.view.battle.shared.frag_correlation_bar import FragCorrelationBar
from gui.Scaleform.daapi.view.battle.shared.stats_exchange.broker import CollectableStats
from gui.Scaleform.daapi.view.lobby.hangar.Hangar import Hangar
from helpers import dependency
from skeletons.gui.game_control import IBootcampController
from skeletons.gui.shared import IItemsCache
from Vehicle import Vehicle

from xfw_actionscript.python import as_event
from xfw.events import registerEvent
import xvm_battle.python.battle as battle
import xvm_main.python.config as config

#####################################################################
# private

def isBattle():
    return battle.isBattleTypeSupported

#####################################################################
# handlers

class GetData(object):
    itemsCache = dependency.instance(IItemsCache)
    isInBootcamp = dependency.instance(IBootcampController).isInBootcamp()

    def __init__(self):
        self.battletype = 0
        self.isAnonymMode = False
        self.avg_damage = 0
        self.hp_team = [0, 0]
        self.max_hp_team = [0, 0]
        self.score_team = [0, 0]
        self.vehicles_team = [0, 0]
        self.damage = 0
        self.assist = 0
        self.blocked = 0
        self.stun = 0
        self.teamHits = False

    def reset(self):
        self.battletype = 0
        self.isAnonymMode = False
        self.avg_damage = 0
        self.hp_team = [0, 0]
        self.max_hp_team = [0, 0]
        self.score_team = [0, 0]
        self.vehicles_team = [0, 0]
        self.damage = 0
        self.assist = 0
        self.blocked = 0
        self.stun = 0
        self.teamHits = False

    def update(self, vInfoVO):
        isAnonym = vInfoVO.player.name != vInfoVO.player.fakeName
        self.battletype = BigWorld.player().arenaBonusType
        if not BattleReplay.g_replayCtrl.isPlaying and isAnonym:
            self.isAnonymMode = True
        else:
            self.isAnonymMode = False

    def totalEfficiency(self, diff):
        isUpdate = False
        if _ETYPE.DAMAGE in diff:
            self.damage = diff[_ETYPE.DAMAGE]
            isUpdate = True
            as_event('ON_DAMAGE_UPDATE')
        if _ETYPE.ASSIST_DAMAGE in diff:
            self.assist = diff[_ETYPE.ASSIST_DAMAGE]
            isUpdate = True
        if _ETYPE.BLOCKED_DAMAGE in diff:
            self.blocked = diff[_ETYPE.BLOCKED_DAMAGE]
            isUpdate = True
        if _ETYPE.STUN in diff:
            self.stun = diff[_ETYPE.STUN]
            isUpdate = True
        if isUpdate:
            as_event('ON_EFFICIENCY_UPDATE')

    def updateHangar(self):
        if not self.isInBootcamp or g_currentVehicle.isPresent():
            data = self.itemsCache.items.getVehicleDossier(g_currentVehicle.item.intCD).getRandomStats().getAvgDamage()
            self.avg_damage = data if data is not None else 0

    def isTeamHits(self):
        self.teamHits = True
        as_event('ON_TEAM_HITS')

data = GetData()

@registerEvent(Vehicle, 'onEnterWorld')
def onEnterWorld(self, prereqs):
    if isBattle() and self.isPlayerVehicle:
        arenaDP = self.guiSessionProvider.getArenaDP()
        vInfoVO = arenaDP.getVehicleInfo(self.id)
        data.vehicles_team = [arenaDP.getAlliesVehiclesNumber(), arenaDP.getEnemiesVehiclesNumber()]
        data.update(vInfoVO)

@registerEvent(PlayerAvatar, '_PlayerAvatar__destroyGUI')
def destroyGUI(self):
    data.reset()

@registerEvent(Hangar, '_Hangar__updateParams')
def updateParams(self):
    data.updateHangar()

@registerEvent(FragCorrelationBar, 'updateTeamHealth')
def updateTeamHealth(self, alliesHP, enemiesHP, totalAlliesHP, totalEnemiesHP):
    if isBattle():
        data.hp_team = [alliesHP, enemiesHP]
        data.max_hp_team = [float(totalAlliesHP), float(totalEnemiesHP)]
        as_event('ON_HP_UPDATE')

# @registerEvent(FragCorrelationBar, 'updateDeadVehicles')
# def updateDeadVehicles(self, aliveAllies, deadAllies, aliveEnemies, deadEnemies):
    # if isBattle():
        # inversion = config.get('fragCorrelation/showAliveNotFrags')
        # data.score_team = [len(deadEnemies), len(deadAllies)] if not inversion else [len(aliveAllies), len(aliveEnemies)]

@registerEvent(CollectableStats, '_setTotalScore')
def _setTotalScore(self, leftScope, rightScope):
    if isBattle():
        inversion = config.get('fragCorrelation/showAliveNotFrags')
        data.score_team = [leftScope, rightScope] if inversion else [data.vehicles_team[0] - rightScope, data.vehicles_team[1] - leftScope]

@registerEvent(DamageLogPanel, '_onTotalEfficiencyUpdated')
def _onTotalEfficiencyUpdated(self, diff):
    if isBattle() and self.isSwitchToVehicle:
        data.totalEfficiency(diff)

@registerEvent(BattleMessagesController, 'showAllyHitMessage')
def showAllyHitMessage(self, vehicleID=None):
    if isBattle():
        data.isTeamHits()