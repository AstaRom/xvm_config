#####################################################################
# imports

import BigWorld
import BattleReplay
from Vehicle import Vehicle

from xfw.events import registerEvent
import xvm_main.python.config as config

#####################################################################
# constants

isAnonymMode = None

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

#@xvm.export('isAnonym', deterministic=True)
def isAnonym(stat):
    isStatOn = stat == 'stat'
    return True if isStatOn and (not isAnonymMode) else None

@registerEvent(Vehicle, 'onEnterWorld')
def onEnterWorld(self, prereqs):
    global isAnonymMode
    if self.isPlayerVehicle:
        vInfoVO = self.guiSessionProvider.getArenaDP().getVehicleInfo(self.id)
        isAnonym = vInfoVO.player.name != vInfoVO.player.fakeName
        if not BattleReplay.g_replayCtrl.isPlaying and isAnonym:
            isAnonymMode = True
        else:
            isAnonymMode = False
        return