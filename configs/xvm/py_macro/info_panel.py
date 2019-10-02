import BigWorld
from math import degrees

def typeDescriptor():
    player = BigWorld.player()
    target = BigWorld.target()
    if target is not None:
        return target.typeDescriptor
    else:
        return player.getVehicleAttached().typeDescriptor

@xvm.export('nick_name', deterministic=False)
def nick_name():
    player = BigWorld.player()
    target = BigWorld.target()
    if target is not None:
        return target.publicInfo['name']
    else:
        return player.getVehicleAttached().publicInfo['name']

@xvm.export('marks_on_gun', deterministic=False)
def marks_on_gun():
    player = BigWorld.player()
    target = BigWorld.target()
    if target is not None:
        return target.publicInfo['marksOnGun']
    else:
        return player.getVehicleAttached().publicInfo['marksOnGun']

@xvm.export('vehicle_name', deterministic=False)
def vehicle_name(): 
    return typeDescriptor().type.userString
    
@xvm.export('vehicle_system_name', deterministic=False)
def vehicle_system_name():
    return typeDescriptor().name

@xvm.export('icon_system_name', deterministic=False)
def icon_system_name():
    return typeDescriptor().name.replace(':', '-')

def gunShots():
    return typeDescriptor().gun['shots']

@xvm.export('gun_name', deterministic=False)
def gun_name():
    return typeDescriptor().gun['shortUserString']

@xvm.export('gun_caliber', deterministic=False)
def gun_caliber():
    return "%i" % (gunShots()[0]['shell']['caliber'])

@xvm.export('max_ammo', deterministic=False)
def max_ammo():
    return "%i" % (typeDescriptor().gun['maxAmmo'])

@xvm.export('gun_reload', deterministic=False)
def gun_reload():
    return "%.1f" % (typeDescriptor().gun['reloadTime'])

@xvm.export('gun_reload_equip', deterministic=False)
def gun_reload_equip():
    reload_orig = typeDescriptor().gun['reloadTime']
    crew = 0.94 if typeDescriptor().miscAttrs['crewLevelIncrease'] != 0 else 1
    if (typeDescriptor().gun['clip'][0] == 1) and (typeDescriptor().miscAttrs['gunReloadTimeFactor'] != 0):
      rammer = typeDescriptor().miscAttrs['gunReloadTimeFactor']
    else:
      rammer = 1
    return "%.1f" % (round(reload_orig * crew * rammer, 1))

@xvm.export('dmg_per_min', deterministic=False)
def dmg_per_min():
    time = typeDescriptor().gun['reloadTime'] + typeDescriptor().gun['clip'][0] * typeDescriptor().gun['clip'][1]
    return "%i" % (round(typeDescriptor().gun['clip'][0] / time * 60 * typeDescriptor().gun['shots'][0]['shell']['damage'][0], 0))

@xvm.export('dmg_per_min_equip', deterministic=False)
def dmg_per_min_equip():
    reload_orig = typeDescriptor().gun['reloadTime']
    crew = 0.94 if typeDescriptor().miscAttrs['crewLevelIncrease'] != 0 else 1
    if (typeDescriptor().gun['clip'][0] == 1) and (typeDescriptor().miscAttrs['gunReloadTimeFactor'] != 0):
      rammer = typeDescriptor().miscAttrs['gunReloadTimeFactor']
    else:
      rammer = 1
    reload_equip = reload_orig * crew * rammer 
    time = reload_equip + typeDescriptor().gun['clip'][0] * typeDescriptor().gun['clip'][1]
    return "%i" % (round(typeDescriptor().gun['clip'][0] / time * 60 * typeDescriptor().gun['shots'][0]['shell']['damage'][0], 0))

@xvm.export('gun_clip', deterministic=False)
def gun_clip():
    return "%i" % (typeDescriptor().gun['clip'][0])

@xvm.export('gun_clip_reload', deterministic=False)
def gun_clip_reload():
    return "%i" % (typeDescriptor().gun['clip'][1])

@xvm.export('gun_burst', deterministic=False)
def gun_burst():
    return "%i" % (typeDescriptor().gun['burst'][0])

@xvm.export('gun_burst_reload', deterministic=False)
def gun_burst_reload():
    return "%i" % (typeDescriptor().gun['burst'][1])    

