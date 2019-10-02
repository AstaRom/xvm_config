{
  "elements": [
    {
      "$delay": 100,

      // debugPanel
			
      "debugPanel": {
        "_x": "debugPanel._x",
        "_y": "debugPanel._y - 2"	 
      },

      // playersPanel
			
      "leftPanel": {
        "_x": "leftPanel._x",
        "_y": "leftPanel._y - 16"
      },
      "rightPanel": {
        "_x": "rightPanel._x",
        "_y": "rightPanel._y - 16"
      },
      "switcher_mc": {
        "_x": "switcher_mc._x - 1",
        "_y": "switcher_mc._y - 13"
      },
			
      // sixthSenseDuration
			
      "sixthSenseDuration": 3000,
			
      // sixthSenseIndicator
			
      "sixthSenseIndicator": {
        "_x": "sixthSenseIndicator._x",
        "_y": "sixthSenseIndicator._y"
      },
			
      // teamBasesPanel

      "teamBasesPanel": {
        "_x": "teamBasesPanel._x",
        "_y": "teamBasesPanel._y + 20"
      },

      // vehicleMessagesPanel

      "vehicleMessagesPanel": {
        "visible": false,
        "_alpha": 0
      },

      // timerBig
	
      "timerBig": {
        "visible": false,
        "_alpha": 0
      },

      // minimap

      "minimap": {
        "_alpha": "minimap._alpha",
        "rowA": { "textColor": "0x7F7D6A", "_alpha": 100 },
        "rowB": { "textColor": "0x7F7D6A", "_alpha": 100 },
        "rowC": { "textColor": "0x7F7D6A", "_alpha": 100 },
        "rowD": { "textColor": "0x7F7D6A", "_alpha": 100 },
        "rowE": { "textColor": "0x7F7D6A", "_alpha": 100 },
        "rowF": { "textColor": "0x7F7D6A", "_alpha": 100 },
        "rowG": { "textColor": "0x7F7D6A", "_alpha": 100 },
        "rowH": { "textColor": "0x7F7D6A", "_alpha": 100 },
        "rowJ": { "textColor": "0x7F7D6A", "_alpha": 100 },
        "rowK": { "textColor": "0x7F7D6A", "_alpha": 100 },
        "colsNames": { "textColor": "0x7F7D6A", "_alpha": 100 }
      },
			
      // fragCorrelationBar
			
      "fragCorrelationBar": {
        "m_alliedTeamFragsTF": {
          "_x": "fragCorrelationBar.m_alliedTeamFragsTF._x",
          "_y": "fragCorrelationBar.m_alliedTeamFragsTF._y"
        },
        "m_enemyTeamFragsTF": {
          "_x": "fragCorrelationBar.m_enemyTeamFragsTF._x",
          "_y": "fragCorrelationBar.m_enemyTeamFragsTF._y"
        },
        "indicator": {
          "_x": "fragCorrelationBar.indicator._x",
          "_y": "fragCorrelationBar.indicator._y - 1"
        },
        "alliedMarkers": {
          "_x": "fragCorrelationBar.alliedMarkers._x",
          "_y": "fragCorrelationBar.alliedMarkers._y + 2"
        },
        "enemyMarkers": {
          "_x": "fragCorrelationBar.enemyMarkers._x",
          "_y": "fragCorrelationBar.enemyMarkers._y + 2"
        }
      }
    },
    {
      "$delay": 1000,

      // battleTimer

      "battleTimer": {
        "main": {
          "_x": "battleTimer.main._x",
          "_y": "battleTimer.main._y + 10",
          "highlightedDots": {
            "_x": "battleTimer.main.highlightedDots._x",
            "_y": "battleTimer.main.highlightedDots._y - 1",
            "_height": 50,
            "_width": 25,
            "text": ":",
            "$textFormat": { "size": 20, "font": "$TitleFont", "color": "0xFCFCFC", "align": "center" }
          },
          "highlightedSeconds": {
            "_x": "battleTimer.main.highlightedSeconds._x",
            "_y": "battleTimer.main.highlightedSeconds._y",
            "_height": 50,
            "_width": 25,
            "$textFormat": { "size": 20, "font": "$TitleFont", "color": "0xFCFCFC", "align": "left" }
          },
          "highlightedMinutes": {
            "_x": "battleTimer.main.highlightedMinutes._x",
            "_y": "battleTimer.main.highlightedMinutes._y",
            "_height": 50,
            "_width": 25,
            "$textFormat": { "size": 20, "font": "$TitleFont", "color": "0xFCFCFC", "align": "right" }
          },
          "mcBg": {
            "_x": "battleTimer.main.mcBg._x",
            "_y": "battleTimer.main.mcBg._y",
            "_alpha": 75
          },
          "dots": {
            "_x": "battleTimer.main.dots._x",
            "_y": "battleTimer.main.dots._y - 1",
            "_height": 50,
            "_width": 25,
            "text": ":",
            "$textFormat": { "size": 20, "font": "$TitleFont", "color": "0xFCFCFC", "align": "center" }
          },
          "seconds": {
            "_x": "battleTimer.main.seconds._x",
            "_y": "battleTimer.main.seconds._y",
            "_height": 50,
            "_width": 25,
            "$textFormat": { "size": 20, "font": "$TitleFont", "color": "0xFCFCFC", "align": "left" }
          },
          "minutes": {
            "_x": "battleTimer.main.minutes._x",
            "_y": "battleTimer.main.minutes._y",
            "_height": 50,
            "_width": 25,
            "$textFormat": { "size": 20, "font": "$TitleFont", "color": "0xFCFCFC", "align": "right" }
          }
        }
      },
      
      // endWarningPanel
      
      "endWarningPanel": {
        "_x": "endWarningPanel._x",
        "_y": "endWarningPanel._y + 15",
        "instance": {
          "_x": "endWarningPanel.instance._x",
          "_y": "endWarningPanel.instance._y",
          "timer": {
            "_alpha": 100,
            "_x": "endWarningPanel.instance.timer._x",
            "_y": "endWarningPanel.instance.timer._y",
            "infoText": {
              "_alpha": 0
            },
            "timeText": {
              "_x": "endWarningPanel.instance.timer.timeText._x + 35",
              "_y": "endWarningPanel.instance.timer.timeText._y - 8"
            }
          },
          "bg": {
            "_alpha": 100
          }
        }
      }
    }
  ]
}