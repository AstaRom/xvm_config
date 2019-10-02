#####################################################################
# imports

import BigWorld
from math import degrees

#####################################################################
# constants

shell_type = {
    'ARMOR_PIERCING': 'ББ',
    'HIGH_EXPLOSIVE': 'ОФ',
    'ARMOR_PIERCING_CR': 'БП',
    'ARMOR_PIERCING_HE': 'ХФ',
    'HOLLOW_CHARGE': 'КС',
}

#####################################################################
# private

def _typeDescriptor():
    vehicle = _vehicle()
    return None if not vehicle else vehicle.typeDescriptor

def _vehicle():
    vehicle = BigWorld.target()
    if not vehicle:
        vehicle = BigWorld.player().getVehicleAttached()
    return vehicle

def _gunShots():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else typeDescriptor.gun['shots']

#####################################################################
# handlers

#@xvm.export('nick_name', deterministic=False)
def nick_name():
    vehicle = _vehicle()
    return None if not vehicle else "%s" % (vehicle.publicInfo['name'])

#@xvm.export('marks_on_gun', deterministic=False)
def marks_on_gun():
    vehicle = _vehicle()
    return None if not vehicle else "%s" % (vehicle.publicInfo['marksOnGun'])

#@xvm.export('vehicle_name', deterministic=False)
def vehicle_name():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%s" % (typeDescriptor.type.userString)
    
#@xvm.export('vehicle_system_name', deterministic=False)
def vehicle_system_name():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%s" % (typeDescriptor.name)

#@xvm.export('icon_system_name', deterministic=False)
def icon_system_name():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%s" % (typeDescriptor.name.replace(':', '-'))

#@xvm.export('gun_name', deterministic=False)
def gun_name():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%s" % (typeDescriptor.gun['shortUserString'])

#@xvm.export('gun_caliber', deterministic=False)
def gun_caliber():
    gunShots = _gunShots()
    return None if not gunShots else "%d" % (gunShots[0]['shell']['caliber'])

#@xvm.export('max_ammo', deterministic=False)
def max_ammo():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%d" % (typeDescriptor.gun['maxAmmo'])

#@xvm.export('gun_reload', deterministic=False)
def gun_reload():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%.1f" % (typeDescriptor.gun['reloadTime'])

#@xvm.export('gun_reload_equip', deterministic=False)
def gun_reload_equip():
    typeDescriptor = _typeDescriptor()
    if not typeDescriptor: 
        return None
    else:
        reload_orig = typeDescriptor.gun['reloadTime']
        crew = 1.16 if typeDescriptor.miscAttrs['crewLevelIncrease'] != 0 else 1.10
        if (typeDescriptor.gun['clip'][0] == 1) and (typeDescriptor.miscAttrs['gunReloadTimeFactor'] != 0):
          rammer = typeDescriptor.miscAttrs['gunReloadTimeFactor']
        else:
          rammer = 1
        return "%.1f" % (round((reload_orig / (0.57 + 0.43 * crew)) * rammer, 1))

#@xvm.export('dmg_per_min', deterministic=False)
def dmg_per_min():
    typeDescriptor = _typeDescriptor()
    if not typeDescriptor: 
        return None
    else:
        time = typeDescriptor.gun['reloadTime'] + typeDescriptor.gun['clip'][0] * typeDescriptor.gun['clip'][1]
        return "%d" % (round(typeDescriptor.gun['clip'][0] / time * 60 * typeDescriptor.gun['shots'][0]['shell']['damage'][0], 0))

#@xvm.export('dmg_per_min_equip', deterministic=False)
def dmg_per_min_equip():
    typeDescriptor = _typeDescriptor()
    if not typeDescriptor: 
        return None
    else:
        reload_orig = typeDescriptor.gun['reloadTime']
        crew = 1.16 if typeDescriptor.miscAttrs['crewLevelIncrease'] != 0 else 1.10
        if (typeDescriptor.gun['clip'][0] == 1) and (typeDescriptor.miscAttrs['gunReloadTimeFactor'] != 0):
          rammer = typeDescriptor.miscAttrs['gunReloadTimeFactor']
        else:
          rammer = 1
        reload_equip = (reload_orig / (0.57 + 0.43 * crew)) * rammer 
        time = reload_equip + typeDescriptor.gun['clip'][0] * typeDescriptor.gun['clip'][1]
        return "%d" % (round(typeDescriptor.gun['clip'][0] / time * 60 * typeDescriptor.gun['shots'][0]['shell']['damage'][0], 0))

#@xvm.export('gun_clip', deterministic=False)
def gun_clip():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%d" % (typeDescriptor.gun['clip'][0])

#@xvm.export('gun_clip_reload', deterministic=False)
def gun_clip_reload():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%.1f" % (typeDescriptor.gun['clip'][1])

