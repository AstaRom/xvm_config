#####################################################################
# imports

from gui.Scaleform.daapi.view.battle.shared.damage_log_panel import DamageLogPanel
from gui.battle_control.battle_constants import PERSONAL_EFFICIENCY_TYPE as _ETYPE
from Vehicle import Vehicle
import BigWorld
from Avatar import PlayerAvatar

from xfw import registerEvent
from xfw_actionscript.python import as_event
import xvm_battle.python.battle as battle

#####################################################################
# constants

player = None
damage = 0
assist = 0
blocked = 0
stun = 0

#####################################################################
# private

def isBattle():
    return battle.isBattleTypeSupported

def isPlayerVehicle():
    if player is not None:
        if hasattr(player.inputHandler.ctrl, 'curVehicleID'):
            vId = player.inputHandler.ctrl.curVehicleID
            v = vId.id if isinstance(vId, Vehicle) else vId
            return player.playerVehicleID == v
        else:
            return True
    else:
        return False

#####################################################################
# handlers

@registerEvent(DamageLogPanel, '_onTotalEfficiencyUpdated')
def _onTotalEfficiencyUpdated(self, diff):
    global damage, assist, blocked, stun
    if isBattle() and isPlayerVehicle():
        isUpdate = False
        if _ETYPE.DAMAGE in diff:
            damage = diff[_ETYPE.DAMAGE]
            isUpdate = True
        if _ETYPE.ASSIST_DAMAGE in diff:
            assist = diff[_ETYPE.ASSIST_DAMAGE]
            isUpdate = True
        if _ETYPE.BLOCKED_DAMAGE in diff:
            blocked = diff[_ETYPE.BLOCKED_DAMAGE]
            isUpdate = True
        if _ETYPE.STUN in diff:
            stun = diff[_ETYPE.STUN]
            isUpdate = True
        if isUpdate:
            as_event('ON_TOTAL_EFFICIENCY')

@registerEvent(Vehicle, 'onEnterWorld')
def onEnterWorld(self, prereqs):
    global player
    if not isBattle():
        return
    if player is None:
        player = BigWorld.player()

@registerEvent(PlayerAvatar, '_PlayerAvatar__destroyGUI')
def destroyGUI(self):
    global player, damage, assist, blocked, stun
    player = None
    damage = 0
    assist = 0
    blocked = 0
    stun = 0

#@xvm.export('total_threshold', deterministic=False)
def total_threshold():
    return 'threshold' if damage > 9999 or assist > 9999 or blocked > 9999 or stun > 9999 else None

#@xvm.export('total_damage', deterministic=False)
def total_damage():
    return damage

#@xvm.export('total_assist', deterministic=False)
def total_assist():
    return assist

#@xvm.export('total_blocked', deterministic=False)
def total_blocked():
    return blocked

#@xvm.export('total_stun', deterministic=False)
def total_stun():
    return stun