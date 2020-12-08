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
        threshold = max_hp_enemy * 0.2 if max_hp_enemy > 5000 else 1000
        progress = int(threshold - data.damage)
        if progress <= 0:
            progress = 0
    return progress if max_hp_enemy >= 1000 else None

def avg_damage():
    if (data.battletype != 1) or (data.avg_damage == 0):
        return
    else:
        progress = int(data.avg_damage - data.damage)
        if progress <= 0:
            progress = 0
    return progress

def check_status(var):
    progress = high_caliber() if var == 0 else avg_damage()
    if progress is None:
        return
    if (var == 0) and data.teamHits:
        return 'impossible'
    elif progress is not None:
        return 'done' if progress == 0 else 'progress'