@xvm.export('gun_aiming_time', deterministic=False)
def gun_aiming_time():
    return "%.1f" % (typeDescriptor().gun['aimingTime'])

@xvm.export('gun_accuracy', deterministic=False)
def gun_accuracy():
    return "%.2f" % (typeDescriptor().gun['shotDispersionAngle'])

@xvm.export('shell_name_1', deterministic=False)
def shell_name_1():
    return '' if len(gunShots()) < 1 else gunShots()[0]['shell']['userString']

@xvm.export('shell_name_2', deterministic=False)
def shell_name_2():
    return '' if len(gunShots()) < 2 else gunShots()[1]['shell']['userString']

@xvm.export('shell_name_3', deterministic=False)
def shell_name_3():
    return '' if len(gunShots()) < 3 else gunShots()[2]['shell']['userString']

@xvm.export('shell_damage_1', deterministic=False)
def shell_damage_1():
    return '' if len(gunShots()) < 1 else "%i" % (gunShots()[0]['shell']['damage'][0])

@xvm.export('shell_damage_2', deterministic=False)
def shell_damage_2():
    return '' if len(gunShots()) < 2 else "%i" % (gunShots()[1]['shell']['damage'][0])

@xvm.export('shell_damage_3', deterministic=False)
def shell_damage_3():
    return '' if len(gunShots()) < 3 else "%i" % (gunShots()[2]['shell']['damage'][0])

@xvm.export('shell_power_1', deterministic=False)
def shell_power_1():
    return '' if len(gunShots()) < 1 else "%i" % (gunShots()[0]['piercingPower'][0])

@xvm.export('shell_power_2', deterministic=False)
def shell_power_2():
    return '' if len(gunShots()) < 2 else "%i" % (gunShots()[1]['piercingPower'][0])

@xvm.export('shell_power_3', deterministic=False)
def shell_power_3():
    return '' if len(gunShots()) < 3 else "%i" % (gunShots()[2]['piercingPower'][0])

shell_type = {
    'ARMOR_PIERCING': 'ББ',
    'HIGH_EXPLOSIVE': 'ОФ',
    'ARMOR_PIERCING_CR': 'БП',
    'ARMOR_PIERCING_HE': 'ХФ',
    'HOLLOW_CHARGE': 'КС',
}

@xvm.export('shell_type_1', deterministic=False)
def shell_type_1():
    return '' if len(gunShots()) < 1 else shell_type[gunShots()[0]['shell']['kind']]

@xvm.export('shell_type_2', deterministic=False)
def shell_type_2():
    return '' if len(gunShots()) < 2 else shell_type[gunShots()[1]['shell']['kind']]

@xvm.export('shell_type_3', deterministic=False)
def shell_type_3():
    return '' if len(gunShots()) < 3 else shell_type[gunShots()[2]['shell']['kind']]

@xvm.export('shell_speed_1', deterministic=False)
def shell_speed_1():
    return '' if len(gunShots()) < 1 else "%i" % (gunShots()[0]['speed'])

@xvm.export('shell_speed_2', deterministic=False)
def shell_speed_2():
    return '' if len(gunShots()) < 2 else "%i" % (gunShots()[1]['speed'])

@xvm.export('shell_speed_3', deterministic=False)
def shell_speed_3():
    return '' if len(gunShots()) < 3 else "%i" % (gunShots()[2]['speed'])

@xvm.export('shell_distance_1', deterministic=False)
def shell_distance_1():
    return '' if len(gunShots()) < 1 else "%i" % (gunShots()[0]['maxDistance'])

@xvm.export('shell_distance_2', deterministic=False)
def shell_distance_2():
    return '' if len(gunShots()) < 2 else "%i" % (gunShots()[1]['maxDistance'])

@xvm.export('shell_distance_3', deterministic=False)
def shell_distance_3():
    return '' if len(gunShots()) < 3 else "%i" % (gunShots()[2]['maxDistance'])

@xvm.export('angle_pitch_up', deterministic=False)
def angle_pitch_up():
    return "%i" % (degrees(-typeDescriptor().gun['pitchLimits']['absolute'][0]))

@xvm.export('angle_pitch_down', deterministic=False)
def angle_pitch_down():
    return "%i" % (degrees(-typeDescriptor().gun['pitchLimits']['absolute'][1])) 

