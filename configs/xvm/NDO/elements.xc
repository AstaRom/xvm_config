{
  "elements": [
    {
      "$delay": 100,

      // debugPanel

      "debugPanel": {
        "y": 0 
      },

      // battleTimer

      "battleTimer": {
        "$delay": 1000,
        "y": 10,
        "background": {
          "visible": false
        },
        "displayCritical": {
          //"dotsTF": {
          //  "text": ":",
          //  "$textFormat": { "size": 20, "font": "$TitleFont", "color": "0xFCFCFC", "align": "center" }
          //},
          "secondsTF": {
            "y": 2,
            "$textFormat": { "size": 20, "font": "$TitleFont", "color": "0xFCFCFC", "align": "left" }
          },
          "minutesTF": {
            "x": -1,
            "y": 2,
            "$textFormat": { "size": 20, "font": "$TitleFont", "color": "0xFCFCFC", "align": "right" }
          }
        },
        "displayNormal": {
          //"dotsTF": {
          //  "text": ":",
          //  "$textFormat": { "size": 20, "font": "$TitleFont", "color": "0xFCFCFC", "align": "center" }
          //},
          "secondsTF": {
            "y": 2,
            "$textFormat": { "size": 20, "font": "$TitleFont", "color": "0xFCFCFC", "align": "left" }
          },
          "minutesTF": {
            "x": -1,
            "y": 2,
            "$textFormat": { "size": 20, "font": "$TitleFont", "color": "0xFCFCFC", "align": "right" }
          }
        }
      },

      // prebattleTimer

      "prebattleTimer": {
        "visible": false
      },
      
      // playersPanel

      "playersPanel": {
        "listLeft": {
          "y": 50
        },
        "listRight": {
          "y": 50
        },
        "panelSwitch": {
          "y": 24
        }
      },

      // endWarningPanel

      "endWarningPanel": {
        "y": 45,     
        "timer": {
          "timeText": {
            "visible": true
          },
          "infoText": {
            "visible": true
          }
        },
        "background": {
          "visible": true
        }
      },

      // fragCorrelationBar

      "fragCorrelationBar": {
        "teamFragsSeparatorField": {
          "y": -2
        }
      }
    }
  ]
}