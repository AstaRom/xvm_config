{
  "elements": [
    {
      "$delay": 100,

      // battleTimer

      "battleTimer": {
        "$delay": 1,
        "y": 10,
        "shadow": {
          "visible": false
        },
        "background": {
          "visible": false
        },
        "secondsTF": {
          "y": 2,
          "$textFormat": { "font": "$TitleFont", "size": 20, "color": "0xFCFCFC", "align": "left" },
          "htmlText": "<TEXTFORMAT INDENT=\"0\" LEFTMARGIN=\"0\" RIGHTMARGIN=\"0\" LEADING=\"2\"><P ALIGN=\"LEFT\"><FONT FACE=\"$TitleFont\" SIZE=\"20\" COLOR=\"#FCFCFC\" KERNING=\"0\">00</FONT></P></TEXTFORMAT>"
        },
        "minutesTF": {
          "x": 131,
          "y": 2,
          "$textFormat": { "font": "$TitleFont", "size": 20, "color": "0xFCFCFC", "align": "right" },
          "htmlText": "<TEXTFORMAT INDENT=\"0\" LEFTMARGIN=\"0\" RIGHTMARGIN=\"0\" LEADING=\"2\"><P ALIGN=\"RIGHT\"><FONT FACE=\"$TitleFont\" SIZE=\"20\" COLOR=\"#FCFCFC\" KERNING=\"0\">00</FONT></P></TEXTFORMAT>"
        }
      },

      // debugPanel

      "debugPanel": {
        "y": 0
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
      },

      // hintPanel

      "hintPanel": {
        "visible": false,
        "alpha": 0
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
          "visible": true,
          "y": 40
        }
      },

      // prebattleTimer

      "prebattleTimer": {
        "visible": false,
        "alpha": 0,
        "qpInfoFlagContainer": {
          "visible": false
        }
      },

      // questProgressTopView

      "questProgressTopView": {
        "$interval": 25000,
        "visible": true,
        "y": "{{py:math_sub({{py:screen_height}}, 120)}}",
        "flag": {
          "visible": false
        },
        "shadow": {
          "visible": true,
          "width": 1000,
          "height": 200
        }
      },

      // questProgressTopAnimContainer

      "questProgressTopAnimContainer": {
        "visible": false,
        "alpha": 0
      }
    }
  ]
}