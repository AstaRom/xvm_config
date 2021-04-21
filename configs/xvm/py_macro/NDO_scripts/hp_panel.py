#####################################################################
# imports

from gui.Scaleform.daapi.view.battle.shared.prebattle_timers.timer_base import PreBattleTimerBase

from xfw_actionscript.python import as_event
from xfw.events import registerEvent
import xvm_main.python.config as config
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
    20, # sortie_2
    21, # fort_battle_2
    22  # ranked
]

#####################################################################
# handlers

def thp_show():
    isPanel = config.get('settings/battleLabels/total_hp_panel', False)
    return True if data.battletype in support_type and isPanel else None

def score_team(current_team):
    return data.score_team[current_team]

def score_team_sign():
    if score_team(0) > score_team(1):
        return 'ally'
    elif score_team(0) < score_team(1):
        return 'enemy'
    else:
        return 'equal'

def current_hp(current_team):
    return data.hp_team[current_team]

def percent_hp(current_team):
    return round((100. * data.hp_team[current_team]) / data.max_hp_team[current_team], 0) if data.max_hp_team[current_team] != 0 else None

def percent_hp_section(current_team):
    return int(round(percent_hp(current_team) / percent_filling, 0)) if percent_hp(current_team) is not None else None

def current_hp_symbols(current_team, symbol):
    return percent_hp_section(current_team) * str(symbol) if percent_hp_section(current_team) is not None else str(symbol) * section

def max_hp_symbols(symbol):
    return str(symbol) * section

@registerEvent(PreBattleTimerBase, 'setPeriod')
def setPeriod(self, period):
    if period == 2:
        as_event('ON_PREBATTLE')