@xvm.export('angle_pitch_left', deterministic=False)
def angle_pitch_left():
    return "%i" % (degrees(-typeDescriptor().gun['turretYawLimits'][0]))

@xvm.export('angle_pitch_right', deterministic=False)
def angle_pitch_right():
    return "%i" % (degrees(typeDescriptor().gun['turretYawLimits'][1]))

@xvm.export('vehicle_max_health', deterministic=False)
def vehicle_max_health():
    return typeDescriptor().maxHealth

@xvm.export('armor_hull_front', deterministic=False)
def armor_hull_front():
    return "%i" % (typeDescriptor().hull['primaryArmor'][0])

@xvm.export('armor_hull_side', deterministic=False)
def armor_hull_side():
    return "%i" % (typeDescriptor().hull['primaryArmor'][1])

@xvm.export('armor_hull_back', deterministic=False)
def armor_hull_back():
    return "%i" % (typeDescriptor().hull['primaryArmor'][2])

@xvm.export('turret_name', deterministic=False)
def turret_name():
    return typeDescriptor().turret['shortUserString']

@xvm.export('armor_turret_front', deterministic=False)
def armor_turret_front():
    return "%i" % (typeDescriptor().turret['primaryArmor'][0])

@xvm.export('armor_turret_side', deterministic=False)
def armor_turret_side():
    return "%i" % (typeDescriptor().turret['primaryArmor'][1])

@xvm.export('armor_turret_back', deterministic=False)
def armor_turret_back():
    return "%i" % (typeDescriptor().turret['primaryArmor'][2])

@xvm.export('vehicle_weight', deterministic=False)
def vehicle_weight():
    return "%i" % (round(typeDescriptor().physics['weight'] / 1000, 1))

@xvm.export('chassis_max_weight', deterministic=False)
def chassis_max_weight():
    return "%i" % (round(typeDescriptor().chassis['maxLoad'] / 1000, 1))

@xvm.export('engine_name', deterministic=False)
def engine_name():
    return typeDescriptor().engine['shortUserString']

@xvm.export('engine_power', deterministic=False)
def engine_power():
    return "%i" % (round(typeDescriptor().engine['power'] / 735.49875, 0))

@xvm.export('engine_power_density', deterministic=False)
def engine_power_density():
    power = typeDescriptor().engine['power'] / 735.49875
    weight = typeDescriptor().physics['weight'] / 1000
    return "%.2f" % (round(power / weight, 2))

@xvm.export('speed_forward', deterministic=False)
def speed_forward():
    return "%i" % (typeDescriptor().physics['speedLimits'][0] * 3.6)

@xvm.export('speed_backward', deterministic=False)
def speed_backward():
    return "%i" % (typeDescriptor().physics['speedLimits'][1] * 3.6)

@xvm.export('hull_speed_turn', deterministic=False)
def hull_speed_turn():
    return "%i" % (degrees(typeDescriptor().chassis['rotationSpeed']))

@xvm.export('turret_speed_turn', deterministic=False)
def turret_speed_turn():
    return "%i" % (degrees(typeDescriptor().turret['rotationSpeed']))

@xvm.export('invis_stand', deterministic=False)
def invis_stand():
    return "%.1f" % (typeDescriptor().type.invisibility[1] * 50)

@xvm.export('invis_stand_shot', deterministic=False)
def invis_stand_shot():
    return "%.2f" % (typeDescriptor().type.invisibility[1] * typeDescriptor().gun['invisibilityFactorAtShot'] * 50)

@xvm.export('invis_move', deterministic=False)
def invis_move():
    return "%.1f" % (typeDescriptor().type.invisibility[0] * 50)

@xvm.export('invis_move_shot', deterministic=False)
def invis_move_shot():
    return "%.2f" % (typeDescriptor().type.invisibility[0] * typeDescriptor().gun['invisibilityFactorAtShot'] * 50)

@xvm.export('vision_radius', deterministic=False)
def vision_radius():
    return "%i" % (typeDescriptor().turret['circularVisionRadius'])

@xvm.export('radio_name', deterministic=False)
def radio_name():
    return typeDescriptor().radio['shortUserString']

@xvm.export('radio_radius', deterministic=False)
def radio_radius():
    return "%i" % (typeDescriptor().radio['distance'])