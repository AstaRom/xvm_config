{
  "elements": [
    {
      "$delay": 100,

      // battleTimer

      "battleTimer": {
        "$delay": 1,
        "y": 10,
        "shadow": {
          "visible": false,
          "alpha": 0
        },
        "background": {
          "visible": false,
          "alpha": 0
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
        },
        "otBackground": {
          "visible": false,
          "alpha": 0
        }
      },

      // debugPanel

      "debugPanel": {
        "y": 0
      },

      // endWarningPanel

      "endWarningPanel": {
        "y": 45
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
              "visible": false,
              "alpha": 0
            },
            "inviteTF": {
              "visible": false,
              "alpha": 0
            }
          }
        },
        "listRight": {
          "inviteReceivedIndicator": {
            "inviteIcon": {
              "visible": false,
              "alpha": 0
            },
            "inviteTF": {
              "visible": false,
              "alpha": 0
            }
          }
        },
        "panelSwitch": {
          "y": 40
        }
      },

      // prebattleTimer

      "prebattleTimer": {
        "visible": false,
        "alpha": 0,
        "infoContainer": {
          "visible": false,
          "alpha": 0
        }
      },

      // questProgressTopView

      "questProgressTopView": {
        "$interval": 25000,
        "y": "{{py:math_sub({{py:screen_height}}, 120)}}",
        "flag": {
          "visible": false,
          "alpha": 0
        },
        "shadow": {
          "width": 1000,
          "height": 200
        }
      },

      // questProgressTopAnimContainer

      "questProgressTopAnimContainer": {
        "visible": false,
        "alpha": 0
      },

      // superPlatoonPanel

      "superPlatoonPanel": {
        "platoonMembersPanel": {
          "platoonTitleTF": {
            "visible": false,
            "alpha": 0
          },
          "background": {
            "visible": false,
            "alpha": 0
          },
          "squadIcon": {
            "visible": false,
            "alpha": 0
          }
        },
        "y": 105
      }
    }
  ]
}