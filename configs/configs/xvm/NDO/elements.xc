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
        "_x": "battleTimer._x",
        "_y": "battleTimer._y + 10"
      }
    }
  ]
}