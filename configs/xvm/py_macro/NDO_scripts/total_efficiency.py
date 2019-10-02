#####################################################################
# imports

from xfw import *
from Avatar import PlayerAvatar
from gui.Scaleform.daapi.view.battle.shared.damage_log_panel import DamageLogPanel
from gui.battle_control.battle_constants import PERSONAL_EFFICIENCY_TYPE as _ETYPE

#####################################################################
# constants

damage = 0
assist = 0
blocked = 0

#####################################################################
# handlers

@registerEvent(DamageLogPanel, '_onTotalEfficiencyUpdated')
def _onTotalEfficiencyUpdated(self, diff):
    global damage, assist, blocked
    if _ETYPE.DAMAGE in diff:
        damage = diff[_ETYPE.DAMAGE]
    if _ETYPE.ASSIST_DAMAGE in diff:
        assist = diff[_ETYPE.ASSIST_DAMAGE]
    if _ETYPE.BLOCKED_DAMAGE in diff:
        blocked = diff[_ETYPE.BLOCKED_DAMAGE]
    as_event('ON_TOTAL_EFFICIENCY')

@registerEvent(PlayerAvatar, '_PlayerAvatar__destroyGUI')
def destroyGUI(self):
    global damage, assist, blocked
    damage = 0
    assist = 0
    blocked = 0

#@xvm.export('total_damage', deterministic=False)
def total_damage():
    return damage

#@xvm.export('total_assist', deterministic=False)
def total_assist():
    return assist

#@xvm.export('total_blocked', deterministic=False)
def total_blocked():
    return blocked