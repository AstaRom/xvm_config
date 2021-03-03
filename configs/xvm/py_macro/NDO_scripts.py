#####################################################################
# imports

from NDO_scripts import basic_macros
from NDO_scripts import dmg_count
from NDO_scripts import hp_panel
from NDO_scripts import info_panel
from NDO_scripts import total_efficiency

#####################################################################
# handlers > basic_macros

@xvm.export('color_blind')
def color_blind():
    return basic_macros.color_blind()

@xvm.export('math_sub')
def math_sub(a, b):
    return basic_macros.math_sub(a, b)

@xvm.export('str_replace')
def str_replace(str, old, new, max=-1):
    return basic_macros.str_replace(str, old, new, max=-1)

@xvm.export('isAnonym')
def isAnonym(stat):
    return basic_macros.isAnonym(stat)

#####################################################################
# handlers > dmg_count

@xvm.export('high_caliber', deterministic=False)
def high_caliber():
    return dmg_count.high_caliber()

@xvm.export('avg_damage', deterministic=False)
def avg_damage():
    return dmg_count.avg_damage()

@xvm.export('check_status', deterministic=False)
def check_status(var):
    return dmg_count.check_status(var)

#####################################################################
# handlers > hp_panel

@xvm.export('thp_show', deterministic=False)
def thp_show():
    return hp_panel.thp_show()

@xvm.export('score_team', deterministic=False)
def score_team(current_team):
    return hp_panel.score_team(current_team)

@xvm.export('score_team_sign', deterministic=False)
def score_team_sign():
    return hp_panel.score_team_sign()

@xvm.export('current_hp', deterministic=False)
def current_hp(current_team):
    return hp_panel.current_hp(current_team)

@xvm.export('percent_hp', deterministic=False)
def percent_hp(current_team):
    return hp_panel.percent_hp(current_team)

@xvm.export('percent_hp_section', deterministic=False)
def percent_hp_section(current_team):
    return hp_panel.percent_hp_section(current_team)

@xvm.export('current_hp_symbols', deterministic=False)
def current_hp_symbols(current_team, symbol):
    return hp_panel.current_hp_symbols(current_team, symbol)

@xvm.export('max_hp_symbols')
def max_hp_symbols(symbol):
    return hp_panel.max_hp_symbols(symbol)

#####################################################################
# handlers > info_panel

@xvm.export('ipHotKey', deterministic=False)
def ipHotKey():
    return info_panel.ipHotKey

@xvm.export('vehicle_short_name', deterministic=False)
def vehicle_short_name():
    return info_panel.vehicle_short_name()

@xvm.export('gun_reload_equip', deterministic=False)
def gun_reload_equip(eq1, eq2, eq3, eq4):
    return info_panel.gun_reload_equip(eq1, eq2, eq3, eq4)

@xvm.export('vision_radius', deterministic=False)
def vision_radius():
    return info_panel.vision_radius()

@xvm.export('shell_type', deterministic=False)
def shell_type(num):
    return info_panel.shell_type(num)

@xvm.export('armor_turret_front', deterministic=False)
def armor_turret_front():
    return info_panel.armor_turret_front()

@xvm.export('armor_turret_side', deterministic=False)
def armor_turret_side():
    return info_panel.armor_turret_side()

@xvm.export('armor_turret_back', deterministic=False)
def armor_turret_back():
    return info_panel.armor_turret_back()

@xvm.export('shell_damage', deterministic=False)
def shell_damage(num):
    return info_panel.shell_damage(num)

@xvm.export('armor_hull_front', deterministic=False)
def armor_hull_front():
    return info_panel.armor_hull_front()

@xvm.export('armor_hull_side', deterministic=False)
def armor_hull_side():
    return info_panel.armor_hull_side()

@xvm.export('armor_hull_back', deterministic=False)
def armor_hull_back():
    return info_panel.armor_hull_back()

@xvm.export('shell_power', deterministic=False)
def shell_power(num):
    return info_panel.shell_power(num)

#####################################################################
# handlers > total_efficiency

@xvm.export('total_threshold', deterministic=False)
def total_threshold():
    return total_efficiency.total_threshold()

@xvm.export('total_damage', deterministic=False)
def total_damage():
    return total_efficiency.total_damage()

@xvm.export('total_blocked', deterministic=False)
def total_blocked():
    return total_efficiency.total_blocked()

@xvm.export('total_assist', deterministic=False)
def total_assist():
    return total_efficiency.total_assist()

@xvm.export('total_stun', deterministic=False)
def total_stun():
    return total_efficiency.total_stun()