#####################################################################
# imports

import xvm_main.python.config as config
import xvm_battle.python.fragCorrelationPanel as panel
from data_macros import data

#####################################################################
# constants

percent_filling = 5
section = 20
maxRatio = 95
minRatio = 65

support_type = [
    1,  # regular
    2,  # training
    15, # sortie_2
    16, # fort_battle_2
    17  # ranked
]

#####################################################################
# handlers

def thp_show():
    return True if data.battletype in support_type else None

def score_team(current_team):
    if not config.get('fragCorrelation/showAliveNotFrags'):
        return panel.ally_frags if current_team == 0 else panel.enemy_frags
    else:
        a = panel.ally_vehicles - panel.enemy_frags
        e = panel.enemy_vehicles - panel.ally_frags
        return a if current_team == 0 else e

def score_team_sign():
    if score_team(0) > score_team(1):
        return 'ally'
    elif score_team(0) < score_team(1):
        return 'enemy'
    else:
        return 'equal'

def current_hp(current_team):
    return panel.teams_totalhp[current_team]

def percent_hp(current_team):
    return round((100. * current_hp(current_team)) / data.max_hp_team[current_team], 0) if data.max_hp_team[current_team] != 0 else None

def percent_hp_section(current_team):
    return int(round(percent_hp(current_team) / percent_filling, 0)) if percent_hp(current_team) is not None else None

def current_hp_symbols(current_team, symbol):
    return percent_hp_section(current_team) * str(symbol) if percent_hp_section(current_team) is not None else str(symbol) * section

def max_hp_symbols(symbol):
    return str(symbol) * section

def sign_hp():
    if current_hp(0) > current_hp(1):
        return '&#x003E;'
    elif current_hp(0) < current_hp(1):
        return '&#x003C;'
    else:
        return '&#x003D;'

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