#@xvm.export('gun_burst', deterministic=False)
def gun_burst():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%d" % (typeDescriptor.gun['burst'][0])

#@xvm.export('gun_burst_reload', deterministic=False)
def gun_burst_reload():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%.1f" % (typeDescriptor.gun['burst'][1])    

#@xvm.export('gun_aiming_time', deterministic=False)
def gun_aiming_time():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%.1f" % (typeDescriptor.gun['aimingTime'])

#@xvm.export('gun_accuracy', deterministic=False)
def gun_accuracy():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%.2f" % (typeDescriptor.gun['shotDispersionAngle'])

#@xvm.export('shell_name_1', deterministic=False)
def shell_name_1():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 1 else "%s" % (gunShots[0]['shell']['userString'])

#@xvm.export('shell_name_2', deterministic=False)
def shell_name_2():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 2 else "%s" % (gunShots[1]['shell']['userString'])

#@xvm.export('shell_name_3', deterministic=False)
def shell_name_3():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 3 else "%s" % (gunShots[2]['shell']['userString'])

#@xvm.export('shell_damage_1', deterministic=False)
def shell_damage_1():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 1 else "%d" % (gunShots[0]['shell']['damage'][0])

#@xvm.export('shell_damage_2', deterministic=False)
def shell_damage_2():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 2 else "%d" % (gunShots[1]['shell']['damage'][0])

#@xvm.export('shell_damage_3', deterministic=False)
def shell_damage_3():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 3 else "%d" % (gunShots[2]['shell']['damage'][0])

#@xvm.export('shell_power_1', deterministic=False)
def shell_power_1():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 1 else "%d" % (gunShots[0]['piercingPower'][0])

#@xvm.export('shell_power_2', deterministic=False)
def shell_power_2():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 2 else "%d" % (gunShots[1]['piercingPower'][0])

#@xvm.export('shell_power_3', deterministic=False)
def shell_power_3():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 3 else "%d" % (gunShots[2]['piercingPower'][0])

#@xvm.export('shell_type_1', deterministic=False)
def shell_type_1():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 1 else "%s" % (shell_type[gunShots[0]['shell']['kind']])

#@xvm.export('shell_type_2', deterministic=False)
def shell_type_2():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 2 else "%s" % (shell_type[gunShots[1]['shell']['kind']])

#@xvm.export('shell_type_3', deterministic=False)
def shell_type_3():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 3 else "%s" % (shell_type[gunShots[2]['shell']['kind']])

#@xvm.export('shell_speed_1', deterministic=False)
def shell_speed_1():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 1 else "%d" % (gunShots[0]['speed'])

#@xvm.export('shell_speed_2', deterministic=False)
def shell_speed_2():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 2 else "%d" % (gunShots[1]['speed'])

#@xvm.export('shell_speed_3', deterministic=False)
def shell_speed_3():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 3 else "%d" % (gunShots[2]['speed'])

#@xvm.export('shell_distance_1', deterministic=False)
def shell_distance_1():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 1 else "%d" % (gunShots[0]['maxDistance'])

#@xvm.export('shell_distance_2', deterministic=False)
def shell_distance_2():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 2 else "%d" % (gunShots[1]['maxDistance'])

#@xvm.export('shell_distance_3', deterministic=False)
def shell_distance_3():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        return '' if len(gunShots) < 3 else "%d" % (gunShots[2]['maxDistance'])

#@xvm.export('stun_radius', deterministic=False)
def stun_radius():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        if 'stunRadius' in gunShots[0]['shell']:
            return "%d" % (gunShots[0]['shell']['stunRadius'])
        else:
            return ''

#@xvm.export('stun_duration_min', deterministic=False)
def stun_duration_min():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        if 'stunDuration' in gunShots[0]['shell']:
            time = (round(gunShots[0]['shell']['stunDuration'] * gunShots[0]['shell']['guaranteedStunDuration'], 1))
            return "%.1f" % (time)
        else:
            return ''

#@xvm.export('stun_duration_max', deterministic=False)
def stun_duration_max():
    gunShots = _gunShots()
    if not gunShots: 
        return None
    else:
        if 'stunDuration' in gunShots[0]['shell']:
            return "%d" % (gunShots[0]['shell']['stunDuration'])
        else:
            return ''

#@xvm.export('angle_pitch_up', deterministic=False)
def angle_pitch_up():
    typeDescriptor = _typeDescriptor()
    if not typeDescriptor: 
        return None
    else:
        return "%d" % (degrees(-typeDescriptor.gun['pitchLimits']['absolute'][0]))

#@xvm.export('angle_pitch_down', deterministic=False)
def angle_pitch_down():
    typeDescriptor = _typeDescriptor()
    if not typeDescriptor: 
        return None
    else:
        return "%d" % (degrees(-typeDescriptor.gun['pitchLimits']['absolute'][1])) 

