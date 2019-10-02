{
  "damageLog": {
    "disabledDetailStats": true,
    "disabledSummaryStats": true,
    "log": {
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
        "armor_pierced_no_damage": "{{l10n:armor_pierced_no_damage}}"
      },
      "c:hit-effects": {
        "armor_pierced": "#FFAA55",
        "intermediate_ricochet": "#CCCCCC",
        "final_ricochet": "#CCCCCC",
        "armor_not_pierced": "#CCCCCC",
        "armor_pierced_no_damage": "#CCCCCC"
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
        "do_not_know": ""
      },
      "team-dmg":{
        "ally-dmg": "",
        "enemy-dmg": "",
        "player": "",
        "do_not_know": ""
      },
      "c:team-dmg":{
        "ally-dmg": "#00EAFF",
        "enemy-dmg": "#E2E2E2",
        "player": "#B9FFA1",
        "do_not_know": "#CCCCCC"
      },
      "costShell":{
        "gold-shell": "",
        "silver-shell": "",
        "do_not_know": ""
      },
      "c:costShell":{
        "gold-shell": "#FFCC66",
        "silver-shell": "#E2E2E2",
        "do_not_know": ""
      },
      "showHitNoDamage": false,
      "groupDamagesFromFire": true,
      "formatHistory": "<textformat tabstops='[25,75,100]' leading='-5'><font size='14'><font size='12'>{{number}}.</font><tab><font color='{{c:dmg-kind}}'>{{hit-effects}}{{critical-hit}}<tab>{{dmg-kind}}</font><tab><font color='{{c:team-dmg}}'>{{vtype}} {{vehicle}}</font></font></textformat>",
      "formatHistoryAlt": "<textformat tabstops='[25,75,100]' leading='-5'><font size='14'><font size='12'>{{number}}.</font><tab><font color='{{c:dmg-kind}}'>{{hit-effects}}{{critical-hit}}<tab>{{dmg-kind}}</font><tab><font color='{{c:team-dmg}}'>{{name}}</font></font></textformat>"
    },
    "lastHit": {
      "$ref": { "path":"damageLog.log" },
      "vtype": {
        "mediumTank": "<font face='NDO' size='25'>&#x0042;</font>",
        "lightTank": "<font face='NDO' size='25'>&#x0041;</font>",
        "heavyTank": "<font face='NDO' size='25'>&#x0043;</font>",
        "AT-SPG": "<font face='NDO' size='25'>&#x0044;</font>",
        "SPG": "<font face='NDO' size='25'>&#x0045;</font>",
        "not_vehicle": ""
      },
      "hit-effects": {
        "armor_pierced": "<font size='30'>{{dmg}}</font>",
        "intermediate_ricochet": "{{l10n:intermediate_ricochet}}",
        "final_ricochet": "{{l10n:final_ricochet}}",
        "armor_not_pierced": "{{l10n:armor_not_pierced}}",
        "armor_pierced_no_damage": "{{l10n:armor_pierced_no_damage}}"
      },
      "timeDisplayLastHit": 5,
      "showHitNoDamage": true,
      "formatLastHit": "<textformat leading='-5'><font color='{{c:hit-effects}}'>{{hit-effects}}</font><br><font color='{{c:team-dmg}}'>{{vtype}} {{vehicle}}</font></textformat>"
    },
    "timeReload": {
      "$ref": { "path":"damageLog.log" },
      "c:team-dmg":{
        "ally-dmg": "#00EAFF",
        "enemy-dmg": "#FFAA55",
        "player": "#B9FFA1",
        "do_not_know": "#CCCCCC"
      },
      "formatTimer": "<textformat tabstops='[58]'>{{timer}} {{l10n:sec}}.<tab><font color='{{c:team-dmg}}'>{{vtype}} {{vehicle}}</font></textformat>",
      "formatTimerAfterReload": "<font color='{{c:team-dmg}}'>{{vtype}} {{vehicle}}</font> {{l10n:reloaded}}..",
      "timeTextAfterReload": 5
    }
  }
}