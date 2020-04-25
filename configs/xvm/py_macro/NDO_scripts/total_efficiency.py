#####################################################################
# imports

from data_macros import data

#####################################################################
# handlers

def total_threshold():
    for value in [data.damage, data.assist, data.blocked, data.stun]:
        if value > 9999:
            return True
        else:
            continue
    return None

def total_damage():
    return data.damage

def total_assist():
    return data.assist

def total_blocked():
    return data.blocked

def total_stun():
    return data.stun