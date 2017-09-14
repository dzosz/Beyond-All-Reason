-- lrpc_expl
-- mini_nuclear_expl
-- med_unit_expl
-- plasma_expl
-- small_unit_expl
-- neutron_expl
-- big_unit_expl
-- flame
-- med_suicide_expl
-- stunner_expl
-- flak_burst_expl
-- nuke_expl
-- pyro_suicide_expl
-- huge_unit_expl
-- crawl_unit_expl
-- crawl_suicide_expl
-- big_suicide_expl
-- neutron_explosion
-- small_suicide_expl
-- pyro_unit_expl

return {
  ["lrpc_expl"] = {
    usedefaultexplosions = false,
    groundflash = {
      circlealpha        = .5,
      circlegrowth       = 20,
      flashalpha         = 1,
      flashsize          = 300,
      ttl                = 10,
      color = {
        [1]  = 0.69999998807907,
        [2]  = 0.69999998807907,
        [3]  = 0.69999998807907,
      },
    },
  },

  ["mini_nuclear_expl"] = {
    usedefaultexplosions = false,
    groundflash = {
      circlealpha        = 1,
      circlegrowth       = 35,
      flashalpha         = 1,
      flashsize          = 600,
      ttl                = 16,
      color = {
        [1]  = 0.80000001192093,
        [2]  = 0.80000001192093,
        [3]  = 0.60000002384186,
      },
    },
  },

  ["med_unit_expl"] = {
    dirt = {
      count              = 4,
      ground             = true,
      properties = {
        alphafalloff       = 2,
                color              = [[0.1, 0.1, 0.05]],
        pos                = [[r-10 r10, 0, r-10 r10]],
        size               = 40,
        speed              = [[r1.5 r-1.5, 2, r1.5 r-1.5]],
      },
    },
    explosionsphere = {
      air                = true,
      class              = [[CSpherePartSpawner]],
      count              = 1,
      ground             = true,
      properties = {
        alpha              = 0.4,
                color              = [[1, 0.3, 0.5]],
        expansionspeed     = [[10 r3]],
        ttl                = 18,
      },
    },
    explosionspikes = {
      air                = true,
      class              = [[explspike]],
      count              = 7,
      ground             = true,
      water              = true,
      properties = {
        alpha              = 1,
        alphadecay         = 0.19,
                color              = [[1, 0.3, 0.5]],
        dir                = [[-45 r90,-45 r90,-45 r90]],
        length             = 0.5,
        width              = 8,
      },
    },
    groundflash = {
      air                = true,
            circlealpha        = 0.7,
      circlegrowth       = 10,
      flashalpha         = 0.9,
      flashsize          = 150,
      ground             = true,
      ttl                = 18,
      water              = true,
      color = {
        [1]  = 1,
        [2]  = 0.30000001192093,
        [3]  = 0.5,
      },
    },
    poof01 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.2,
        colormap           = [[1.0 1.0 1.0 0.04   0.5 0.0 0.5 0.01  0.1 0.1 0.1 0.01]],
        directional        = false,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.005, 0]],
        numparticles       = 40,
        particlelife       = 10,
        particlelifespread = 16,
        particlesize       = 15,
        particlesizespread = 0,
        particlespeed      = 19,
        particlespeedspread = 10,
        pos                = [[0, 2, 0]],
        sizegrowth         = 0.8,
        sizemod            = 1.0,
        texture            = [[randomdots]],
        useairlos          = false,
      },
    },
    pop0 = {
      air                = true,
      class              = [[heatcloud]],
      count              = 2,
      ground             = true,
      water              = true,
      properties = {
                heat               = 10,
        heatfalloff        = 1.7,
        maxheat            = 15,
        pos                = [[0, 5, 0]],
        size               = 40,
        sizegrowth         = 15,
        speed              = [[0, 0, 0]],
        texture            = [[pinknovaexplo]],
      },
    },
    pop1 = {
      air                = true,
      class              = [[heatcloud]],
      count              = 3,
      ground             = true,
      water              = true,
      properties = {
                heat               = 10,
        heatfalloff        = 1,
        maxheat            = 15,
        pos                = [[r-3 r3, 5, r-3 r3]],
        size               = 2,
        sizegrowth         = 12,
        speed              = [[0, 1, 0]],
        texture            = [[purpleexplo]],
      },
    },
  },

  ["plasma_expl"] = {
    usedefaultexplosions = false,
    dirta = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      properties = {
        airdrag            = 0.7,
        colormap           = [[0.1 0.1 0.1 1.0 0.5 0.5 0.5 1.0      0 0 0 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 8,
        particlelife       = 25,
        particlelifespread = 10,
        particlesize       = 15,
        particlesizespread = 5,
        particlespeed      = 1,
        particlespeedspread = 10,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1.0,
        texture            = [[dirt]],
        useairlos          = true,
      },
    },
    dirtg = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.7,
        colormap           = [[0.1 0.1 0.1 1.0 0.5 0.4 0.3 1.0      0 0 0 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 10,
        particlelife       = 25,
        particlelifespread = 10,
        particlesize       = 15,
        particlesizespread = 5,
        particlespeed      = 1,
        particlespeedspread = 10,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1.0,
        texture            = [[dirt]],
        useairlos          = true,
      },
    },
    dirtw1 = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      water              = true,
      properties = {
        airdrag            = 0.9,
        colormap           = [[0.9 0.9 0.9 1.0 0.5 0.5 0.9 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.2, 0]],
        numparticles       = 18,
        particlelife       = 25,
        particlelifespread = 10,
        particlesize       = 10,
        particlesizespread = 5,
        particlespeed      = 1,
        particlespeedspread = 10,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1.0,
        texture            = [[randomdots]],
        useairlos          = true,
      },
    },
    dirtw2 = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      water              = true,
      properties = {
        airdrag            = 0.7,
        colormap           = [[1.0 1.0 1.0 1.0 0.5 0.5 0.8 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 5,
        particlelife       = 15,
        particlelifespread = 10,
        particlesize       = 15,
        particlesizespread = 5,
        particlespeed      = 1,
        particlespeedspread = 10,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1.0,
        texture            = [[dirt]],
        useairlos          = true,
      },
    },
    groundflash = {
      air                = true,
            circlealpha        = 0.6,
      circlegrowth       = 6,
      flashalpha         = 0.9,
      flashsize          = 120,
      ground             = true,
      ttl                = 13,
      water              = true,
      color = {
        [1]  = 1,
        [2]  = 0.5,
        [3]  = 0,
      },
    },
    poof = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        colormap           = [[0.9 0.8 0.7 0.04   0.9 0.5 0.2 0.01  0.5 0.1 0.1 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.01, 0]],
        numparticles       = 8,
        particlelife       = 10,
        particlelifespread = 0,
        particlesize       = 20,
        particlesizespread = 0,
        particlespeed      = 10,
        particlespeedspread = 5,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 1.0,
        texture            = [[flashside1]],
        useairlos          = false,
      },
    },
    pop1 = {
      air                = true,
      class              = [[heatcloud]],
      count              = 2,
      ground             = true,
      water              = true,
      properties = {
                heat               = 10,
        heatfalloff        = 1.1,
        maxheat            = 15,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1,
        sizegrowth         = 15,
        speed              = [[0, 1 0, 0]],
        texture            = [[uglynovaexplo]],
      },
    },
    pop2 = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
                heat               = 10,
        heatfalloff        = 1.3,
        maxheat            = 15,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 3,
        sizegrowth         = 25,
        speed              = [[0, 1 0, 0]],
        texture            = [[flare]],
      },
    },
  },

  ["small_unit_expl"] = {
    usedefaultexplosions = false,
    dirt = {
      count              = 4,
      ground             = true,
      properties = {
        alphafalloff       = 2,
                color              = [[0.2, 0.1, 0.05]],
        pos                = [[r-10 r10, 0, r-10 r10]],
        size               = 20,
        speed              = [[r1.5 r-1.5, 2, r1.5 r-1.5]],
      },
    },
    groundflash = {
      circlealpha        = .3,
      circlegrowth       = 12,
      flashalpha         = 1,
      flashsize          = 270,
      ttl                = 16,
      color = {
        [1]  = 0,
        [2]  = 0.5,
        [3]  = 1,
      },
    },
    poof00 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.8,
        colormap           = [[1.0 1.0 1.0 0.04   0.9 0.5 0.2 0.01  0.8 0.1 0.1 0.01]],
        directional        = false,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.05, 0]],
        numparticles       = 16,
        particlelife       = 5,
        particlelifespread = 16,
        particlesize       = 25,
        particlesizespread = 0,
        particlespeed      = 10,
        particlespeedspread = 3,
        pos                = [[0, 2, 0]],
        sizegrowth         = 0.5,
        sizemod            = 1,
        texture            = [[randomdots]],
        useairlos          = false,
      },
    },
    pop1 = {
      air                = true,
      class              = [[heatcloud]],
      count              = 2,
      ground             = true,
      water              = true,
      properties = {
                heat               = 10,
        heatfalloff        = 1,
        maxheat            = 15,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1,
        sizegrowth         = 24,
        speed              = [[0, 1 0, 0]],
        texture            = [[redexplo]],
      },
    },
    pop2 = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
                heat               = 10,
        heatfalloff        = 1.1,
        maxheat            = 15,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 3,
        sizegrowth         = 25,
        speed              = [[0, 1 0, 0]],
        texture            = [[flare]],
      },
    },
  },

  ["neutron_expl"] = {
    ground             = true,
    usedefaultexplosions = false,
    water              = true,
    groundflash = {
            circlealpha        = 1,
      circlegrowth       = 2.4,
      flashalpha         = 1,
      flashsize          = 100,
      ttl                = 250,
      color = {
        [1]  = 0.20000000298023,
        [2]  = 0.20000000298023,
        [3]  = 0.60000002384186,
      },
    },
  },

  ["big_unit_expl"] = {
    usedefaultexplosions = false,
    dirta = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      properties = {
        airdrag            = 0.7,
        colormap           = [[0.1 0.1 0.1 1.0 0.5 0.5 0.5 1.0      0 0 0 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 8,
        particlelife       = 25,
        particlelifespread = 10,
        particlesize       = 15,
        particlesizespread = 5,
        particlespeed      = 1,
        particlespeedspread = 15,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1.0,
        texture            = [[dirt]],
        useairlos          = true,
      },
    },
    dirtg = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.7,
        colormap           = [[0.1 0.1 0.1 1.0 0.5 0.4 0.3 1.0      0 0 0 0.01]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 20,
        particlelife       = 25,
        particlelifespread = 5,
        particlesize       = 15,
        particlesizespread = 5,
        particlespeed      = 10,
        particlespeedspread = 1,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1.0,
        texture            = [[dirt]],
        useairlos          = true,
      },
    },
    dirtw1 = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      water              = true,
      properties = {
        airdrag            = 0.9,
        colormap           = [[0.9 0.9 0.9 1.0 0.5 0.5 0.9 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.2, 0]],
        numparticles       = 18,
        particlelife       = 25,
        particlelifespread = 10,
        particlesize       = 10,
        particlesizespread = 5,
        particlespeed      = 1,
        particlespeedspread = 15,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1.0,
        texture            = [[randomdots]],
        useairlos          = true,
      },
    },
    dirtw2 = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      water              = true,
      properties = {
        airdrag            = 0.7,
        colormap           = [[1.0 1.0 1.0 1.0 0.5 0.5 0.8 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 5,
        particlelife       = 15,
        particlelifespread = 10,
        particlesize       = 15,
        particlesizespread = 5,
        particlespeed      = 1,
        particlespeedspread = 15,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1.0,
        texture            = [[dirt]],
        useairlos          = true,
      },
    },
    groundflash = {
      circlealpha        = .4,
      circlegrowth       = 11,
      flashalpha         = 1,
      flashsize          = 450,
      ttl                = 26,
      color = {
        [1]  = 1,
        [2]  = 0,
        [3]  = 0,
      },
    },
    poof1 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        colormap           = [[0.9 0.8 0.7 0.03   0.9 0.5 0.2 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.01, 0]],
        numparticles       = 8,
        particlelife       = 8,
        particlelifespread = 0,
        particlesize       = 25,
        particlesizespread = 0,
        particlespeed      = 10,
        particlespeedspread = 5,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 1.0,
        texture            = [[flashside2]],
        useairlos          = false,
      },
    },
    pop1 = {
      air                = true,
      class              = [[heatcloud]],
      count              = 2,
      ground             = true,
      water              = true,
      properties = {
                heat               = 10,
        heatfalloff        = 1.1,
        maxheat            = 15,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1,
        sizegrowth         = 20,
        speed              = [[0, 1 0, 0]],
        texture            = [[uglynovaexplo]],
      },
    },
    pop2 = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
                heat               = 10,
        heatfalloff        = 1.3,
        maxheat            = 15,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 3,
        sizegrowth         = 25,
        speed              = [[0, 1 0, 0]],
        texture            = [[flare]],
      },
    },
  },

  ["flame"] = {
    heatcloud = {
      air                = true,
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        heat               = 15,
        heatfalloff        = 1,
        maxheat            = 15,
        pos                = [[0, 0, 0]],
        size               = 1.25,
        sizegrowth         = 0.5,
        sizemod            = 0,
        sizemodmod         = 0,
        speed              = [[0, 2, 0]],
        texture            = [[ExplodeHeat]],
      },
    },
    smoke = {
      air                = true,
      count              = 3,
      ground             = true,
      water              = true,
      properties = {
        agespeed           = 0.03,
        color              = 0.1,
        pos                = [[5 r-5, 5 r-5, 5 r-5]],
        size               = 2.5,
        sizeexpansion      = 0.5,
        sizegrowth         = 0.5,
        speed              = [[0, 2 r0.5, 0]],
        startsize          = 0.75,
      },
    },
  },

  ["med_suicide_expl"] = {
    usedefaultexplosions = false,
    groundflash = {
      circlealpha        = .5,
      circlegrowth       = 12,
      flashalpha         = 1,
      flashsize          = 350,
      ttl                = 24,
      color = {
        [1]  = 1,
        [2]  = 0.30000001192093,
        [3]  = 0.5,
      },
    },
  },

  ["stunner_expl"] = {
    ground             = true,
    usedefaultexplosions = false,
    water              = true,
    groundflash = {
            circlealpha        = 1,
      circlegrowth       = 2.4,
      flashalpha         = 1,
      flashsize          = 100,
      ttl                = 250,
      color = {
        [1]  = 0.69999998807907,
        [2]  = 0.69999998807907,
        [3]  = 1,
      },
    },
  },

  ["flak_burst_expl"] = {
    usedefaultexplosions = false,
    dirt = {
      count              = 4,
      ground             = true,
      properties = {
        alphafalloff       = 2,
                color              = [[0.2, 0.1, 0.05]],
        pos                = [[r-10 r10, 0, r-10 r10]],
        size               = 20,
        speed              = [[r1.5 r-1.5, 2, r1.5 r-1.5]],
      },
    },
    groundflash = {
      air                = true,
            circlealpha        = 0.6,
      circlegrowth       = 6,
      flashalpha         = 0.9,
      flashsize          = 120,
      ground             = true,
      ttl                = 13,
      water              = true,
      color = {
        [1]  = 1,
        [2]  = 0.5,
        [3]  = 0,
      },
    },
    poof01 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.8,
        colormap           = [[1.0 1.0 1.0 0.04   0.9 0.5 0.2 0.01  0.8 0.1 0.1 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.05, 0]],
        numparticles       = 8,
        particlelife       = 10,
        particlelifespread = 5,
        particlesize       = 20,
        particlesizespread = 0,
        particlespeed      = 5,
        particlespeedspread = 5,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 1.0,
        texture            = [[flashside1]],
        useairlos          = false,
      },
    },
    pop1 = {
      air                = true,
      class              = [[heatcloud]],
      count              = 2,
      ground             = true,
      water              = true,
      properties = {
                heat               = 10,
        heatfalloff        = 1.1,
        maxheat            = 15,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1,
        sizegrowth         = 15,
        speed              = [[0, 1 0, 0]],
        texture            = [[uglynovaexplo]],
      },
    },
    pop2 = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
                heat               = 10,
        heatfalloff        = 1.3,
        maxheat            = 15,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 3,
        sizegrowth         = 25,
        speed              = [[0, 1 0, 0]],
        texture            = [[flare]],
      },
    },
  },

  ["nuke_expl"] = {
    ground             = true,
    usedefaultexplosions = false,
    water              = true,
    groundflash = {
            circlealpha        = 1,
      circlegrowth       = 10,
      flashalpha         = 1,
      flashsize          = 100,
      ttl                = 250,
      color = {
        [1]  = 1,
        [2]  = 0.40000000596046,
        [3]  = 0,
      },
    },
  },

  ["pyro_suicide_expl"] = {
    usedefaultexplosions = false,
    groundflash = {
      circlealpha        = 0,
      circlegrowth       = 0,
      flashalpha         = 1,
      flashsize          = 440,
      ttl                = 60,
      color = {
        [1]  = 1,
        [2]  = 0.80000001192093,
        [3]  = 0.30000001192093,
      },
    },
    heatcloud = {
      air                = true,
      count              = 32,
      ground             = true,
      water              = true,
      properties = {
        heat               = 40,
        heatfalloff        = .5,
        maxheat            = 40,
        pos                = [[-15 r30, r15, -15 r30]],
        size               = 30,
        speed              = [[.8 r-1.6, r1.6-.3, .8 r-1.6]],
      },
    },
  },

  ["huge_unit_expl"] = {
    usedefaultexplosions = false,
    dirta = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      properties = {
        airdrag            = 0.7,
        colormap           = [[0.1 0.1 0.1 1.0 0.5 0.5 0.5 1.0      0 0 0 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 8,
        particlelife       = 25,
        particlelifespread = 10,
        particlesize       = 15,
        particlesizespread = 5,
        particlespeed      = 1,
        particlespeedspread = 15,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1.0,
        texture            = [[dirt]],
        useairlos          = true,
      },
    },
    dirtg = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.7,
        colormap           = [[0.1 0.1 0.1 1.0 0.5 0.4 0.3 1.0      0 0 0 0.01]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 20,
        particlelife       = 25,
        particlelifespread = 5,
        particlesize       = 15,
        particlesizespread = 5,
        particlespeed      = 10,
        particlespeedspread = 1,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1.0,
        texture            = [[dirt]],
        useairlos          = true,
      },
    },
    dirtw1 = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      water              = true,
      properties = {
        airdrag            = 0.9,
        colormap           = [[0.9 0.9 0.9 1.0 0.5 0.5 0.9 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.2, 0]],
        numparticles       = 18,
        particlelife       = 25,
        particlelifespread = 10,
        particlesize       = 10,
        particlesizespread = 5,
        particlespeed      = 1,
        particlespeedspread = 15,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1.0,
        texture            = [[randomdots]],
        useairlos          = true,
      },
    },
    dirtw2 = {
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      water              = true,
      properties = {
        airdrag            = 0.7,
        colormap           = [[1.0 1.0 1.0 1.0 0.5 0.5 0.8 0.0]],
        directional        = true,
        emitrot            = 90,
        emitrotspread      = 0,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, 0, 0]],
        numparticles       = 5,
        particlelife       = 15,
        particlelifespread = 10,
        particlesize       = 15,
        particlesizespread = 5,
        particlespeed      = 1,
        particlespeedspread = 15,
        pos                = [[r-1 r1, 1, r-1 r1]],
        sizegrowth         = 1.2,
        sizemod            = 1.0,
        texture            = [[dirt]],
        useairlos          = true,
      },
    },
    groundflash = {
      circlealpha        = .4,
      circlegrowth       = 11,
      flashalpha         = 1,
      flashsize          = 450,
      ttl                = 26,
      color = {
        [1]  = 1,
        [2]  = 0,
        [3]  = 0,
      },
    },
    poof1 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.8,
        colormap           = [[0.9 0.8 0.7 0.03   0.9 0.5 0.2 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.01, 0]],
        numparticles       = 8,
        particlelife       = 8,
        particlelifespread = 0,
        particlesize       = 25,
        particlesizespread = 0,
        particlespeed      = 10,
        particlespeedspread = 5,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 1.0,
        texture            = [[flashside2]],
        useairlos          = false,
      },
    },
    pop1 = {
      air                = true,
      class              = [[heatcloud]],
      count              = 2,
      ground             = true,
      water              = true,
      properties = {
                heat               = 10,
        heatfalloff        = 1.1,
        maxheat            = 15,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 1,
        sizegrowth         = 20,
        speed              = [[0, 1 0, 0]],
        texture            = [[uglynovaexplo]],
      },
    },
    pop2 = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
                heat               = 10,
        heatfalloff        = 1.3,
        maxheat            = 15,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 3,
        sizegrowth         = 25,
        speed              = [[0, 1 0, 0]],
        texture            = [[flare]],
      },
    },
  },

  ["crawl_unit_expl"] = {
    usedefaultexplosions = false,
    groundflash = {
      circlealpha        = .3,
      circlegrowth       = 10,
      flashalpha         = 1,
      flashsize          = 500,
      ttl                = 26,
      color = {
        [1]  = 0.69999998807907,
        [2]  = 0.69999998807907,
        [3]  = 0.69999998807907,
      },
    },
  },

  ["crawl_suicide_expl"] = {
    usedefaultexplosions = false,
    groundflash = {
      circlealpha        = .5,
      circlegrowth       = 10,
      flashalpha         = 1,
      flashsize          = 700,
      ttl                = 30,
      color = {
        [1]  = 0.69999998807907,
        [2]  = 0.69999998807907,
        [3]  = 0.69999998807907,
      },
    },
  },

  ["big_suicide_expl"] = {
    usedefaultexplosions = false,
    groundflash = {
      circlealpha        = .5,
      circlegrowth       = 10,
      flashalpha         = 1,
      flashsize          = 400,
      ttl                = 28,
      color = {
        [1]  = 1,
        [2]  = 0.30000001192093,
        [3]  = 0,
      },
    },
  },

  ["neutron_explosion"] = {
    electric1 = {
      air                = true,
      class              = [[heatcloud]],
      count              = 3,
      ground             = true,
      water              = true,
      properties = {
                heat               = 10,
        heatfalloff        = 1.1,
        maxheat            = 15,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 3,
        sizegrowth         = 45,
        speed              = [[0, 1 0, 0]],
        texture            = [[electnovaexplo]],
      },
    },
    electric2 = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
                heat               = 10,
        heatfalloff        = 1.3,
        maxheat            = 15,
        pos                = [[r-2 r2, 5, r-2 r2]],
        size               = 9,
        sizegrowth         = 75,
        speed              = [[0, 0, 0]],
        texture            = [[flare]],
      },
    },
    electricarcs1 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 0.8,
        colormap           = [[1.0 1.0 1.0 0.04   0.2 0.5 0.9 0.01  0.1 0.5 0.7 0.01]],
        directional        = true,
        emitrot            = 45,
        emitrotspread      = 32,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.05, 0]],
        numparticles       = 16,
        particlelife       = 10,
        particlelifespread = 5,
        particlesize       = 20,
        particlesizespread = 0,
        particlespeed      = 21,
        particlespeedspread = 15,
        pos                = [[0, 2, 0]],
        sizegrowth         = 1,
        sizemod            = 1.0,
        texture            = [[lightening]],
        useairlos          = false,
      },
    },
    groundflash = {
      air                = true,
            circlealpha        = 1,
      circlegrowth       = 2.4,
      flashalpha         = 1,
      flashsize          = 100,
      ground             = true,
      ttl                = 250,
      water              = true,
      color = {
        [1]  = 0.40000000596046,
        [2]  = 0.40000000596046,
        [3]  = 0.60000002384186,
      },
    },
    smoke = {
      air                = true,
      count              = 8,
      ground             = true,
      water              = true,
      properties = {
        agespeed           = 0.01,
                color              = 0.1,
        pos                = [[r-60 r60, 24, r-60 r60]],
        size               = 50,
        sizeexpansion      = 0.6,
        sizegrowth         = 15,
        speed              = [[r-3 r3, 1 r2.3, r-3 r3]],
        startsize          = 10,
      },
    },
    whiteglow = {
      air                = true,
      class              = [[heatcloud]],
      count              = 2,
      ground             = true,
      water              = true,
      properties = {
                heat               = 10,
        heatfalloff        = 1.1,
        maxheat            = 15,
        pos                = [[0, 5, 0]],
        size               = 30,
        sizegrowth         = 75,
        speed              = [[0, 1 0, 0]],
        texture            = [[laserend]],
      },
    },
  },

  ["small_suicide_expl"] = {
    usedefaultexplosions = false,
    groundflash = {
      circlealpha        = .5,
      circlegrowth       = 12,
      flashalpha         = 1,
      flashsize          = 300,
      ttl                = 20,
      color = {
        [1]  = 1,
        [2]  = 0.89999997615814,
        [3]  = 0.80000001192093,
      },
    },
  },

  ["pyro_unit_expl"] = {
    usedefaultexplosions = false,
    groundflash = {
      circlealpha        = 0,
      circlegrowth       = 0,
      flashalpha         = 1,
      flashsize          = 300,
      ttl                = 25,
      color = {
        [1]  = 1,
        [2]  = 0.80000001192093,
        [3]  = 0.30000001192093,
      },
    },
    heatcloud = {
      air                = true,
      count              = 10,
      ground             = true,
      water              = true,
      properties = {
        heat               = 22,
        heatfalloff        = .5,
        maxheat            = 22,
        pos                = [[-15 r30, r15, -15 r30]],
        size               = 25,
        speed              = [[.8 r-1.6, r1.6-.3, .8 r-1.6]],
      },
    },
  },

}

