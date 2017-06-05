return {
	corsub = {
		acceleration = 2.03*1.25/45,
		activatewhenbuilt = true,
		autoheal = 2,
		brakerate = 2.03*1.25/450,
		buildcostenergy = 5600,
		buildcostmetal = 700,
		buildpic = "CORSUB.DDS",
		buildtime = 16500*0.9,
		canmove = true,
		category = "ALL UNDERWATER MOBILE WEAPON NOTLAND NOTAIR NOTHOVER SUBMARINE",
		collisionvolumeoffsets = "0 -4 0",
		collisionvolumescales = "35 17 50",
		collisionvolumetype = "box",
		corpse = "DEAD",
		description = "Low Velocity Torpedoes Submarine (Good vs Submarines)",
		explodeas = "smallExplosionGeneric",
		footprintx = 2,
		footprintz = 3,
		icontype = "sea",
		idleautoheal = 8,
		idletime = 900,
		maxdamage = 2000,
		maxvelocity = 2.03*1.25,
		maxreversevelocity = 1.015,
		minwaterdepth = 15,
		movementclass = "BOATSUBMARINE2X3",
		name = "Snake",
		nochasecategory = "VTOL",
		objectname = "CORSUB",
		seismicsignature = 0,
		selfdestructas = "smallExplosionGeneric",
		sightdistance = 1000,
		sonardistance = 750,
		turninplaceanglelimit = 140,
		turninplacespeedlimit = 1.518,
		turnrate = 298,
		upright = true,
		waterline = 30,
		customparams = {
			
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "2.76780700684 0.0 -0.0",
				collisionvolumescales = "24.2856140137 12.625 49.0312194824",
				collisionvolumetype = "Box",
				damage = 501,
				description = "Snake Wreckage",
				energy = 0,
				featuredead = "HEAP",
				footprintx = 2,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 350,
				object = "CORSUB_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 2016,
				description = "Snake Heap",
				energy = 0,
				footprintx = 4,
				footprintz = 4,
				height = 4,
				hitdensity = 100,
				metal = 175,
				object = "4X4B",
                collisionvolumescales = "85.0 14.0 6.0",
                collisionvolumetype = "cylY",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "sucormov",
			},
			select = {
				[1] = "sucorsel",
			},
		},
		weapondefs = {
			cor_lowveltorpedo = {
				areaofeffect = 16,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				collidefriendly = false,
				craterareaofeffect = 0,
				flighttime = 10,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-medium",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				model = "torpedo",
				name = "AdvancedTorpedo",
				noselfdamage = true,
				range = 700,
				reloadtime = 8,
				soundhit = "xplodep1",
				soundstart = "torpedo1",
				startvelocity = 40,
				tolerance = 2000,
				tracks = false,
				turnrate = 12000,
				turret = true,	
				waterweapon = true,
				weaponacceleration = 40,
				weapontimer = 3,
				weapontype = "TorpedoLauncher",
				weaponvelocity = 80,
				damage = {
					default = 540,
					lightsubmarines = 540,
					heavysubmarines = 540,
					scouts = 27000,
					corvettes = 13500,
					destroyers = 270,
					cruisers = 270,
					carriers = 270,
					battleships = 270,
					flagships = 270,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "HOVER NOTSHIP CORVETTE LIGHTBOAT CAPITALSHIP",
				def = "COR_LOWVELTORPEDO",
				onlytargetcategory = "NOTHOVER",
			},
		},
	},
}
