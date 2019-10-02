# "str_replace" - замена параметров по маске (старый параметр, новый параметр).
# "current_hp" - текущее значение очков прочности команд (для конкретной команды по индексу: 0, 1 - союзники, противники).
# "sign_hp" - сравнение очков прочности команд.
# "percent_hp" - расчет процента текущего значения очков прочности относительно стартового значения (для конкретной команды по индексу: 0, 1 - союзники, противники)
# "current_hp_symbols" - символы для отрисовки полосы очков прочности.
# "high_caliber" - расчет урона для основного калибра.
# "max_hp_symbols" - символы фона для отрисовки полосы очков прочности.
# "color_sign_standart", "color_sign_inverted" - градиент цвета, в зависимости от перевеса очков прочности одной команды над другой.

#####################################################################
# imports

import xvm_battle.python.fragCorrelationPanel as panel
import BigWorld

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

@xvm.export('xvm.hp_panel.str_replace')
def str_replace(str, old, new, max=-1):
    return str.replace(old, new, max)


@xvm.export('xvm.hp_panel.current_hp', deterministic=False)
def current_hp(current_team):
    return panel.teams_totalhp[current_team]


@xvm.export('xvm.hp_panel.sign_hp', deterministic=False)
def sign_hp():
    return '&#x003E;' if current_hp(0) > current_hp(1) else '&#x003C;' if current_hp(0) < current_hp(1) else '&#x003D;'


@xvm.export('xvm.hp_panel.percent_hp', deterministic=False)
def percent_hp(current_team):
    global actual_arenaUniqueID, max_hp_team
    arenaUniqueID = BigWorld.player().arenaUniqueID
    if actual_arenaUniqueID != arenaUniqueID:
      actual_arenaUniqueID = arenaUniqueID
      max_hp_team[0] = panel.teams_totalhp[0]
      max_hp_team[1] = panel.teams_totalhp[1]
    return round((100. * current_hp(current_team)) / max_hp_team[current_team], 0)


@xvm.export('xvm.hp_panel.current_hp_symbols', deterministic=False)
def current_hp_symbols(current_team, symbol):
    return int(percent_hp(current_team) / percent_filling) * str(symbol)


@xvm.export('xvm.hp_panel.max_hp_symbols', deterministic=True)
def max_hp_symbols(symbol):
    return str(symbol) * section
    
    
@xvm.export('xvm.hp_panel.high_сaliber', deterministic=True)
def high_caliber():
    gun = max_hp_team[1] * 0.2
    gun_dynamic = max_hp_team[1] * 0.2
    if gun < 1000:
        gun_dynamic = 1000
    return int(round(gun_dynamic, 0))

    
@xvm.export('xvm.hp_panel.color_sign_standart', deterministic=False)
def color_sign_standart():
    if panel.teams_totalhp[0] < panel.teams_totalhp[1]:
        ratio = max(min((100. * panel.teams_totalhp[0] / panel.teams_totalhp[1] - minRatio) / (maxRatio - minRatio), 1), 0)
        color_sign_standart = panel.color_gradient(panel.hp_colors['neutral'], panel.hp_colors['bad'], ratio)
    elif panel.teams_totalhp[0] > panel.teams_totalhp[1]:
        ratio = max(min((100. * panel.teams_totalhp[1] / panel.teams_totalhp[0] - minRatio) / (maxRatio - minRatio), 1), 0)
        color_sign_standart = panel.color_gradient(panel.hp_colors['neutral'], panel.hp_colors['good'], ratio)
    else:
        color_sign_standart = panel.color_gradient(panel.hp_colors['neutral'], panel.hp_colors['neutral'], 1)
    return color_sign_standart


@xvm.export('xvm.hp_panel.color_sign_inverted', deterministic=False)
def color_sign_inverted():
    if panel.teams_totalhp[0] < panel.teams_totalhp[1]:
        ratio = max(min((100. * panel.teams_totalhp[0] / panel.teams_totalhp[1] - minRatio) / (maxRatio - minRatio), 1), 0)
        color_sign_inverted = panel.color_gradient(panel.hp_colors['neutral'], panel.hp_colors['good'], ratio)
    elif panel.teams_totalhp[0] > panel.teams_totalhp[1]:
        ratio = max(min((100. * panel.teams_totalhp[1] / panel.teams_totalhp[0] - minRatio) / (maxRatio - minRatio), 1), 0)
        color_sign_inverted = panel.color_gradient(panel.hp_colors['neutral'], panel.hp_colors['bad'], ratio)
    else:
        color_sign_inverted = panel.color_gradient(panel.hp_colors['neutral'], panel.hp_colors['neutral'], 1)
    return color_sign_inverted