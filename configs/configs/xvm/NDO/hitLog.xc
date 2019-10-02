{
  "hitLog": {
    "visible": true,
    "hpLeft": {
      "enabled": true,
      "header": "<b><font color='#96FF00'>{{l10n:hpLeftTitle}}</font></b>",
      "format": "<b><textformat leading='-5' tabstops='[100,105,135,145]'><font size='19'>{{vtype}}</font> {{vehicle}}<tab><tab><font color='{{c:hp-ratio}}'>{{hp%4.4s}}</font><tab><tab>| <font color='#FFAA55'>{{name%.10s~..}}</font></textformat></b>"
    },
    "x": 5,
    "y": 425,
    "w": 500,
    "h": 1000,
    "lines": 10,
    "direction": "down",
    "groupHitsByPlayer": true,
    "insertOrder": "end",
    "deadMarker": "<font face='NDO' size='15'> &#x0047;</font>",
    "blowupMarker": "<font face='NDO' size='16'> &#x0048;</font>",
    "defaultHeader": "",
    "formatHeader":  "<b><font color='#96FF00'>{{l10n:Hits}}:</font> &#x00D7;{{n%2s}} - <font size='16' color='#FFAA55'>{{dmg-total}}</font></b>",
    "formatHistory": "<b><textformat leading='-5' tabstops='[35,45,80,90]'>{{dmg-player%4.4s}}<tab>|<tab><font color='{{c:dmg-kind}}'>{{dmg%4.4s}}</font><tab>|<tab><font size='19'>{{vtype}}</font> {{vehicle}}{{dead}}</textformat></b>",
    "shadow": {
      "alpha": 100,
      "color": "0x000000",
      "angle": 45,
      "distance": 0,
      "size": 2,
      "strength": 200
    }
  }
}