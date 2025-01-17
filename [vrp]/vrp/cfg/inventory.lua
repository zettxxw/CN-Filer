local cfg = {}

cfg.inventory_weight_per_strength = 10 -- weight for an user inventory per strength level (no unit, but thinking in "kg" is a good norm)

-- default chest weight for vehicle trunks
cfg.default_vehicle_chest_weight = 50

-- define vehicle chest weight by model in lower case
cfg.vehicle_chest_weights = {
-- lastbiler
	["minivan2"] = 100,
	["slamvan3"] = 150,
	["tiptruck"] = 350,
	["guardian"] = 200,
	["cog552"] = 350,
	["xls2"] = 350,
	["baller5"] = 350,
	["bcpd6"] = 100,
	["bcpd7"] = 100,
	["bcpd10"] = 100,
	["bcpd10hp"] = 100,
	["eas350ep"] = 100,
	["fibp62"] = 100,
	["gbvanu"] = 100,
	["ksrs2018u"] = 100,
	["raidenp"] = 100,
	["uo2018u"] = 100,
	["schafter6"] = 350,
	["riot"] = 1000,
	["rebel2"] = 100,
	["scrap"] = 300,
	["speedo"] = 1000,
	["rumpof"] = 1000,
	["brickade"] = 50000,
	["titan"] = 50000,
	["cargobob2"] = 30000,
	["seasparrow"] = 2500,
	["dinghy4"] = 1000,
	["cuban800"] = 5000,
	["stockade"] = 350,
	["rumpo"] = 200,
	["rumpog"] = 200,
	["rumpo2"] = 100,
	["rumpo3"] = 200,
	["minivan"] = 100,
	["moonbeam2"] = 100,
	["speedo4"] = 100,
	["surfer"] = 100,
	["FBI2"] = 100,
	["burrito"] = 100,
	["bf400"] = 10,
	["akuma"] = 10,
	["sanchez"] = 10,
	["bati"] = 10,
	["dubsta"] = 100,
	["dubsta2"] = 100,
	["granger"] = 100,
	["yosemite"] = 100,
	["bobcatxl"] = 100,
	["journey"] = 100,
	["schafter3"] = 50,
	["kamacho"] = 100,
	["sandking"] = 100,
	["contender"] = 100,
	["riata"] = 100,
	["dubsta3"] = 100,
	["rebel"] = 100,
	["bison"] = 100,
	["burrito4"] = 100,
	["burrito"] = 100,
	["gburrito"] = 200,
	["youga"] = 200,
	["paradise"] = 100,
	["bmx"] = 0,
	["cruiser"] = 0,
	["fixter"] = 0,
	["Scorcher"] = 0,
	["tribike"] = 0,
	["tribike2"] = 0,
	["tribike3"] = 0,
	["gargoyle"] = 0,
	["youga2"] = 200,
	["pony"] = 200,
	["ponys"] = 200,
	["mule"] = 3500,
  ["swift2"] = 10000,
  ["avenger"] = 20000,
  ["tug"] = 20000,
  ["tula"] = 20000,
  ["buzzard2"] = 1000,
}

return cfg
