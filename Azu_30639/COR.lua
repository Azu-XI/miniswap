local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Sets.Engaged_Default_Priority = {
    Main  = {
        -- { Name = "Archer's Knife", Level = 28 },      -- RACC+10
        { Name = "Terrapin Traitor", Level = 20 },    -- OAT2 under lv.50
        { Name = "Knife", Level = 13 },
        -- Wish: Lv.7 Jack's Knife {Ordelle Incursion}
        "Bronze Knife",
    },
    Sub   = {
        "Kupo Shield",
    },
    Range = {
        { Name = "Military Gun", Level = 30 },
        { Name = "Platoon Gun", Level = 20 },
        { Name = "Bandit's Gun", Level = 15 },
        { Name = "Musketoon", Level = 6 },
        -- { Name = "Firefly", Level = 5 },
    },
    Ammo = {
        { Name = "Steel Bullet", Level = 66 },        -- Fire Crystal + Firesand + Steel Ingot
        { Name = "Iron Bullet", Level = 50 },         -- Fire Crystal + Firesand + Iron Ingot
        { Name = "Paktong Bullet", Level = 35 },      -- Fire Crystal + Firesand + Paktong Ingot
        { Name = "Bullet", Level = 22 },              -- Fire Crystal + Firesand + Brass Ingot
        { Name = "Tin Bullet", Level = 11 },          -- Fire Crystal + Firesand + Tin Ingot
        { Name = "Bronze Bullet", Level = 6 },        -- Fire Crystal + Firesand + Bronze Ingot
        { Name = "Happy Egg", Level = 1 },
    },
    Head  = {
        { Name = "Emperor Hairpin", Level = 24 },
        { Name = "Brass Cap", Level = 11 },
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Insomnia Earring", Level = 50 },
        { Name = "Cassie Earring", Level = 1 },
    },
    Ear2 = {
        { Name = "Outlaw's Earring", Level = 50 },    -- DEX+2 ATK+4
        { Name = "Dodge Earring", Level = 29 },       -- EVA+3
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10 RACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },           -- ACC+1
    },
    Body  = {
        { Name = "Raptor Jerkin", Level = 48 },
            -- Wish: Full Noct Set @30
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Scale Mail", Level = 10 },
        { Name = "Leather Vest +1", Level = 7 },
        "Kingdom Aketon", 
    },
    Hands = {
        { Name = "Raptor Gloves", Level = 48 },
        { Name = "Garrison Gloves +1", Level = 20 },     -- VIT+2
        { Name = "Guerilla Gloves", Level = 13 },
        { Name = "Brass Mittens", Level = 11 },
        "Dream Mittens +1",
    },
    Ring1 = {
        { Name = "Bone Ring +1", Level = 16 },
        "San d'Orian Ring",
    },
    Ring2 = {
        { Name = "Bone Ring +1", Level = 16 },
        "Provenance Ring",
    },
    Back  = {
        { Name = "Cuchulain's Mantle", Level = 74 },  -- ACC+4  STR+4  DEX+4
        { Name = "Exile's Cloak", Level = 50 },       --        STR+4  ATK+3
        { Name = "Nomad's Mantle", Level = 24 },      -- EVA+3  AGI+1  DW+1
        { Name = "Traveler's Mantle", Level = 12 },   -- EVA+3
        { Name = "Rabbit Mantle", Level = 4 },
    },
    Waist = {
        { Name = "Virtuoso Belt", Level = 54 },
        { Name = "Griot Belt", Level = 28 },
        { Name = "Lizard Belt", Level = 17 },
        { Name = "Friar's Rope", Level = 14 },
    },
    Legs  = {
        { Name = "Raptor Trousers", Level = 48 },
        { Name = "Garrison Hose +1", Level = 20 },        -- STR+2 Haste+2
        { Name = "Phl. Trousers", Level = 15 },
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Raptor Ledelsens", Level = 48 },        -- Haste+2
        { Name = "Greaves", Level = 24 },
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

profile.Sets.Idle_Default_Priority = profile.MiniSwap.DeepCopy(profile.Sets.Engaged_Default_Priority)
profile.Sets.Idle_Default_Priority.Head = {
    { Name = "Emperor Hairpin", Level = 50 },
    { Name = "Garrison Sallet +1", Level = 20 },      -- Regen+1 under lv.50
    { Name = "Brass Cap", Level = 11 },
    "Coven Hat",
};
profile.Sets.Idle_Default_Priority.Neck = {
    { Name = "Pegasus Collar", Level = 20 },          -- MvtSpeed+12%
    { Name = "Justice Badge", Level = 7 },            -- MND+3
};

profile.Sets.Resting_Default_Priority = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
};

profile.Sets.WS_Default_Priority = {
    Head  = {
        { Name = "Shade Tiara", Level = 25 },         -- STR+2
    },
    Neck  = {
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Hands = {
        { Name = "Guerilla Gloves", Level = 13 },
    },
    Ring1 = {
        "San d'Orian Ring",
    },
    Back  = {
        { Name = "Lizard Mantle", Level = 17 },       -- STR+1
    },
    Legs  = {
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2
    },
};

return profile;