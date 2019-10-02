#####################################################################
# imports

from BigWorld import player, target
from Avatar import PlayerAvatar
from math import degrees
from xfw import registerEvent, as_event
import xvm_main.python.config as config
from xvm_main.python.xvm import l10n

#####################################################################
# constants

ipHotKey = None

#####################################################################
# private

def _vehicle():
    vehicle = target()
    if not vehicle:
        vehicle = player().getVehicleAttached()
    return vehicle

def _typeDescriptor():
    vehicle = _vehicle()
    return None if not vehicle else vehicle.typeDescriptor

def _gunShots():
    td = _typeDescriptor()
    return None if not td else td.gun.shots

#####################################################################
# handlers

@registerEvent(PlayerAvatar, 'handleKey')
def handleKey(self, isDown, key, mods):
    global ipHotKey
    if key != 56:
        return
    if isDown:
        ipHotKey = config.get('custom_texts/battleLabels/info_panel')
    elif not isDown:
        ipHotKey = None
    as_event('ON_INFO_PANEL')

#@xvm.export('nick_name', deterministic=False)
def nick_name():
    veh = _vehicle()
    return None if not veh else "%s" % veh.publicInfo.name

#@xvm.export('marks_on_gun', deterministic=False)
def marks_on_gun():
    veh = _vehicle()
    return None if not veh else "%s" % veh.publicInfo.marksOnGun

#@xvm.export('vehicle_type', deterministic=False)
def vehicle_type():
    td = _typeDescriptor()
    vehType = None
    if td is not None and 'lightTank' in td.type.tags: 
        vehType = 'LT'
    elif td is not None and 'mediumTank' in td.type.tags:
        vehType = 'MT'
    elif td is not None and 'heavyTank' in td.type.tags:
        vehType = 'HT'
    elif td is not None and 'AT-SPG' in td.type.tags:
        vehType = 'TD'
    elif td is not None and 'SPG' in td.type.tags:
        vehType = 'SPG'        
    return vehType

#@xvm.export('vehicle_name', deterministic=False)
def vehicle_name():
    td = _typeDescriptor()
    return None if not td else "%s" % td.type.userString
    
#@xvm.export('vehicle_system_name', deterministic=False)
def vehicle_system_name():
    td = _typeDescriptor()
    return None if not td else "%s" % td.name

#@xvm.export('icon_system_name', deterministic=False)
def icon_system_name():
    td = _typeDescriptor()
    return None if not td else "%s" % td.name.replace(':', '-')

#@xvm.export('gun_name', deterministic=False)
def gun_name():
    td = _typeDescriptor()
    return None if not td else "%s" % td.gun.shortUserString

#@xvm.export('gun_caliber', deterministic=False)
def gun_caliber():
    gs = _gunShots()
    return None if not gs else "%d" % gs[0].shell.caliber

#@xvm.export('max_ammo', deterministic=False)
def max_ammo():
    td = _typeDescriptor()
    return None if not td else "%d" % td.gun.maxAmmo

#@xvm.export('gun_reload', deterministic=False)
def gun_reload():
    td = _typeDescriptor()
    return None if not td else "%.2f" % td.gun.reloadTime

#@xvm.export('gun_dpm', deterministic=False)
def gun_dpm():
    td = _typeDescriptor()
    if not td: 
        return None
    else:
        time = td.gun.reloadTime + (td.gun.clip[0] - 1) * td.gun.clip[1]
        return "%d" % round(td.gun.clip[0] / time * 60 * td.gun.shots[0].shell.damage[0], 0)

