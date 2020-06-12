#####################################################################
# imports

from Avatar import PlayerAvatar
from BigWorld import player, target
from math import degrees
from nations import NAMES

from xfw.events import registerEvent
from xfw_actionscript.python import as_event
from xvm_main.python.xvm import l10n
import xvm_battle.python.battle as battle
import xvm_main.python.config as config

#####################################################################
# constants

ipHotKey = None

#####################################################################
# private

def isBattle():
    return battle.isBattleTypeSupported

def _vehicle():
    vehicle = target()
    if not vehicle:
        vehicle = player().getVehicleAttached()
    return vehicle

def _typeDescriptor():
    vehicle = _vehicle()
    return None if (not vehicle or not hasattr(vehicle, 'typeDescriptor')) else vehicle.typeDescriptor

def _gunShots():
    td = _typeDescriptor()
    return None if not td else td.gun.shots

def _numShell(num):
    return None if (num < 1) and (num > 3) else num - 1

#####################################################################
# handlers

@registerEvent(PlayerAvatar, 'handleKey')
def handleKey(self, isDown, key, mods):
    global ipHotKey
    if key != 56:
        return
    if isDown and isBattle():
        ipHotKey = config.get('custom_texts/battleLabels/info_panel')
    elif not isDown:
        ipHotKey = None
    as_event('ON_INFO_PANEL')

def nick_name():
    veh = _vehicle()
    return None if not veh else "%s" % veh.publicInfo.name

def marks_on_gun():
    veh = _vehicle()
    return None if not veh else "%d" % veh.publicInfo.marksOnGun

def vehicle_level():
    td = _typeDescriptor()
    return None if not td else "%d" % td.type.level

def vehicle_nation():
    td = _typeDescriptor()
    return None if not td else l10n(NAMES[td.type.customizationNationID])

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

def vehicle_name():
    td = _typeDescriptor()
    return None if not td else "%s" % td.type.userString

def vehicle_short_name():
    td = _typeDescriptor()
    return None if not td else "%s" % td.type.shortUserString

def vehicle_system_name():
    td = _typeDescriptor()
    return None if not td else "%s" % td.name

def icon_system_name():
    td = _typeDescriptor()
    return None if not td else "%s" % td.name.replace(':', '-')

def isPremium():
    td = _typeDescriptor()
    if not td:
        return None
    else:
        return 'premium' if 'premium' in td.type.tags else ''

def gun_name():
    td = _typeDescriptor()
    return None if not td else "%s" % td.gun.shortUserString

def gun_caliber():
    gs = _gunShots()
    return None if not gs else "%d" % gs[0].shell.caliber

def max_ammo():
    td = _typeDescriptor()
    return None if not td else "%d" % td.gun.maxAmmo

def gun_reload():
    td = _typeDescriptor()
    return None if not td else "%.2f" % td.gun.reloadTime

def gun_dpm():
    td = _typeDescriptor()
    if not td:
        return None
    else:
        time = td.gun.reloadTime + (td.gun.clip[0] - 1) * td.gun.clip[1]
        return "%d" % round(td.gun.clip[0] / time * 60 * td.gun.shots[0].shell.damage[0], 0)

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

def gun_dpm_equip(eq1, eq2, eq3, eq4):
    td = _typeDescriptor()
    if not td:
        return None
    else:
        reload_equip = float(gun_reload_equip(eq1, eq2, eq3, eq4))
        time = reload_equip + (td.gun.clip[0] - 1) * td.gun.clip[1]
        return "%d" % round(td.gun.clip[0] / time * 60 * td.gun.shots[0].shell.damage[0], 0)

def gun_clip():
    td = _typeDescriptor()
    return None if not td else "%d" % td.gun.clip[0]

def gun_clip_reload():
    td = _typeDescriptor()
    return None if not td else "%.1f" % td.gun.clip[1]

def gun_burst():
    td = _typeDescriptor()
    return None if not td else "%d" % td.gun.burst[0]

def gun_burst_reload():
    td = _typeDescriptor()
    return None if not td else "%.1f" % td.gun.burst[1]

def gun_aiming_time():
    td = _typeDescriptor()
    return None if not td else "%.1f" % td.gun.aimingTime

def gun_accuracy():
    td = _typeDescriptor()
    return None if not td else "%.2f" % round(td.gun.shotDispersionAngle * 100, 2)

def shell_name(num):
    gs = _gunShots()
    ns = _numShell(num)
    return None if (not gs) or (len(gs) < num) else "%s" % gs[ns].shell.userString

def shell_damage(num):
    gs = _gunShots()
    ns = _numShell(num)
    return None if (not gs) or (len(gs) < num) else "%d" % gs[ns].shell.damage[0]

def shell_power(num):
    gs = _gunShots()
    ns = _numShell(num)
    return None if (not gs) or (len(gs) < num) else "%d" % gs[ns].piercingPower[0]

