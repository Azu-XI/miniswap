local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Sets.Engaged_Default_Priority = {
    Main  = {
        { Name = "Mythril Pick", Level = 28 },
        { Name = "Light Axe", Level = 11 },
        { Name = "Brass Axe", Level = 8 },
        "Bronze Axe",
    },
    Sub   = {
        { Name = "Mythril Pick", Level = 28 },
        { Name = "Shell Shield", Level = 7 },
        "Kupo Shield",
    },
    Ammo  = {
        "Happy Egg",
    },
    Head  = {
        { Name = "Emperor Hairpin", Level = 24 },
        { Name = "Entrancing Ribbon", Level = 11 },
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Insomnia Earring", Level = 50 },
    },
    Ear2 = {
        { Name = "Outlaw's Earring", Level = 50 },
        { Name = "Dodge Earring", Level = 29 },
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Armiger's Lace", Level = 9 },
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Scale Mail", Level = 10 },
        { Name = "Leather Vest +1", Level = 7 },
        "Tidal Talisman",
    },
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },     -- VIT+2
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
        { Name = "Rajas Ring", Level = 30 },          -- STP+5 SB+5 STR+2~5 DEX+2~5
        { Name = "Balance Ring", Level = 14 },        -- DEX+2
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
        { Name = "Plate Belt", Level = 12 },
    },
    Legs  = {
        -- { Name = "Silver Hose", Level = 36 },        -- In storage
        { Name = "Garrison Hose +1", Level = 20 },      -- STR+2 Haste+2
        { Name = "Phl. Trousers", Level = 15 },
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Raptor Ledelsens", Level = 48 },      -- Haste+2
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
    { Name = "Oneiros Torque", Level = 75 },          -- EVA+5 PDT-2
    table.unpack(profile.Sets.Idle_Default_Priority.Neck),
};

profile.Sets.JA_Charm_Priority = {
    Head  = {
        -- { Name = "Raptor Helm", Level = 48 },           -- CHR+4  (Need 3/3 augment)
        { Name = "Shade Tiara", Level = 25 },           -- CHR+2
        { Name = "Entrancing Ribbon", Level = 11 },     -- CHR+2
    },
    Neck  = {
        { Name = "Bird Whistle", Level = 15 },          -- CHR+3
    },
    Body  = {
        { Name = "Raptor Jerkin", Level = 48 },         -- CHR+2~4
    },
    Hands = {
        { Name = "Raptor Gloves", Level = 48 },         -- CHR+2~4
    },
    Feet  = {
        { Name = "Raptor Ledelsens", Level = 48 },      -- CHR+4
    },
};

profile.Sets.Resting = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
    Feet  = {
        { Name = "Garrison Boots +1", Level = 20 },  -- HMP+2
    }
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
        { Name = "Earth Mantle", Level = 40 },
        { Name = "Lizard Mantle", Level = 17 },       -- STR+1
    },
    Legs  = {
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2
    },
};

return profile;