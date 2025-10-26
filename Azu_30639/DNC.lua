local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Sets.Engaged_Priority = {
    Main  = {
        { Name = "Mercenary's Knife", Level = 20 },
        { Name = "Strike Baghnakhs", Level = 14 },
        { Name = "Brass Knuckles", Level = 9 },
        "Cesti",
    },
    Sub  = {
        { Name = "Mercenary's Knife", Level = 20 },
    },
    Range = {
        { Name = "Rogetsurin", Level = 15 },
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
    Head  = {
        { Name = "Emperor Hairpin", Level = 24 },
        { Name = "Cmp. Eye Circlet", Level = 9 },
        "Bronze Cap",
    },
    Neck  = {
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Leather Vest +1", Level = 7 },
        "Hume Tunic",
    },
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },     -- VIT+2
        { Name = "Battle Gloves", Level = 14 },
        { Name = "Brass Mittens", Level = 11 },
        "Hume M Gloves",
    },
    Ring1 = {
        { Name = "Archer's Ring", Level = 30 },
        "San d'Orian Ring",
    },
    Ring2 = {
        "Provenance Ring",
    },
    Back  = {
        -- { Name = "Ram Mantle", Level = 40 }, --  In storage for space
        { Name = "Nomad's Mantle", Level = 24 },      -- EVA+3  AGI+1  DW+1
        { Name = "Traveler's Mantle", Level = 12 },   -- EVA+3
        { Name = "Rabbit Mantle", Level = 4 },
    },
    Waist = {
        { Name = "Virtuoso Belt", Level = 54 },
        { Name = "Griot Belt", Level = 28 },
        { Name = "Lizard Belt", Level = 17 },
        { Name = "Friar's Rope", Level = 14 },
        { Name = "Friar's Rope", Level = 14 },
    },
    Legs  = {
        { Name = "Garrison Hose +1", Level = 20 },   -- STR+2 Haste+2
        { Name = "Phl. Trousers", Level = 15 },
        { Name = "Lth. Trousers +1", Level = 7 },
        "Bronze Subligar",
        -- "Hume Slacks",
    },
    Feet  = {
        { Name = "Leaping Boots", Level = 7 },
        "Hume M Boots",
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
        { Name = "Lizard Mantle", Level = 17 },
    },
};

return profile;