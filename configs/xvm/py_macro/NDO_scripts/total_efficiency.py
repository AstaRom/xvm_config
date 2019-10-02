#####################################################################
# imports

from xfw import *
from Avatar import PlayerAvatar
from gui.battle_control import g_sessionProvider
from gui.battle_control.battle_constants import PERSONAL_EFFICIENCY_TYPE
from gui.Scaleform.daapi.view.battle.shared.damage_log_panel import DamageLogPanel
import BattleReplay

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
    if PERSONAL_EFFICIENCY_TYPE.DAMAGE in diff:
        damage = diff[PERSONAL_EFFICIENCY_TYPE.DAMAGE]
    if PERSONAL_EFFICIENCY_TYPE.ASSIST_DAMAGE in diff:
        assist = diff[PERSONAL_EFFICIENCY_TYPE.ASSIST_DAMAGE]
    if PERSONAL_EFFICIENCY_TYPE.BLOCKED_DAMAGE in diff:
        blocked = diff[PERSONAL_EFFICIENCY_TYPE.BLOCKED_DAMAGE]
    as_event('ON_TOTAL_EFFICIENCY')

@registerEvent(PlayerAvatar, '_PlayerAvatar__destroyGUI')
def destroyGUI(self):
    global damage, assist, blocked
    damage = 0
    assist = 0
    blocked = 0

#@xvm.export('total_damage', deterministic=False)
def total_damage():
    symbol = '<img src="img://gui/maps/icons/library/BattleResultIcon-1.png" vspace="-3">'
    return '%s  %s' % (symbol, damage) if not BattleReplay.isPlaying() else ''

#@xvm.export('total_assist', deterministic=False)
def total_assist():
    symbol = '<img src="img://gui/maps/icons/library/dossier/assist40x32.png" width="30" height="24" vspace="-10">'
    return '%s%s' % (symbol, assist) if not BattleReplay.isPlaying() else ''

#@xvm.export('total_blocked', deterministic=False)
def total_blocked():
    symbol = '<img src="img://gui/maps/icons/library/ClanBattleResultIcon-1.png" vspace="-3">'
    return '%s  %s' % (symbol, blocked) if not BattleReplay.isPlaying() else ''