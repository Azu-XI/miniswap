local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Sets.Engaged_Priority = {
    Main  = {
        { Name = "Mythril Pick", Level = 28 },
        { Name = "Light Axe", Level = 11 },
        { Name = "Brass Axe", Level = 8 },
        "Bronze Axe",
    },
    Sub   = {
        { Name = "Mythril Pick", Level = 28 },
        { Name = "Clipeus", Level = 9 },
        { Name = "Shell Shield", Level = 7 },
    },
    Range = {
        { Name = "Crossbow", Level = 12 },
    },
    Head  = {
        -- { Name = "Eisenschaller", Level = 29 },
        { Name = "Emperor Hairpin", Level = 24 },
        { Name = "Brass Cap", Level = 11 },
        "Dream Hat +1",
    },
    Ear1 = {
        { Name = "Insomnia Earring", Level = 50 },
    },
    Ear2 = {
        { Name = "Dodge Earring", Level = 29 },
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Armiger's Lace", Level = 9 },
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        { Name = "Raptor Jerkin", Level = 48 },
        { Name = "Eisenbrust", Level = 29 },
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Scale Mail", Level = 10 },
        { Name = "Leather Vest +1", Level = 7 },
        "Kingdom Aketon", 
    },
    Hands = {
        { Name = "Raptor Gloves", Level = 48 },
        -- { Name = "Eisenhentzes", Level = 29 }, 
        { Name = "Garrison Gloves +1", Level = 20 },     -- VIT+2
        { Name = "Guerilla Gloves", Level = 13 },
        { Name = "Brass Mittens", Level = 11 },
        "Dream Mittens +1",
    },
    Ring1 = {
        { Name = "Kusha's Ring", Level = 55 },
        { Name = "Ecphoria Ring", Level = 49 },
        { Name = "Archer's Ring", Level = 30 },
        "San d'Orian Ring",
    },
    Ring2 = {
        { Name = "Lava's Ring", Level = 55 },
        "Provenance Ring",
    },
    Back  = {
        { Name = "Earth Mantle", Level = 40 },
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
        { Name = "Raptor Trousers", Level = 48 },
        -- { Name = "Silver Hose", Level = 36 },
        -- { Name = "Eisendiechlings", Level = 29 },
        { Name = "Garrison Hose +1", Level = 20 },        -- STR+2 Haste+2
        { Name = "Phl. Trousers", Level = 15 },
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Raptor Ledelsens", Level = 48 },        -- Haste+2
        { Name = "Eisenschuhs", Level = 29 },
        { Name = "Greaves", Level = 24 },
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

profile.Sets.Idle_Priority = profile.DeepCopy(profile.Sets.Engaged_Priority)
profile.Sets.Idle_Priority.Head = {
    { Name = "Emperor Hairpin", Level = 50 },
    { Name = "Garrison Sallet +1", Level = 20 },  -- Regen+1 while below lv.50
};

profile.Sets.Resting_Priority = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
};

profile.Sets.WS_Default_Priority = {
    Head  = {
        { Name = "Shade Tiara", Level = 25 },          -- STR+2
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
        { Name = "Lizard Mantle", Level = 17 },
    },
    Legs  = {
        { Name = "Garrison Hose +1", Level = 20 },        -- STR+2
    },
};

return profile;