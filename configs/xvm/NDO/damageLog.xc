{
  "damageLog": {
    "enabled": true,
    "disabledDetailStats": false,
    "disabledSummaryStats": false,
    "log": {
      "moveInBattle": false,
      "x": 235,
      "y": -15,
      "showHitNoDamage": false,
      "groupDamagesFromFire": true,
      "groupDamagesFromRamming_WorldCollision": true,
      "groupDamageFromArtAndAirstrike": true,
      "dmg-kind": {
        "shot": "{{type-shell}}",
        "fire": "<font face='NDO'>&#x0057;</font>",
        "ramming": "<font face='NDO'>&#x0058;</font>",
        "world_collision": "<font face='NDO'>&#x0059;</font>",
        "drowning": "<font face='NDO'>&#x005A;</font>",
        "overturn": "<font face='NDO'>&#x005B;</font>",
        "death_zone": "<font face='NDO'>&#x005C;</font>",
        "gas_attack": "<font face='NDO'>&#x005D;</font>",
        "art_attack": "<font face='NDO'>&#x005E;</font>",
        "air_strike": "<font face='NDO'>&#x005F;</font>"
      },
      "c:dmg-kind": { 
        "shot": "#FCFCFC",
        "fire": "#FF6655",
        "ramming": "#998855",
        "world_collision": "#228855",
        "drowning": "#CCCCCC",
        "overturn": "#CCCCCC",
        "death_zone": "#CCCCCC",
        "gas_attack": "#CCCCCC",
        "art_attack": "#CCCCCC",
        "air_strike": "#CCCCCC"
      },
      "splash-hit":{
        "splash": "<font face='NDO'>&#x0060;</font>",
        "no-splash": "<font color='{{c:costShell}}'>{{l10n:high_explosive}}</font>"
      },
      "type-shell": {
        "armor_piercing": "<font color='{{c:costShell}}'>{{l10n:armor_piercing}}</font>",
        "high_explosive": "{{splash-hit}}",
        "armor_piercing_cr": "<font color='{{c:costShell}}'>{{l10n:armor_piercing_cr}}</font>",
        "armor_piercing_he": "<font color='{{c:costShell}}'>{{l10n:armor_piercing_he}}</font>",
        "hollow_charge": "<font color='{{c:costShell}}'>{{l10n:hollow_charge}}</font>",
        "not_shell": ""
      },
      "c:type-shell": {
        "armor_piercing": "#CCCCCC",
        "high_explosive": "#CCCCCC",
        "armor_piercing_cr": "#CCCCCC",
        "armor_piercing_he": "#CCCCCC",
        "hollow_charge": "#CCCCCC",
        "not_shell": "#CCCCCC"
      },
      "vtype": {
        "HT": "<font face='NDO' size='19'>&#x0043;</font>",
        "MT": "<font face='NDO' size='19'>&#x0042;</font>",
        "LT": "<font face='NDO' size='19'>&#x0041;</font>",
        "TD": "<font face='NDO' size='19'>&#x0044;</font>",
        "SPG": "<font face='NDO' size='18'>&#x0045;</font>",
        "not_vehicle": ""
      },
      "c:vtype":{
        "HT": "#FFACAC",
        "MT": "#FFF198",
        "LT": "#A2FF9A",
        "TD": "#A0CFFF",
        "SPG": "#EFAEFF",
        "not_vehicle": "#CCCCCC"
      },
      "hit-effects": {
        "armor_pierced": "{{dmg}}",
        "intermediate_ricochet": "{{l10n:intermediate_ricochet}}",
        "final_ricochet": "{{l10n:final_ricochet}}",
        "armor_not_pierced": "{{l10n:armor_not_pierced}}",
        "armor_pierced_no_damage": "{{l10n:armor_pierced_no_damage}}",
        "unknown": "{{l10n:armor_pierced_no_damage}}"
      },
      "c:hit-effects": {
        "armor_pierced": "#FFAA55",
        "intermediate_ricochet": "#CCCCCC",
        "final_ricochet": "#CCCCCC",
        "armor_not_pierced": "#CCCCCC",
        "armor_pierced_no_damage": "#CCCCCC",
        "unknown": "#CCCCCC"
      },
      "critical-hit":{
        "critical": "*",
        "no-critical": ""
      },
      "crit-device": {
        "engine_crit": "{{l10n:engine}}",
        "ammo_bay_crit": "{{l10n:ammo_bay}}",
        "fuel_tank_crit": "{{l10n:fuel_tank}}",
        "radio_crit": "{{l10n:radio}}",
        "left_track_crit": "{{l10n:left_track}}",
        "right_track_crit": "{{l10n:right_track}}",
        "gun_crit": "{{l10n:gun}}",
        "turret_rotator_crit": "{{l10n:turret_rotator}}",
        "surveying_device_crit": "{{l10n:surveying_device}}",
        "engine_destr": "{{l10n:engine}}",
        "ammo_bay_destr": "{{l10n:ammo_bay}}",
        "fuel_tank_destr": "{{l10n:fuel_tank}}",
        "radio_destr": "{{l10n:radio}}",
        "left_track_destr": "{{l10n:left_track}}",
        "right_track_destr": "{{l10n:right_track}}",
        "gun_destr": "{{l10n:gun}}",
        "turret_rotator_destr": "{{l10n:turret_rotator}}",
        "surveying_device_destr": "{{l10n:surveying_device}}",
        "commander": "{{l10n:commander}}",
        "driver": "{{l10n:driver}}",
        "radioman": "{{l10n:radioman}}",
        "gunner": "{{l10n:gunner}}",
        "loader": "{{l10n:loader}}",
        "no-critical": ""
      },
      "comp-name":{
        "turret": "{{l10n:turret}}",
        "hull": "{{l10n:hull}}",
        "chassis": "{{l10n:chassis}}",
        "wheel": "{{l10n:wheel}}",
        "gun": "{{l10n:gun}}",
        "unknown": ""
      },
      "team-dmg":{
        "ally-dmg": "",
        "enemy-dmg": "",
        "player": "",
        "unknown": ""
      },
      "c:team-dmg":{
        "ally-dmg": "#00EAFF",
        "enemy-dmg": "#E2E2E2",
        "player": "#B9FFA1",
        "unknown": "#CCCCCC"
      },
      "costShell":{
        "gold-shell": "",
        "silver-shell": "",
        "unknown": ""
      },
      "c:costShell":{
        "gold-shell": "#FFCC66",
        "silver-shell": "#E2E2E2",
        "unknown": ""
      },
      "shadow": {
        "distance": 1,
        "angle": 90,
        "color": "#000000",
        "alpha": 80,
        "blur": 5,
        "strength": 3,
        "hideObject": false,
        "inner": false,
        "knockout": false,
        "quality": 1
      },
      "formatHistory": "<textformat tabstops='[25,75,100]' leading='-5'><font size='12'>{{number%2d~.}}</font><tab><font color='{{c:dmg-kind}}'>{{hit-effects}}{{critical-hit}}<tab>{{dmg-kind}}</font><tab><font color='{{c:team-dmg}}'>{{vtype}} {{vehicle}}</font></textformat>"
    },
    "logBackground": {
      "$ref": { "path": "damageLog.log" },
      "formatHistory": ""
    },
    "logAlt": {
      "$ref": { "path": "damageLog.log" },
      "formatHistory": "<textformat tabstops='[25,75,100]' leading='-5'><font size='12'>{{number%2d~.}}</font><tab><font color='{{c:dmg-kind}}'>{{dmg-ratio}}%<tab>{{dmg-kind}}</font><tab><font color='{{c:team-dmg}}'>{{vtype}} {{name}}</font></textformat>"
    },
    "logAltBackground": {
      "$ref": { "path": "damageLog.logBackground" },
      "formatHistory": ""
    },
    "lastHit": {
      "$ref": { "path": "damageLog.log" },
      "formatHistory": ""
    }
  }
}