#@xvm.export('gun_reload_equip', deterministic=False)
def gun_reload_equip(eq1, eq2, eq3, eq4):
    td = _typeDescriptor()
    if not td: 
        return None
    else:
        reload_orig = td.gun.reloadTime
        rammer = 0.9 if (td.gun.clip[0] == 1) and (eq1 == 1) else 1
        if (eq2 == 1) and (eq3 == 1) and (eq4 == 1):
            crew = 1.32
        elif (eq2 == 1) and (eq3 == 1) and (eq4 == 0):
            crew = 1.27
        elif (eq2 == 1) and (eq3 == 0) and (eq4 == 1):
            crew = 1.21
        elif (eq2 == 1) and (eq3 == 0) and (eq4 == 0):
            crew = 1.16
        elif (eq2 == 0) and (eq3 == 1) and (eq4 == 1):
            crew = 1.27
        elif (eq2 == 0) and (eq3 == 1) and (eq4 == 0):
            crew = 1.21
        elif (eq2 == 0) and (eq3 == 0) and (eq4 == 1):
            crew = 1.16
        else:
            crew = 1.10
        return "%.2f" % round((reload_orig / (0.57 + 0.43 * crew)) * rammer, 2)

#@xvm.export('gun_dpm_equip', deterministic=False)
def gun_dpm_equip(eq1, eq2, eq3, eq4):
    td = _typeDescriptor()
    if not td: 
        return None
    else:
        reload_equip = float(gun_reload_equip(eq1, eq2, eq3, eq4))
        time = reload_equip + (td.gun.clip[0] - 1) * td.gun.clip[1]
        return "%d" % round(td.gun.clip[0] / time * 60 * td.gun.shots[0].shell.damage[0], 0)

#@xvm.export('gun_clip', deterministic=False)
def gun_clip():
    td = _typeDescriptor()
    return None if not td else "%d" % td.gun.clip[0]

#@xvm.export('gun_clip_reload', deterministic=False)
def gun_clip_reload():
    td = _typeDescriptor()
    return None if not td else "%.1f" % td.gun.clip[1]

#@xvm.export('gun_burst', deterministic=False)
def gun_burst():
    td = _typeDescriptor()
    return None if not td else "%d" % td.gun.burst[0]

#@xvm.export('gun_burst_reload', deterministic=False)
def gun_burst_reload():
    td = _typeDescriptor()
    return None if not td else "%.1f" % td.gun.burst[1]

#@xvm.export('gun_aiming_time', deterministic=False)
def gun_aiming_time():
    td = _typeDescriptor()
    return None if not td else "%.1f" % td.gun.aimingTime

#@xvm.export('gun_accuracy', deterministic=False)
def gun_accuracy():
    td = _typeDescriptor()
    return None if not td else "%.2f" % td.gun.shotDispersionAngle

#@xvm.export('shell_name_1', deterministic=False)
def shell_name_1():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 1) else "%s" % gs[0].shell.userString

#@xvm.export('shell_name_2', deterministic=False)
def shell_name_2():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 2) else "%s" % gs[1].shell.userString

#@xvm.export('shell_name_3', deterministic=False)
def shell_name_3():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 3) else "%s" % gs[2].shell.userString

#@xvm.export('shell_damage_1', deterministic=False)
def shell_damage_1():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 1) else "%d" % gs[0].shell.damage[0]

#@xvm.export('shell_damage_2', deterministic=False)
def shell_damage_2():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 2) else "%d" % gs[1].shell.damage[0]

#@xvm.export('shell_damage_3', deterministic=False)
def shell_damage_3():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 3) else "%d" % gs[2].shell.damage[0]

#@xvm.export('shell_power_1', deterministic=False)
def shell_power_1():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 1) else "%d" % gs[0].piercingPower[0]

#@xvm.export('shell_power_2', deterministic=False)
def shell_power_2():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 2) else "%d" % gs[1].piercingPower[0]

#@xvm.export('shell_power_3', deterministic=False)
def shell_power_3():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 3) else "%d" % gs[2].piercingPower[0]

#@xvm.export('shell_type_1', deterministic=False)
def shell_type_1():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 1) else l10n(gs[0].shell.kind.lower())

