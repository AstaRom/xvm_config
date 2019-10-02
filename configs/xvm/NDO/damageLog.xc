{
  "damageLog": {
    "disabledDetailStats": false,
    "disabledSummaryStats": false,
    "saveLocationInBattle": false,
    "log": {
      "x": 235,
      "y": -15,
      "dmg-kind": {
        "shot": "{{type-shell}}",
        "fire": "<font face='NDO'>&#x0053;</font>",
        "ramming": "<font face='NDO'>&#x0054;</font>",
        "world_collision": "<font face='NDO'>&#x0055;</font>",
        "drowning": "Dr",
        "overturn": "<font face='NDO'>&#x0056;</font>",
        "death_zone": "DZ",
        "gas_attack": "GA",
        "art_attack": "<font face='NDO'>&#x0057;</font>",
        "air_strike": "<font face='NDO'>&#x0058;</font>"
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
        "splash": "<font face='NDO'>&#x0059;</font>",
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
        "mediumTank": "<font face='NDO' size='19'>&#x0042;</font>",
        "lightTank": "<font face='NDO' size='19'>&#x0041;</font>",
        "heavyTank": "<font face='NDO' size='19'>&#x0043;</font>",
        "AT-SPG": "<font face='NDO' size='19'>&#x0044;</font>",
        "SPG": "<font face='NDO' size='19'>&#x0045;</font>",
        "not_vehicle": ""
      },
      "c:vtype":{
        "mediumTank": "#FFF198",
        "lightTank": "#A2FF9A",
        "heavyTank": "#FFACAC",
        "AT-SPG": "#A0CFFF",
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
      "comp-name":{
        "turret": "{{l10n:turret}}",
        "hull": "{{l10n:hull}}",
        "chassis": "{{l10n:chassis}}",
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
      "showHitNoDamage": false,
      "groupDamagesFromFire": true,
      "groupDamagesFromRamming_WorldCollision": true,
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
      "formatHistory": "<textformat tabstops='[25,75,100]' leading='-5'><font size='14'><font size='12'>{{number%2d~.}}</font><tab><font color='{{c:dmg-kind}}'>{{hit-effects}}{{critical-hit}}<tab>{{dmg-kind}}</font><tab><font color='{{c:team-dmg}}'>{{vtype}} {{vehicle}}</font></font></textformat>"
    },
    "logAlt": {
      "$ref": { "path":"damageLog.log" },
      "showHitNoDamage": false,
      "formatHistory": "<textformat tabstops='[25,75,100]' leading='-5'><font size='14'><font size='12'>{{number%2d~.}}</font><tab><font color='{{c:dmg-kind}}'>{{dmg-ratio}}%<tab>{{dmg-kind}}</font><tab><font color='{{c:team-dmg}}'>{{name}}</font></font></textformat>"
    },
    "lastHit": {
      "$ref": { "path":"damageLog.log" },
      "x": 0,
      "y": -120,
      "vtype": {
        "mediumTank": "<font face='NDO' size='36'>&#x0042;</font>",
        "lightTank": "<font face='NDO' size='34'>&#x0041;</font>",
        "heavyTank": "<font face='NDO' size='30'>&#x0043;</font>",
        "AT-SPG": "<font face='NDO' size='34'>&#x0044;</font>",
        "SPG": "<font face='NDO' size='34'>&#x0045;</font>",
        "not_vehicle": ""
      },
      "hit-effects": {
        "armor_pierced": "<font color='{{c:costShell}}'><font face='$FieldFont'>-</font>{{dmg}}</font>",
        "intermediate_ricochet": "{{l10n:intermediate_ricochet}}",
        "final_ricochet": " {{l10n:final_ricochet}}",
        "armor_not_pierced": " {{l10n:armor_not_pierced}}",
        "armor_pierced_no_damage": "{{l10n:armor_pierced_no_damage}}"
      },
      "c:costShell":{
        "gold-shell": "#FFCC66",
        "silver-shell": "#FCFCFC",
        "unknown": ""
      },
      "timeDisplayLastHit": 5,
      "showHitNoDamage": true,
      "shadow": {
        "distance": 1,
        "angle": 90,
        "color": "{{dmg=0?#000000|#770000}}",
        "alpha": 80,
        "blur": 5,
        "strength": 3,
        "hideObject": false,
        "inner": false,
        "knockout": false,
        "quality": 1
      },
      "formatLastHit": "<textformat leading='-5'>{{hit-effects}}<br><font color='{{c:team-dmg}}'>{{vtype}} {{vehicle}}</font></textformat>"
    }
  }
}