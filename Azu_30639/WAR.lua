local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Sets.Engaged_Default_Priority = {
    Main  = {
        { Name = "Nadziak", Level = 68 },
        { Name = "Darksteel Pick +1", Level = 62 },
        { Name = "Sirocco Axe", Level = 60 },
        { Name = "Viking Axe", Level = 48 },          -- EVA-10  ACC+10
        { Name = "Military Pick", Level = 28 },
        { Name = "Battleaxe", Level = 20 },
        { Name = "Light Axe", Level = 11 },
        { Name = "Brass Axe", Level = 8 },
        "Bronze Axe",
    },
    Sub   = {
        { Name = "Darksteel Pick +1", Level = 62 },
        { Name = "Viking Axe", Level = 60 },          -- EVA-10  ACC+10
        { Name = "Military Pick", Level = 28 },
        { Name = "Battleaxe", Level = 20 },
        { Name = "Clipeus", Level = 9 },
        { Name = "Shell Shield", Level = 7 },
    },
    Range = {
        { Name = "Crossbow", Level = 12 },
    },
    Ammo  = {
        { Name = "Crossbow Bolt", Level = 12 },
        "Happy Egg",
    },
    Head  = {
        { Name = "Assailant's Visor", Level = 70 },   --                 STR+5  DEX+11
        { Name = "Emperor Hairpin", Level = 24 },     --         EVA+10  DEX+3  AGI+3
        { Name = "Brass Cap +1", Level = 11 },
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Brutal Earring", Level = 75 },      -- DA+5 STP+1
        { Name = "Outlaw's Earring", Level = 50 },
    },
    Ear2 = {
        { Name = "Suppanomimi", Level = 72 },         -- DW+5 Sword+5
        { Name = "Insomnia Earring", Level = 50 },
        { Name = "Dodge Earring", Level = 29 },
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      --                 STR+3  DEX+3
        { Name = "Armiger's Lace", Level = 9 },
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        { Name = "Kirin's Osode", Level = 75 },
        { Name = "Scorpion Harness", Level = 57 },    -- ACC+10  EVA+10
        { Name = "Raptor Jerkin", Level = 48 },
        { Name = "Eisenbrust", Level = 29 },
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Scale Mail", Level = 10 },
        { Name = "Leather Vest +1", Level = 7 },
        "Tidal Talisman",
    },
    Hands = {
        { Name = "Gothic Gauntlets", Level = 43 },    -- STR+3
        -- { Name = "Eisenhentzes", Level = 29 },        -- ACC+2
        -- { Name = "Garrison Gloves +1", Level = 20 },  -- VIT+2
        { Name = "Guerilla Gloves", Level = 13 },     -- ACC+2 ATK+1
        { Name = "Brass Mittens +1", Level = 11 },
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
        { Name = "Cuchulain's Mantle", Level = 74 },  -- ACC+4                 STR+4  DEX+4
        { Name = "Exile's Cloak", Level = 50 },       --                ATK+3  STR+4
        { Name = "Nomad's Mantle", Level = 24 },      --         EVA+3                       AGI+1  DW+1
        { Name = "Traveler's Mantle", Level = 12 },   --         EVA+3
        { Name = "Rabbit Mantle", Level = 4 },
    },
    Waist = {
        { Name = "Oneiros Cest", Level = 75 },        -- ACC+9  STP+3        H+3
        { Name = "Virtuoso Belt", Level = 54 },
        { Name = "Griot Belt", Level = 28 },
        { Name = "Plate Belt", Level = 12 },
    },
    Legs  = {
        { Name = "Raptor Trousers", Level = 48 },
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2 Haste+2
        { Name = "Phl. Trousers", Level = 15 },
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Raptor Ledelsens", Level = 48 },    -- Haste+2
        { Name = "Eisenschuhs", Level = 29 },
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

profile.Sets.Idle_Default_Priority = profile.MiniSwap.DeepCopy(profile.Sets.Engaged_Default_Priority)
profile.Sets.Idle_Default_Priority.Head = {
    { Name = "Emperor Hairpin", Level = 50 },         -- EVA+10
    { Name = "Garrison Sallet +1", Level = 20 },      -- Regen+1 under lv.50
    { Name = "Brass Cap +1", Level = 11 },
    "Coven Hat",
};
profile.Sets.Idle_Default_Priority.Neck = {
    { Name = "Oneiros Torque", Level = 75 },          -- EVA+5 PDT-2
    table.unpack(profile.Sets.Idle_Default_Priority.Neck),
};
profile.Sets.Idle_Default_Priority.Ring1 = {
        -- Wish: Merman's Ring (Coral Ring +1) [MDT-4
    { Name = "Coral Ring", Level = 70 },              -- MDT-3
    table.unpack(profile.Sets.Idle_Default_Priority.Ring2),
};
profile.Sets.Idle_Default_Priority.Ring2 = {
        -- Wish: Merman's Ring (Coral Ring +1) [MDT-4]
    { Name = "Coral Ring", Level = 70 },              -- MDT-3
    table.unpack(profile.Sets.Idle_Default_Priority.Ring2),
};

profile.Sets.Resting_Default_Priority = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
};

-- Goal: Enmity+
profile.Sets.JA_Provoke_Priority = {
    Head  = {
            -- Wish: Lv.1 Cache-nez [Enm+2]
    },
    Body  = {
            -- Wish: Lv.74 Fighter's Lorica +1 [Enm+8 (Aug) Enm+6]
            -- Wish: Lv.60 Fighter's Lorica [Enm+8]
    },
    Hands = {
            -- Wish: Lv.74 Fighter's Mufflers +1 [Enm+3 (Aug) Enm+6]
            -- Wish: Lv.54 Fighter's Mufflers [Enm+3]
        { Name = "Gothic Gauntlets", Level = 43 },    -- Enm+2
    },
    Ring2 = {
        { Name = "Sattva Ring", Level = 30 },         -- Enm+3
    },
    Back  = {
        { Name = "Ram Mantle", Level = 38 },          -- Enm+2
    },
    Waist = {
            -- Wish: Lv.71 Warwolf Belt [Enm+3]
    },
    Legs  = {
            -- Wish: Lv.74 Fighter's Cuisses +1 [Enm+3 (Aug) Enm+6]
            -- Wish: Lv.58 Fighter's Cuisses [Enm+2]
    },
    Feet  = {
            -- Wish: Lv.43 Gothic Sabatons [Enm+2] {Behemoth's Dominion - Treasure Casket}
    },
};

-- Goal: ACC & STR
profile.Sets.WS_Default_Priority = {
    Head  = {
        { Name = "Shade Tiara", Level = 25 },         -- STR+2
    },
    Neck  = {
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Body = {
        { Name = "Scorpion Harness", Level = 57 },    --                 ACC+10
    },
    Hands = {
        { Name = "Gothic Gauntlets", Level = 43 },    -- STR+3
        { Name = "Guerilla Gloves", Level = 13 },     -- ACC+2
    },
    Ring1 = {
        { Name = "Strigoi Ring", Level = 75 },        -- STR+6           ATK+3
        { Name = "Toreador's Ring", Level = 57 },     --                 ACC+7
        { Name = "Ecphoria Ring", Level = 49 },       --                 ACC+4
        { Name = "Balance Ring", Level = 14 },        -- DEX+2
        "San d'Orian Ring",
    },
    Ring2 = {
        { Name = "Rajas Ring", Level = 30 },          -- STR+2~5                  DEX+2~5
        { Name = "Balance Ring", Level = 14 },        -- DEX+2
        "Provenance Ring",
    },
    Back  = {
        { Name = "Earth Mantle", Level = 40 },        -- STR+2
        { Name = "Lizard Mantle", Level = 17 },       -- STR+1
    },
    Legs  = {
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2
    },
};

return profile;