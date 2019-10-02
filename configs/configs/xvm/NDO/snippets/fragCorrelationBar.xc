{
	"$delay": 100,
	
	"fragCorrelationBar": {
		"_alpha": 100,
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
}