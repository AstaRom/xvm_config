#####################################################################
# imports

from NDO_scripts import info_panel
from NDO_scripts import hp_panel

#####################################################################
# handlers > info_panel

@xvm.export('vehicle_name', deterministic=False)
def vehicle_name():
    return info_panel.vehicle_name()

@xvm.export('gun_reload_equip', deterministic=False)
def gun_reload_equip():
    return info_panel.gun_reload_equip()

@xvm.export('vision_radius', deterministic=False)
def vision_radius():
    return info_panel.vision_radius()

@xvm.export('shell_type_1', deterministic=False)
def shell_type_1():
    return info_panel.shell_type_1()

@xvm.export('shell_type_2', deterministic=False)
def shell_type_2():
    return info_panel.shell_type_2()

@xvm.export('shell_type_3', deterministic=False)
def shell_type_3():
    return info_panel.shell_type_3()

@xvm.export('armor_turret_front', deterministic=False)
def armor_turret_front():
    return info_panel.armor_turret_front()

@xvm.export('armor_turret_side', deterministic=False)
def armor_turret_side():
    return info_panel.armor_turret_side()

@xvm.export('armor_turret_back', deterministic=False)
def armor_turret_back():
    return info_panel.armor_turret_back()

@xvm.export('shell_damage_1', deterministic=False)
def shell_damage_1():
    return info_panel.shell_damage_1()

@xvm.export('shell_damage_2', deterministic=False)
def shell_damage_2():
    return info_panel.shell_damage_2()

@xvm.export('shell_damage_3', deterministic=False)
def shell_damage_3():
    return info_panel.shell_damage_3()

@xvm.export('armor_hull_front', deterministic=False)
def armor_hull_front():
    return info_panel.armor_hull_front()

@xvm.export('armor_hull_side', deterministic=False)
def armor_hull_side():
    return info_panel.armor_hull_side()

@xvm.export('armor_hull_back', deterministic=False)
def armor_hull_back():
    return info_panel.armor_hull_back()

@xvm.export('shell_power_1', deterministic=False)
def shell_power_1():
    return info_panel.shell_power_1()

@xvm.export('shell_power_2', deterministic=False)
def shell_power_2():
    return info_panel.shell_power_2()

@xvm.export('shell_power_3', deterministic=False)
def shell_power_3():
    return info_panel.shell_power_3()

#####################################################################
# handlers > hp_panel

@xvm.export('str_replace', deterministic=True)
def str_replace(str, old, new, max=-1):
    return hp_panel.str_replace(str, old, new, max=-1)

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

@xvm.export('max_hp_symbols', deterministic=True)
def max_hp_symbols(symbol):
    return hp_panel.max_hp_symbols(symbol)

@xvm.export('high_сaliber', deterministic=True)
def high_caliber(dmg_total):
    return hp_panel.high_caliber(dmg_total)

@xvm.export('sign_hp', deterministic=False)
def sign_hp():
    return hp_panel.sign_hp()

@xvm.export('color_sign_hp', deterministic=False)
def color_sign_hp():
    return hp_panel.color_sign_hp()