#@xvm.export('angle_pitch_left', deterministic=False)
def angle_pitch_left():
    typeDescriptor = _typeDescriptor()
    if not typeDescriptor: 
        return None
    else:
        return "%d" % (degrees(-typeDescriptor.gun['turretYawLimits'][0])) if typeDescriptor.gun['turretYawLimits'] is not None else ''

#@xvm.export('angle_pitch_right', deterministic=False)
def angle_pitch_right():
    typeDescriptor = _typeDescriptor()
    if not typeDescriptor: 
        return None
    else:
        return "%d" % (degrees(typeDescriptor.gun['turretYawLimits'][1])) if typeDescriptor.gun['turretYawLimits'] is not None else ''

#@xvm.export('vehicle_max_health', deterministic=False)
def vehicle_max_health():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%d" % (typeDescriptor.maxHealth)

#@xvm.export('armor_hull_front', deterministic=False)
def armor_hull_front():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%d" % (typeDescriptor.hull['primaryArmor'][0])

#@xvm.export('armor_hull_side', deterministic=False)
def armor_hull_side():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%d" % (typeDescriptor.hull['primaryArmor'][1])

#@xvm.export('armor_hull_back', deterministic=False)
def armor_hull_back():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%d" % (typeDescriptor.hull['primaryArmor'][2])

#@xvm.export('turret_name', deterministic=False)
def turret_name():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%s" % (typeDescriptor.turret['shortUserString'])

#@xvm.export('armor_turret_front', deterministic=False)
def armor_turret_front():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%d" % (typeDescriptor.turret['primaryArmor'][0])

#@xvm.export('armor_turret_side', deterministic=False)
def armor_turret_side():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%d" % (typeDescriptor.turret['primaryArmor'][1])

#@xvm.export('armor_turret_back', deterministic=False)
def armor_turret_back():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%d" % (typeDescriptor.turret['primaryArmor'][2])

#@xvm.export('vehicle_weight', deterministic=False)
def vehicle_weight():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%.1f" % (round(typeDescriptor.physics['weight'] / 1000, 1))

#@xvm.export('chassis_max_weight', deterministic=False)
def chassis_max_weight():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%.1f" % (round(typeDescriptor.chassis['maxLoad'] / 1000, 1))

#@xvm.export('engine_name', deterministic=False)
def engine_name():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%s" % (typeDescriptor.engine['shortUserString'])

#@xvm.export('engine_power', deterministic=False)
def engine_power():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%d" % (round(typeDescriptor.engine['power'] / 735.49875, 0))

#@xvm.export('engine_power_density', deterministic=False)
def engine_power_density():
    typeDescriptor = _typeDescriptor()
    if not typeDescriptor: 
        return None
    else:
        power = typeDescriptor.engine['power'] / 735.49875
        weight = typeDescriptor.physics['weight'] / 1000
        return "%.2f" % (round(power / weight, 2))

#@xvm.export('speed_forward', deterministic=False)
def speed_forward():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%d" % (typeDescriptor.physics['speedLimits'][0] * 3.6)

#@xvm.export('speed_backward', deterministic=False)
def speed_backward():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%d" % (typeDescriptor.physics['speedLimits'][1] * 3.6)

#@xvm.export('hull_speed_turn', deterministic=False)
def hull_speed_turn():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%.2f" % (degrees(typeDescriptor.chassis['rotationSpeed']))

#@xvm.export('turret_speed_turn', deterministic=False)
def turret_speed_turn():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%.2f" % (degrees(typeDescriptor.turret['rotationSpeed']))

#@xvm.export('invis_stand', deterministic=False)
def invis_stand():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%.1f" % (typeDescriptor.type.invisibility[1] * 50)

#@xvm.export('invis_stand_shot', deterministic=False)
def invis_stand_shot():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%.2f" % (typeDescriptor.type.invisibility[1] * typeDescriptor.gun['invisibilityFactorAtShot'] * 50)

#@xvm.export('invis_move', deterministic=False)
def invis_move():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%.1f" % (typeDescriptor.type.invisibility[0] * 50)

#@xvm.export('invis_move_shot', deterministic=False)
def invis_move_shot():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%.2f" % (typeDescriptor.type.invisibility[0] * typeDescriptor.gun['invisibilityFactorAtShot'] * 50)

#@xvm.export('vision_radius', deterministic=False)
def vision_radius():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%d" % (typeDescriptor.turret['circularVisionRadius'])

#@xvm.export('radio_name', deterministic=False)
def radio_name():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%s" % (typeDescriptor.radio['shortUserString'])

#@xvm.export('radio_radius', deterministic=False)
def radio_radius():
    typeDescriptor = _typeDescriptor()
    return None if not typeDescriptor else "%d" % (typeDescriptor.radio['distance'])