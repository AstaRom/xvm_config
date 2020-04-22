#####################################################################
# imports

import BattleReplay
import BigWorld
from Avatar import PlayerAvatar
from CurrentVehicle import g_currentVehicle
from gui.battle_control.battle_constants import PERSONAL_EFFICIENCY_TYPE as _ETYPE
from gui.Scaleform.daapi.view.battle.shared.damage_log_panel import DamageLogPanel
from gui.Scaleform.daapi.view.lobby.hangar.Hangar import Hangar
from helpers import dependency
from skeletons.gui.game_control import IBootcampController
from skeletons.gui.shared import IItemsCache
from Vehicle import Vehicle

from xfw_actionscript.python import as_event
from xfw.events import registerEvent
import xvm_battle.python.battle as battle
import xvm_battle.python.fragCorrelationPanel as panel

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
        self.player = None
        self.battletype = 0
        self.isAnonymMode = False
        self.avg_damage = 0
        self.max_hp_team = [0, 0]
        self.damage = 0
        self.assist = 0
        self.blocked = 0
        self.stun = 0

    def reset(self):
        self.player = None
        self.battletype = 0
        self.isAnonymMode = False
        self.avg_damage = 0
        self.max_hp_team = [0, 0]
        self.damage = 0
        self.assist = 0
        self.blocked = 0
        self.stun = 0

    def update(self, vInfoVO):
        isAnonym = vInfoVO.player.name != vInfoVO.player.fakeName        
        self.battletype = BigWorld.player().arena.guiType        
        if self.player is None:
            self.player = BigWorld.player()
        if not BattleReplay.g_replayCtrl.isPlaying and isAnonym:
            self.isAnonymMode = True
        else:
            self.isAnonymMode = False

    def updateHp(self):
        if panel.teams_totalhp[0] > self.max_hp_team[0]:
            self.max_hp_team[0] = panel.teams_totalhp[0]
        elif panel.teams_totalhp[1] > self.max_hp_team[1]:
            self.max_hp_team[1] = panel.teams_totalhp[1]
        else:
            return

    def isPlayerVehicle(self):
        if self.player is not None:
            if hasattr(self.player.inputHandler.ctrl, 'curVehicleID'):
                vId = self.player.inputHandler.ctrl.curVehicleID
                v = vId.id if isinstance(vId, Vehicle) else vId
                return self.player.playerVehicleID == v
            else:
                return True
        else:
            return False

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
            self.avg_damage = self.itemsCache.items.getVehicleDossier(g_currentVehicle.item.intCD).getRandomStats().getAvgDamage()

data = GetData()

@registerEvent(Vehicle, 'onEnterWorld')
def onEnterWorld(self, prereqs):
    if isBattle() and self.isPlayerVehicle:
        vInfoVO = self.guiSessionProvider.getArenaDP().getVehicleInfo(self.id)
        data.update(vInfoVO)

@registerEvent(PlayerAvatar, '_PlayerAvatar__destroyGUI')
def destroyGUI(self):
    data.reset()

@registerEvent(Hangar, '_Hangar__updateParams')
def updateParams(self):
    data.updateHangar()

@registerEvent(panel, 'update_hp')
def update_hp(vehicleID, hp):
    if isBattle():
        data.updateHp()
        as_event('ON_HP_UPDATE')

@registerEvent(DamageLogPanel, '_onTotalEfficiencyUpdated')
def _onTotalEfficiencyUpdated(self, diff):
    if isBattle() and data.isPlayerVehicle():
        data.totalEfficiency(diff)