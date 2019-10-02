{
	"$delay": 1000,

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