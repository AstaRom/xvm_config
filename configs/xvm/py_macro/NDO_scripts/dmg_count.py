#####################################################################
# imports

from data_macros import data

#####################################################################
# handlers

def high_caliber():
    max_hp_enemy = data.max_hp_team[1]
    if (data.battletype != 1) or (max_hp_enemy == 0):
        return
    else:
        symbol = '<img src="img://gui/maps/icons/achievement/32x32/mainGun.png" width="32" height="32" align="middle" vspace="-10">'
        done = '<img src="img://gui/maps/icons/library/done.png" width="25" height="25" align="middle" vspace="-10">'
        threshold = max_hp_enemy * 0.2 if max_hp_enemy > 5000 else 1000
        high_caliber = int(threshold - data.damage)
        if high_caliber <= 0:
            high_caliber = done
    return '%s%s' % (symbol, high_caliber) if max_hp_enemy >= 1000 else ''

def avg_damage():
    if (data.battletype != 1) or (data.avg_damage == 0):
        return
    else:
        symbol = '<img src="img://gui/maps/icons/library/cybersport/emblems/default_32x32.png" width="32" height="32" align="middle" vspace="-10">'
        done = '<img src="img://gui/maps/icons/library/done.png" width="25" height="25" align="middle" vspace="-10">'
        avgDamage = int(data.avg_damage - data.damage)
        if avgDamage <= 0:
            avgDamage = done
    return '%s%s' % (symbol, avgDamage)