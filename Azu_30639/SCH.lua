local profile = gFunc.LoadFile('common/miniswap/miniswap.lua');

profile.Sets.Idle_Priority = {
    Main  = {
        { Name = "Earth Staff", Level = 51 },         -- PDT-20
        { Name = "Ash Pole +1", Level = 5 },          -- INT+3
        { Name = "Maple Wand +1", Level = 1 },
    },
    Sub   = {
            -- Wish: Lv75 Longbeard's Grip +0/1 [MDT-2/4 MEva+4/8 Refresh+0/1]
        { Name = "Neph. Grip", Level = 5 },          -- INT+1
        { Name = "Kupo Shield", Level = 1 },
    },
    Ammo = {
        { Name = "Talon Tathlum", Level = 50 },
        { Name = "Morion Tathlum", Level = 25 },
        { Name = "Happy Egg", Level = 1 },
    },
    Ear1 = {
        { Name = "Outlaw's Earring", Level = 50 },
    },
    Ear2 = {
        { Name = "Insomnia Earring", Level = 50 },
        { Name = "Dodge Earring", Level = 29 },
    },
    Head  = {
        { Name = "remove", Level = 59 },              -- No head because of Vermillion Cloak
        -- { Name = "Gambler's Chapeau", Level = 20 },   -- MP+20 INT+3
        { Name = "Garrison Sallet +1", Level = 20 },  -- Regen+1 while below lv.50
        { Name = "Traveler's Hat", Level = 6 },
        "Dream Hat +1",
    },
    Neck  = {
        { Name = "Radiant Lantern", Level = 60 },
        { Name = "Justice Badge", Level = 7 },
    },
    Body  = {
        { Name = "Vermillion Cloak", Level = 59 },       -- Refresh+1
        { Name = "Garrison Tunica +1", Level = 20 },     -- Refresh+1 while below lv.50
        { Name = "Druid's Robe", Level = 8 },
        "Kingdom Aketon", 
    },
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- MP+5 INT+2
        { Name = "Zealot's Mitts", Level = 11 },      -- MP+5 MND+3
        { Name = "Mitts +1", Level = 8 },
        "Dream Mittens +1",
    },
    Ring1 = {
        "Windurstian Ring",
    },
    Ring2 = {
        "Provenance Ring",
    },
    Back  = {
        { Name = "Tundra Mantle", Level = 39 },
        { Name = "Silver Obi", Level = 20 },
        { Name = "Mist Silk Cape", Level = 10 },
    },
    Waist = {
        { Name = "Friar's Rope", Level = 14 },
    },
    Legs  = {
        { Name = "White Slacks", Level = 50 },        -- H+3 Regen +1
        { Name = "Garrison Hose +1", Level = 20 },    -- H+2
        { Name = "Slacks +1", Level = 8 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Garrison Boots +1", Level = 20 },   -- INT+2 MND+2
        { Name = "Power Sandals", Level = 18 },       -- VIT+3
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

profile.Sets.Midcast_Default_Priority = {
    Main  = {
        { Name = "Iridal Staff", Level = 51 },
        { Name = "Ash Pole +1", Level = 5 },          -- INT+3
        { Name = "Maple Wand +1", Level = 1 },
    },
    Sub   = {
        { Name = "Neph. Grip", Level = 5 },           -- INT+1
        { Name = "Kupo Shield", Level = 1 },
    },
    Neck  = {
        { Name = "Justice Badge", Level = 7 },
    },
    Back  = {
        { Name = "Mist Silk Cape", Level = 10 },      -- CurePot+1
    },
    Waist = {
        { Name = "Silver Obi", Level = 20 },          -- SIRD-8
    },
};

-- Goal: Max FastCast 80%
profile.Sets.Precast_Default_Priority = {
    Head  = {
        { Name = "Entrancing Ribbon", Level = 11 },   -- FC+1
    },
};

profile.Sets.Resting_Priority = {
    Main  = {
        { Name = "Pilgrim's Wand", Level = 10 },      -- MMP+3
    },
    Sub   = {
        { Name = "Pelte", Level = 8 },                -- MMP+2
    },
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
    Feet  = {
        { Name = "Garrison Boots +1", Level = 20 },   -- HMP+2
    }
};

return profile;