#@xvm.export('shell_type_2', deterministic=False)
def shell_type_2():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 2) else l10n(gs[1].shell.kind.lower())

#@xvm.export('shell_type_3', deterministic=False)
def shell_type_3():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 3) else l10n(gs[2].shell.kind.lower())

#@xvm.export('shell_speed_1', deterministic=False)
def shell_speed_1():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 1) else "%d" % gs[0].speed

#@xvm.export('shell_speed_2', deterministic=False)
def shell_speed_2():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 2) else "%d" % gs[1].speed

#@xvm.export('shell_speed_3', deterministic=False)
def shell_speed_3():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 3) else "%d" % gs[2].speed

#@xvm.export('shell_distance_1', deterministic=False)
def shell_distance_1():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 1) else "%d" % gs[0].maxDistance

#@xvm.export('shell_distance_2', deterministic=False)
def shell_distance_2():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 2) else "%d" % gs[1].maxDistance

#@xvm.export('shell_distance_3', deterministic=False)
def shell_distance_3():
    gs = _gunShots()
    return None if (not gs) or (len(gs) < 3) else "%d" % gs[2].maxDistance

#@xvm.export('stun_radius', deterministic=False)
def stun_radius():
    gs = _gunShots()
    if (gs is not None) and (gs[0].shell.stun is not None):
        return "%d" % gs[0].shell.stun.stunRadius
    else:
        return None

#@xvm.export('stun_duration_min', deterministic=False)
def stun_duration_min():
    gs = _gunShots()
    if (gs is not None) and (gs[0].shell.stun is not None):
        time = round(gs[0].shell.stun.stunRadius * gs[0].shell.stun.guaranteedStunDuration, 1)
        return "%.1f" % time
    else:
        return None

#@xvm.export('stun_duration_max', deterministic=False)
def stun_duration_max():
    gs = _gunShots()
    if (gs is not None) and (gs[0].shell.stun is not None):
        return "%d" % gs[0].shell.stun.stunDuration
    else:
        return None

#@xvm.export('angle_pitch_up', deterministic=False)
def angle_pitch_up():
    td = _typeDescriptor()
    return None if not td else "%d" % degrees(-td.gun.pitchLimits['absolute'][0])

#@xvm.export('angle_pitch_down', deterministic=False)
def angle_pitch_down():
    td = _typeDescriptor()
    return None if not td else "%d" % degrees(-td.gun.pitchLimits['absolute'][1])

#@xvm.export('angle_pitch_left', deterministic=False)
def angle_pitch_left():
    td = _typeDescriptor()
    return None if (not td) or (not td.gun.turretYawLimits) else "%d" % degrees(-td.gun.turretYawLimits[0])

#@xvm.export('angle_pitch_right', deterministic=False)
def angle_pitch_right():
    td = _typeDescriptor()
    return None if (not td) or (not td.gun.turretYawLimits) else "%d" % degrees(td.gun.turretYawLimits[1])

#@xvm.export('vehicle_max_health', deterministic=False)
def vehicle_max_health():
    td = _typeDescriptor()
    return None if not td else "%d" % td.maxHealth

#@xvm.export('armor_hull_front', deterministic=False)
def armor_hull_front():
    td = _typeDescriptor()
    return None if not td else "%d" % td.hull.primaryArmor[0]

#@xvm.export('armor_hull_side', deterministic=False)
def armor_hull_side():
    td = _typeDescriptor()
    return None if not td else "%d" % td.hull.primaryArmor[1]

#@xvm.export('armor_hull_back', deterministic=False)
def armor_hull_back():
    td = _typeDescriptor()
    return None if not td else "%d" % td.hull.primaryArmor[2]

#@xvm.export('turret_name', deterministic=False)
def turret_name():
    td = _typeDescriptor()
    return None if not td else "%s" % td.turret.shortUserString

