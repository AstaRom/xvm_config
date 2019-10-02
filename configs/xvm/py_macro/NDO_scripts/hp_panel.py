#####################################################################
# imports

from xfw import *
import BigWorld
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

#@xvm.export('str_replace', deterministic=True)
def str_replace(str, old, new, max=-1):
    return str.replace(old, new, max)

#@xvm.export('current_hp', deterministic=False)
def current_hp(current_team):
    return panel.teams_totalhp[current_team]

#@xvm.export('percent_hp', deterministic=False)
def percent_hp(current_team):
    global actual_arenaUniqueID, max_hp_team
    arenaUniqueID = BigWorld.player().arenaUniqueID
    if actual_arenaUniqueID != arenaUniqueID:
      actual_arenaUniqueID = arenaUniqueID
      max_hp_team[current_team] = 0
    if panel.teams_totalhp[current_team] > max_hp_team[current_team]:
        max_hp_team[current_team] = panel.teams_totalhp[current_team]
    return round((100. * current_hp(current_team)) / max_hp_team[current_team], 0) if max_hp_team[current_team] != 0 else None

#@xvm.export('percent_hp_section', deterministic=False)
def percent_hp_section(current_team):
    return int(round(percent_hp(current_team) / percent_filling, 0)) if percent_hp(current_team) is not None else None

#@xvm.export('current_hp_symbols', deterministic=False)
def current_hp_symbols(current_team, symbol):
    return percent_hp_section(current_team) * str(symbol) if percent_hp_section(current_team) is not None else section

#@xvm.export('max_hp_symbols', deterministic=True)
def max_hp_symbols(symbol):
    return str(symbol) * section

#@xvm.export('sign_hp', deterministic=False)
def sign_hp():
    return '&#x003E;' if current_hp(0) > current_hp(1) else '&#x003C;' if current_hp(0) < current_hp(1) else '&#x003D;'

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