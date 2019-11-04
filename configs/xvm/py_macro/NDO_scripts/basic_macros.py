#####################################################################
# imports

import BigWorld

import xvm_main.python.config as config

#####################################################################
# handlers

#@xvm.export('color_blind', deterministic=True)
def color_blind():
    color = config.get('settings/color_blind', False)
    return True if color else None

#@xvm.export('math_sub', deterministic=True)
def math_sub(a, b):
    return None if a is None or b is None else a - b

#@xvm.export('screen_height', deterministic=False)
def screen_height():
    return BigWorld.screenHeight()

#@xvm.export('str_replace', deterministic=True)
def str_replace(str, old, new, max=-1):
    return str.replace(old, new, max)