#####################################################################
# imports

import BigWorld

from xfw.events import registerEvent
from xfw_actionscript.python import as_event
import xvm_main.python.config as config
import xvm_battle.python.fragCorrelationPanel as panel

#####################################################################
# constants

actual_arenaUniqueID = None
max_hp_team = [0, 0]
percent_filling = 5
section = 20
maxRatio = 95
minRatio = 65

#####################################################################
# handlers

@registerEvent(panel, 'update_hp')
def update_hp(vehicleID, hp):
    as_event('ON_UPDATE_HP')

#@xvm.export('thp_show', deterministic=True)
def thp_show(battletype):
    support_type = ['regular', 'training', 'sortie_2', 'fort_battle_2', 'ranked']
    return True if battletype in support_type else None

#@xvm.export('score_team', deterministic=False)
def score_team(current_team):
    if not config.get('fragCorrelation/showAliveNotFrags'):
        return panel.ally_frags if current_team == 0 else panel.enemy_frags
    else:
        a = panel.ally_vehicles - panel.enemy_frags
        e = panel.enemy_vehicles - panel.ally_frags
        return a if current_team == 0 else e

#@xvm.export('score_team_sign', deterministic=False)
def score_team_sign():
    if score_team(0) > score_team(1):
        return 'ally'
    elif score_team(0) < score_team(1):
        return 'enemy'
    else:
        return 'equal'

#@xvm.export('current_hp', deterministic=False)
def current_hp(current_team):
    return panel.teams_totalhp[current_team]

#@xvm.export('percent_hp', deterministic=False)
def percent_hp(current_team):
    global actual_arenaUniqueID, max_hp_team
    arenaUniqueID = BigWorld.player().arenaUniqueID
    if actual_arenaUniqueID != arenaUniqueID:
        actual_arenaUniqueID = arenaUniqueID
        max_hp_team = [0, 0]
    if panel.teams_totalhp[current_team] > max_hp_team[current_team]:
        max_hp_team[current_team] = panel.teams_totalhp[current_team]
    return round((100. * current_hp(current_team)) / max_hp_team[current_team], 0) if max_hp_team[current_team] != 0 else None

#@xvm.export('percent_hp_section', deterministic=False)
def percent_hp_section(current_team):
    return int(round(percent_hp(current_team) / percent_filling, 0)) if percent_hp(current_team) is not None else None

#@xvm.export('current_hp_symbols', deterministic=False)
def current_hp_symbols(current_team, symbol):
    return percent_hp_section(current_team) * str(symbol) if percent_hp_section(current_team) is not None else str(symbol) * section

#@xvm.export('max_hp_symbols', deterministic=True)
def max_hp_symbols(symbol):
    return str(symbol) * section

#@xvm.export('sign_hp', deterministic=False)
def sign_hp():
    if current_hp(0) > current_hp(1):
        return '&#x003E;'
    elif current_hp(0) < current_hp(1):
        return '&#x003C;'
    else:
        return '&#x003D;'

#@xvm.export('color_sign_hp', deterministic=False)
def color_sign_hp():
    if current_hp(0) < current_hp(1):
        ratio = max(min((100. * current_hp(0) / current_hp(1) - minRatio) / (maxRatio - minRatio), 1), 0)
        color_sign_hp = panel.color_gradient(panel.hp_colors['neutral'], panel.hp_colors['bad'], ratio)
    elif current_hp(0) > current_hp(1):
        ratio = max(min((100. * current_hp(1) / current_hp(0) - minRatio) / (maxRatio - minRatio), 1), 0)
        color_sign_hp = panel.color_gradient(panel.hp_colors['neutral'], panel.hp_colors['good'], ratio)
    else:
        color_sign_hp = panel.color_gradient(panel.hp_colors['neutral'], panel.hp_colors['neutral'], 1)
    return color_sign_hp