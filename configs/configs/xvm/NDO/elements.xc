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
        "_x": "teamBasesPanel._x + 0",
        "_y": "teamBasesPanel._y + 20"
      },

      // vehicleMessagesPanel

      "vehicleMessagesPanel": {
        "_alpha": 0,
        "visible": false
      },

      // timerBig
	
      "timerBig": {
        "_alpha": 0,
        "visible": false
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
          "_y": "fragCorrelationBar.m_alliedTeamFragsTF._y + 1"
        },
        "m_enemyTeamFragsTF": {
          "_x": "fragCorrelationBar.m_enemyTeamFragsTF._x",
          "_y": "fragCorrelationBar.m_enemyTeamFragsTF._y + 1"
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
        "_x": "battleTimer._x - 5",
        "_y": "battleTimer._y + 10",
        "main": {
          "minutesMC": {
            "_x": -60,
            "_height": 100,
            "_width": 80,
            "$textFormat": { "font": "$TitleFont","size": 20, "align": "right" }
          },
          "dotsMC": {
            "_x": -17,
            "_y": -1,
            "text": ":",
            "_height": 100,
            "_width": 80,
            "$textFormat": { "font": "$TitleFont","size": 20, "align": "center" }
          },
          "secondsMC": {
            "_x": 25,
            "_height": 100,
            "_width": 80,
            "$textFormat": { "font": "$TitleFont","size": 20, "align": "left" }
          }
        }
      }
    }
  ]
}