def shell_type(num):
    gs = _gunShots()
    ns = _numShell(num)
    return None if (not gs) or (len(gs) < num) else l10n(gs[ns].shell.kind.lower())

def shell_speed(num):
    gs = _gunShots()
    ns = _numShell(num)
    return None if (not gs) or (len(gs) < num) else "%d" % round(gs[ns].speed * 1.25)

def shell_distance(num):
    gs = _gunShots()
    ns = _numShell(num)
    return None if (not gs) or (len(gs) < num) else "%d" % gs[ns].maxDistance

def stun_radius():
    gs = _gunShots()
    if (gs is not None) and (gs[0].shell.stun is not None):
        return "%d" % gs[0].shell.stun.stunRadius
    else:
        return None

def stun_duration_min():
    gs = _gunShots()
    if (gs is not None) and (gs[0].shell.stun is not None):
        return "%.1f" % round(gs[0].shell.stun.stunRadius * gs[0].shell.stun.guaranteedStunDuration, 1)
    else:
        return None

def stun_duration_max():
    gs = _gunShots()
    if (gs is not None) and (gs[0].shell.stun is not None):
        return "%d" % gs[0].shell.stun.stunDuration
    else:
        return None

def angle_pitch_up():
    td = _typeDescriptor()
    return None if not td else "%d" % degrees(-td.gun.pitchLimits['absolute'][0])

def angle_pitch_down():
    td = _typeDescriptor()
    return None if not td else "%d" % degrees(-td.gun.pitchLimits['absolute'][1])

def angle_pitch_left():
    td = _typeDescriptor()
    return None if (not td) or (not td.gun.turretYawLimits) else "%d" % degrees(-td.gun.turretYawLimits[0])

def angle_pitch_right():
    td = _typeDescriptor()
    return None if (not td) or (not td.gun.turretYawLimits) else "%d" % degrees(td.gun.turretYawLimits[1])

def vehicle_max_health():
    td = _typeDescriptor()
    return None if not td else "%d" % td.maxHealth

def armor_hull_front():
    td = _typeDescriptor()
    return None if not td else "%d" % td.hull.primaryArmor[0]

def armor_hull_side():
    td = _typeDescriptor()
    return None if not td else "%d" % td.hull.primaryArmor[1]

def armor_hull_back():
    td = _typeDescriptor()
    return None if not td else "%d" % td.hull.primaryArmor[2]

def turret_name():
    td = _typeDescriptor()
    return None if not td else "%s" % td.turret.shortUserString

def armor_turret_front():
    td = _typeDescriptor()
    return None if not td else "%d" % td.turret.primaryArmor[0]

def armor_turret_side():
    td = _typeDescriptor()
    return None if not td else "%d" % td.turret.primaryArmor[1]

def armor_turret_back():
    td = _typeDescriptor()
    return None if not td else "%d" % td.turret.primaryArmor[2]

def vehicle_weight():
    td = _typeDescriptor()
    return None if not td else "%.1f" % round(td.physics['weight'] / 1000, 1)

def chassis_max_weight():
    td = _typeDescriptor()
    return None if not td else "%.1f" % round(td.chassis.maxLoad / 1000, 1)

def engine_name():
    td = _typeDescriptor()
    return None if not td else "%s" % td.engine.shortUserString

def engine_power():
    td = _typeDescriptor()
    return None if not td else "%d" % round(td.engine.power / 735.49875, 0)

def engine_power_density():
    td = _typeDescriptor()
    if not td:
        return None
    else:
        power = td.engine.power / 735.49875
        weight = td.physics['weight'] / 1000
        return "%.2f" % round(power / weight, 2)

def speed_forward():
    td = _typeDescriptor()
    return None if not td else "%d" % (td.physics['speedLimits'][0] * 3.6)

def speed_backward():
    td = _typeDescriptor()
    return None if not td else "%d" % (td.physics['speedLimits'][1] * 3.6)

def hull_speed_turn():
    td = _typeDescriptor()
    return None if not td else "%.2f" % degrees(td.chassis.rotationSpeed)

def turret_speed_turn():
    td = _typeDescriptor()
    return None if not td else "%.2f" % degrees(td.turret.rotationSpeed)

def invis_stand():
    td = _typeDescriptor()
    return None if not td else "%.1f" % (td.type.invisibility[1] * 57)

def invis_stand_shot():
    td = _typeDescriptor()
    return None if not td else "%.2f" % (td.type.invisibility[1] * td.gun.invisibilityFactorAtShot * 57)

def invis_move():
    td = _typeDescriptor()
    return None if not td else "%.1f" % (td.type.invisibility[0] * 57)

def invis_move_shot():
    td = _typeDescriptor()
    return None if not td else "%.2f" % (td.type.invisibility[0] * td.gun.invisibilityFactorAtShot * 57)

def vision_radius():
    td = _typeDescriptor()
    return None if not td else "%d" % td.turret.circularVisionRadius

def radio_name():
    td = _typeDescriptor()
    return None if not td else "%s" % td.radio.shortUserString

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