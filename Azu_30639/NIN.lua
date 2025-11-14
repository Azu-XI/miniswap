local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Sets.Engaged_Default_Priority = {
    Main  = {
        { Name = "Gassan", Level = 15 },
        { Name = "Shinobi-Gatana", Level = 13 },
        { Name = "Wakizashi", Level = 7 },
        "Kunai",
    },
    Sub   = {
        { Name = "Shinobi-Gatana", Level = 15 },
        { Name = "Wakizashi", Level = 13 },
        { Name = "Kunai", Level = 10 },
    },
    Range = {
        { Name = "Rogetsurin", Level = 15 },
    },
    Head  = {
        { Name = "Shinobi Hachigane", Level = 49 },
        { Name = "Emperor Hairpin", Level = 24 },
        -- { Name = "Cotton Headband", Level = 14 },
        { Name = "Brass Cap", Level = 11 },
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Outlaw's Earring", Level = 50 },
        { Name = "Cassie Earring", Level = 1 },
    },
    Ear2 = {
        { Name = "Bandit's Earring", Level = 60 },
        { Name = "Insomnia Earring", Level = 50 },
        { Name = "Dodge Earring", Level = 29 },
    },
    Ear2 = {
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        { Name = "Shinobi Gi", Level = 49 },
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Power Gi", Level = 13 },
        { Name = "Kenpogi", Level = 8 },
        { Name = "Leather Vest +1", Level = 7 },
        "Tidal Talisman",
    },
    Hands = {
        { Name = "Shinobi Tekko", Level = 49 },
        -- { Name = "Garrison Gloves +1", Level = 20 },     -- VIT+2
        { Name = "Guerilla Gloves", Level = 13 },
        { Name = "Brass Mittens", Level = 11 },
        "Dream Mittens +1",
    },
    Ring1 = {
        { Name = "Toreador's Ring", Level = 57 },     -- ACC+7
        { Name = "Ecphoria Ring", Level = 49 },       -- ACC+4 STP+1
        { Name = "Balance Ring", Level = 14 },        -- DEX+2
        "San d'Orian Ring",
    },
    Ring2 = {
        "Provenance Ring",
    },
    Back  = {
        { Name = "Cuchulain's Mantle", Level = 74 },  -- ACC+4  STR+4  DEX+4
        { Name = "Exile's Cloak", Level = 50 },       --        STR+4  ATK+3       --        STR+4  ATK+3
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
        { Name = "Shinobi Hakama", Level = 49 },
        -- { Name = "Jujitsu Sitabaki", Level = 37 },  -- Not worth against garrison hose if not augmented, and even then?
        { Name = "Garrison Hose +1", Level = 20 },   -- STR+2 Haste+2
        { Name = "Phl. Trousers", Level = 15 },
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        -- { Name = "Cotton Gaiters", Level = 23 },
        -- { Name = "Ryl.Ftm. Clogs", Level = 20 },
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
    { Name = "Oneiros Torque", Level = 75 },          -- EVA+5 PDT-2
    table.unpack(profile.Sets.Idle_Default_Priority.Neck),
};

profile.Sets.Resting_Default_Priority = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
};

profile.Sets.WS_Default_Priority = {
    Neck  = {
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Hands = {
        { Name = "Cotton Tekko", Level = 18 },        -- STR+2 ATK+4
    },
    Ring1 = {
        "San d'Orian Ring",                           -- STR+1
    },
    Waist = {
        { Name = "Virtuoso Belt", Level = 54 },
    },
    Back  = {
        { Name = "Exile's Cloak", Level = 50 },       -- STR+4 ATK+3
        { Name = "Lizard Mantle", Level = 17 },       -- STR+1
    },
};

return profile;