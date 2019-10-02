{
  "custom_texts": {
    "xvm-user": {
      "formatLeft": "<font face='NDO' size='{{xvm-stat?16|0}}' color='{{.custom_texts.xvm-user.color}}'>{{.custom_texts.xvm-user.symbol-left}}</font>",
      "formatRight": "<font face='NDO' size='{{xvm-stat?16|0}}' color='{{.custom_texts.xvm-user.color}}'>{{.custom_texts.xvm-user.symbol-right}}</font>",
      "color": "{{x-enabled?#96FF00|{{xvm-user=on?#FF8800}}{{xvm-user=off?#AAAAAA}}}}",
      "symbol-left": "{{xvm-user=on?&#x004E;<font size='6'> </font>}}{{xvm-user=off?&#x004E;<font size='6'> </font>}}{{xvm-user=none?<font size='14'>  </font><font size='0'>.</font>}}",
      "symbol-right": "{{xvm-user=on?<font size='6'> </font>&#x004E;}}{{xvm-user=off?<font size='6'> </font>&#x004E;}}{{xvm-user=none?<font size='14'>  </font><font size='0'>.</font>}}"
    },
    "carousel": {
      "nation": {
        "ussr": "ussr_star",
        "germany": "germany_cross",
        "usa": "usa_star",
        "france": "french_rose",
        "uk": "britain_color",
        "china": "china_star",
        "japan": "japanese_sun",
        "czech": "czech_round"
      },
      "type": "{{v.type={{l10n:LT}}?lightTank}}{{v.type={{l10n:MT}}?mediumTank}}{{v.type={{l10n:HT}}?heavyTank}}{{v.type={{l10n:SPG}}?SPG}}{{v.type={{l10n:TD}}?AT-SPG}}"
    },
    "hitLog": {
      "vtype": {
        "LT": "<font face='NDO'>&#x0041;</font>",
        "MT": "<font face='NDO'>&#x0042;</font>",
        "HT": "<font face='NDO'>&#x0043;</font>",
        "SPG": "<font face='NDO'>&#x0045;</font>",
        "TD": "<font face='NDO'>&#x0044;</font>"
      }
    }      
  }
}