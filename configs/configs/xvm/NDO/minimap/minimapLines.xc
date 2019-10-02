{
  "def": {
    "vehicle": { "enabled": true, "inmeters": true, "color": "0x60FF00" },
    "camera": { "enabled": true, "inmeters": true, "color": "0xFFCC66" },
    "dot": { "enabled": true, "inmeters": true, "color": "0xFFCC66" },
    "traverseAngle": { "enabled": true, "inmeters": true, "color": "0xCCCCCC" }
  },
  "lines": {
	 "enabled": true,
	 "vehicle": [],
	 "camera": [
		 { "$ref": { "path": "def.camera" }, "from": 50, "to": 2000, "thickness": 0.7, "alpha": 35 }
	 ],
	 "traverseAngle": [
		 { "$ref": { "path": "def.traverseAngle" }, "from": 50, "to": 2000, "thickness": 0.7, "alpha": 35 }
	 ]
	}
}