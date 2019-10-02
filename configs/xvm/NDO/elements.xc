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
        "y": -15,
        "listLeft": {
          "inviteReceivedIndicator": {
            "inviteIcon": {
              "visible": false
            },
            "inviteTF": {
              "visible": false
            }
          }
        },
        "listRight": {
          "inviteReceivedIndicator": {
            "inviteIcon": {
              "visible": false
            },
            "inviteTF": {
              "visible": false
            }
          }
        },
        "panelSwitch": {
          "y": 40
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