#@xvm.export('armor_turret_front', deterministic=False)
def armor_turret_front():
    td = _typeDescriptor()
    return None if not td else "%d" % td.turret.primaryArmor[0]

#@xvm.export('armor_turret_side', deterministic=False)
def armor_turret_side():
    td = _typeDescriptor()
    return None if not td else "%d" % td.turret.primaryArmor[1]

#@xvm.export('armor_turret_back', deterministic=False)
def armor_turret_back():
    td = _typeDescriptor()
    return None if not td else "%d" % td.turret.primaryArmor[2]

#@xvm.export('vehicle_weight', deterministic=False)
def vehicle_weight():
    td = _typeDescriptor()
    return None if not td else "%.1f" % round(td.physics['weight'] / 1000, 1)

#@xvm.export('chassis_max_weight', deterministic=False)
def chassis_max_weight():
    td = _typeDescriptor()
    return None if not td else "%.1f" % round(td.chassis.maxLoad / 1000, 1)

#@xvm.export('engine_name', deterministic=False)
def engine_name():
    td = _typeDescriptor()
    return None if not td else "%s" % td.engine.shortUserString

#@xvm.export('engine_power', deterministic=False)
def engine_power():
    td = _typeDescriptor()
    return None if not td else "%d" % round(td.engine.power / 735.49875, 0)

#@xvm.export('engine_power_density', deterministic=False)
def engine_power_density():
    td = _typeDescriptor()
    if not td: 
        return None
    else:
        power = td.engine.power / 735.49875
        weight = td.physics['weight'] / 1000
        return "%.2f" % round(power / weight, 2)

#@xvm.export('speed_forward', deterministic=False)
def speed_forward():
    td = _typeDescriptor()
    return None if not td else "%d" % td.physics['speedLimits'][0] * 3.6

#@xvm.export('speed_backward', deterministic=False)
def speed_backward():
    td = _typeDescriptor()
    return None if not td else "%d" % td.physics['speedLimits'][1] * 3.6

#@xvm.export('hull_speed_turn', deterministic=False)
def hull_speed_turn():
    td = _typeDescriptor()
    return None if not td else "%.2f" % degrees(td.chassis.rotationSpeed)

#@xvm.export('turret_speed_turn', deterministic=False)
def turret_speed_turn():
    td = _typeDescriptor()
    return None if not td else "%.2f" % degrees(td.turret.rotationSpeed)

#@xvm.export('invis_stand', deterministic=False)
def invis_stand():
    td = _typeDescriptor()
    return None if not td else "%.1f" % td.type.invisibility[1] * 50

#@xvm.export('invis_stand_shot', deterministic=False)
def invis_stand_shot():
    td = _typeDescriptor()
    return None if not td else "%.2f" % td.type.invisibility[1] * td.gun.invisibilityFactorAtShot * 50

#@xvm.export('invis_move', deterministic=False)
def invis_move():
    td = _typeDescriptor()
    return None if not td else "%.1f" % td.type.invisibility[0] * 50

#@xvm.export('invis_move_shot', deterministic=False)
def invis_move_shot():
    td = _typeDescriptor()
    return None if not td else "%.2f" % td.type.invisibility[0] * td.gun.invisibilityFactorAtShot * 50

#@xvm.export('vision_radius', deterministic=False)
def vision_radius():
    td = _typeDescriptor()
    return None if not td else "%d" % td.turret.circularVisionRadius

#@xvm.export('radio_name', deterministic=False)
def radio_name():
    td = _typeDescriptor()
    return None if not td else "%s" % td.radio.shortUserString

#@xvm.export('radio_radius', deterministic=False)
def radio_radius():
    td = _typeDescriptor()
    return None if not td else "%d" % td.radio.distance

#####################################################################
# Unused

# def tags():
    # td = _typeDescriptor()
    # return None if not td else "%s" % td.type.tags

# def crewRoles():
    # td = _typeDescriptor()
    # return None if not td else "%s" % td.type.crewRoles