#####################################################################
# imports

import BigWorld
from CurrentVehicle import g_currentVehicle
from gui.Scaleform.daapi.view.lobby.hangar.Hangar import Hangar
from helpers import dependency
from skeletons.gui.game_control import IBootcampController
from skeletons.gui.shared import IItemsCache
import traceback

from xfw import registerEvent
import xvm_battle.python.fragCorrelationPanel as panel

#####################################################################
# constants

actual_arenaUniqueID = None
playerAvgDamage = None
max_hp_enemy = 0

#####################################################################
# handlers

#@xvm.export('high_caliber', deterministic=False)
def high_caliber(dmg_total):
    global actual_arenaUniqueID, max_hp_enemy
    arenaUniqueID = BigWorld.player().arenaUniqueID
    if actual_arenaUniqueID != arenaUniqueID:
        actual_arenaUniqueID = arenaUniqueID
        max_hp_enemy = 0
    if panel.teams_totalhp[1] > max_hp_enemy:
        max_hp_enemy = panel.teams_totalhp[1]
    battletype = BigWorld.player().arena.guiType
    if (battletype != 1) or (max_hp_enemy == 0):
        return
    else:
        symbol = '<img src="img://gui/maps/icons/achievement/32x32/mainGun.png" width="32" height="32" align="middle" vspace="-10">'
        done = '<img src="img://gui/maps/icons/library/done.png" width="25" height="25" align="middle" vspace="-10">'
        threshold = max_hp_enemy * 0.2 if max_hp_enemy > 5000 else 1000
        high_caliber = int(threshold - dmg_total)
        if high_caliber <= 0:
            high_caliber = done
    return '%s%s' % (symbol, high_caliber) if max_hp_enemy >= 1000 else ''

@registerEvent(Hangar, '_Hangar__updateParams')
def Hangar__updateParams(self):
    try:
        if dependency.instance(IBootcampController).isInBootcamp() or not g_currentVehicle.isPresent():
            return
        global playerAvgDamage
        itemsCache = dependency.instance(IItemsCache)
        playerAvgDamage = itemsCache.items.getVehicleDossier(g_currentVehicle.item.intCD).getRandomStats().getAvgDamage()
        return
    except:
        err(traceback.format_exc())

#@xvm.export('avg_damage', deterministic=False)
def avg_damage(dmg_total):
    global playerAvgDamage
    battletype = BigWorld.player().arena.guiType
    if battletype != 1:
        return
    elif playerAvgDamage == None:
        return
    else:
        symbol = '<img src="img://gui/maps/icons/library/cybersport/emblems/default_32x32.png" width="32" height="32" align="middle" vspace="-10">'
        done = '<img src="img://gui/maps/icons/library/done.png" width="25" height="25" align="middle" vspace="-10">'
        avgDamage = int(playerAvgDamage - dmg_total)
        if avgDamage <= 0:
            avgDamage = done
    return '%s%s' % (symbol, avgDamage)