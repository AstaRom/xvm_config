#####################################################################
# imports

import BigWorld
from helpers import getClientLanguage

import xvm_main.python.config as config

#####################################################################
# handlers

#@xvm.export('l10n', deterministic=True)
def l10n(l10n):
    gameLng = getClientLanguage()
    mode = 'ru' if gameLng == 'ru' else 'en'
    ref = config.get('custom_texts/language/%s/%s' % (mode, l10n))
    return '%s' % ref

#@xvm.export('math_sub', deterministic=True)
def math_sub(a, b):
    return None if a is None or b is None else a - b

#@xvm.export('screen_height', deterministic=False)
def screen_height():
    return BigWorld.screenHeight()

#@xvm.export('str_replace', deterministic=True)
def str_replace(str, old, new, max=-1):
    return str.replace(old, new, max)