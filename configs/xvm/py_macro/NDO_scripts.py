#####################################################################
# imports

from helpers import getClientLanguage
import xvm_main.python.config as config

from NDO_scripts import dmg_count
from NDO_scripts import hp_panel
from NDO_scripts import info_panel
from NDO_scripts import total_efficiency

#####################################################################
# handlers

@xvm.export('l10n', deterministic=False)
def l10n(l10n):
    gameLng = getClientLanguage()
    mode = 'ru' if gameLng == 'ru' else 'en'
    ref = config.get('custom_texts/language/%s/%s' % (mode, l10n))
    return '%s' % (ref)

#####################################################################
# handlers > dmg_count

@xvm.export('high_caliber', deterministic=False)
def high_caliber(dmg_total):
    return dmg_count.high_caliber(dmg_total)

@xvm.export('avg_damage', deterministic=False)
def avg_damage(dmg_total):
    return dmg_count.avg_damage(dmg_total)

#####################################################################
# handlers > hp_panel

@xvm.export('thp_show', deterministic=False)
def thp_show(battletype):
    return hp_panel.thp_show(battletype)

@xvm.export('str_replace', deterministic=True)
def str_replace(str, old, new, max=-1):
    return hp_panel.str_replace(str, old, new, max=-1)

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

@xvm.export('max_hp_symbols', deterministic=True)
def max_hp_symbols(symbol):
    return hp_panel.max_hp_symbols(symbol)

@xvm.export('sign_hp', deterministic=False)
def sign_hp():
    return hp_panel.sign_hp()

@xvm.export('color_sign_hp', deterministic=False)
def color_sign_hp():
    return hp_panel.color_sign_hp()

#####################################################################
# handlers > info_panel

@xvm.export('vehicle_name', deterministic=False)
def vehicle_name():
    return info_panel.vehicle_name()

@xvm.export('gun_reload_equip', deterministic=False)
def gun_reload_equip(eq1, eq2, eq3, eq4):
    return info_panel.gun_reload_equip(eq1, eq2, eq3, eq4)

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
# handlers > total_efficiency

@xvm.export('total_blocked', deterministic=False)
def total_blocked():
    return total_efficiency.total_blocked()

@xvm.export('total_assist', deterministic=False)
def total_assist():
    return total_efficiency.total_assist()

@xvm.export('total_stun', deterministic=False)
def total_stun():
    return total_efficiency.total_stun()