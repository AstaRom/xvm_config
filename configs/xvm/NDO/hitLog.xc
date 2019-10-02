{
  "hitLog": {
    "enabled": true,
    "showSelfDamage": true,
    "showAllyDamage": true,
    "log": {
      "moveInBattle": false,
      "x": 5,
      "y": 450,
      "groupHitsByPlayer": true,
      "lines": 15,
      "addToEnd": false,
      "dmg-kind": {
        "shot": "{{type-shell}}",
        "fire": "<font face='NDO'>&#x0053;</font>",
        "ramming": "<font face='NDO'>&#x0054;</font>",
        "world_collision": "<font face='NDO'>&#x0055;</font>",
        "drowning": "<font face='NDO'>&#x0047;</font>",
        "overturn": "<font face='NDO'>&#x0056;</font>",
        "death_zone": "DZ",
        "gas_attack": "GA",
        "art_attack": "<font face='NDO'>&#x0057;</font>",
        "air_strike": "<font face='NDO'>&#x0058;</font>"
      },
      "c:dmg-kind": {
        "shot": "#FFAA55",
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
      "dmg-kind-player": {
        "shot": "{{type-shell}}",
        "fire": "<font face='NDO'>&#x0053;</font>",
        "ramming": "<font face='NDO'>&#x0054;</font>",
        "world_collision": "<font face='NDO'>&#x0055;</font>",
        "drowning": "<font face='NDO'>&#x0047;</font>",
        "overturn": "<font face='NDO'>&#x0056;</font>",
        "death_zone": "DZ",
        "gas_attack": "GA",
        "art_attack": "<font face='NDO'>&#x0057;</font>",
        "air_strike": "<font face='NDO'>&#x0058;</font>"
      },      
      "vtype": {
        "HT": "<font face='NDO' size='19'>&#x0043;</font>",
        "MT": "<font face='NDO' size='19'>&#x0042;</font>",
        "LT": "<font face='NDO' size='19'>&#x0041;</font>",
        "TD": "<font face='NDO' size='19'>&#x0044;</font>",
        "SPG": "<font face='NDO' size='19'>&#x0045;</font>",
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
      "comp-name":{
        "turret": "{{l10n:turret}}",
        "hull": "{{l10n:hull}}",
        "chassis": "{{l10n:chassis}}",
        "wheel": "{{l10n:wheel}}",
        "gun": "{{l10n:gun}}",
        "unknown": ""
      },
      "type-shell": {
        "armor_piercing": "<font color='{{c:costShell}}'>{{l10n:armor_piercing}}</font>",
        "high_explosive": "<font color='{{c:costShell}}'>{{l10n:high_explosive}}</font>",
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
      "formatHistory": "<textformat leading='-5' tabstops='[30,39,69,78]'>{{dmg-player%4.4d}}<tab>|<tab><font color='{{c:dmg-kind}}'>{{dmg%4.4d}}</font><tab>|<tab>{{vtype}} {{vehicle}}{{alive? |{{blownup?<font face='NDO' size='16'> &#x0048;</font>|<font face='NDO' size='15'> &#x0047;</font>}}}}</textformat>"
    },
    "logAlt": {
      "$ref": { "path":"hitLog.log" },
      "formatHistory": "<textformat leading='-5' tabstops='[30,39,69,78]'>{{dmg-player%4.4d}}<tab>|<tab><font color='{{c:dmg-kind}}'>{{dmg%4.4d}}</font><tab>|<tab>{{vtype}} {{name%.15s~..}}{{alive? |{{blownup?<font face='NDO' size='16'> &#x0048;</font>|<font face='NDO' size='15'> &#x0047;</font>}}}}</textformat>"
    },
    "logBackground": {
      "$ref": { "path":"hitLog.log" },
      "formatHistory": ""
    },
    "logAltBackground": {
      "$ref": { "path":"hitLog.log" },
      "formatHistory": ""
    }
  }
}