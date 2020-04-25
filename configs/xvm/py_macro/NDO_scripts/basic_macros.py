#####################################################################
# imports

import BigWorld
import xvm_main.python.config as config
from data_macros import data

#####################################################################
# handlers

def color_blind():
    color = config.get('settings/color_blind', False)
    return True if color else None

def math_sub(a, b):
    return None if a is None or b is None else a - b

def screen_height():
    return BigWorld.screenHeight()

def str_replace(str, old, new, max=-1):
    return str.replace(old, new, max)

def isAnonym(stat):
    isStatOn = stat == 'stat'
    return True if isStatOn and (not data.isAnonymMode) else None