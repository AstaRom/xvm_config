#####################################################################
# imports

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
      max_hp_team[0] = panel.teams_totalhp[0]
      max_hp_team[1] = panel.teams_totalhp[1]
    return round((100. * current_hp(current_team)) / max_hp_team[current_team], 0)

#@xvm.export('percent_hp_section', deterministic=False)
def percent_hp_section(current_team):
    return int(round(percent_hp(current_team) / percent_filling, 0))

#@xvm.export('current_hp_symbols', deterministic=False)
def current_hp_symbols(current_team, symbol):
    return percent_hp_section(current_team) * str(symbol)

#@xvm.export('max_hp_symbols', deterministic=True)
def max_hp_symbols(symbol):
    return str(symbol) * section

#@xvm.export('high_сaliber', deterministic=True)
def high_caliber(dmg_total):
    battletype = BigWorld.player().arena.guiType
    if battletype != 1:
        return
    else:
        symbol = '<img src="img://gui/maps/icons/achievement/32x32/mainGun.png" width="32" height="32" align="middle" vspace="-10">'
        done = '<img src="img://gui/maps/icons/library/done.png" width="25" height="25" align="middle" vspace="-10">'
        threshold = max_hp_team[1] * 0.2 if max_hp_team[1] > 5000 else 1000
        high_caliber = int(threshold - dmg_total)
        if high_caliber <= 0:
            high_caliber = done
    return '%s%s' % (symbol, high_caliber) if max_hp_team[1] >= 1000 else ''

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