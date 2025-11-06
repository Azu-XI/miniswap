local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Sets.JA_AncientCircle = {
    Legs = {
        { Name = "Drachen Brais", Level = 52 },
    }
};

-- Goal: STR & VIT & ACC & Jump+ & Jump TP+
-- Note: Base damage (+fSTR) multiplier of (1 + VIT/256)
profile.Sets.JA_Jump_Priority = {
    Head  = {
        { Name = "Shade Tiara", Level = 25 },         -- STR+2
    },
    Neck  = {
        { Name = "Spike Necklace", Level = 21 },      -- STR+3
        { Name = "Pile Chain", Level = 3 },           --              ACC+1
    },
    Body  = {
        -- { Name = "Thrk. Breastplate", Level = 61 },   -- STR+3        ACC+7 ATK+7  -- IN STORAGE
        { Name = "Raptor Jerkin", Level = 48 },       --                    ATK+8
        { Name = "Custom Tunic", Level = 33 },        --        VIT+3
        { Name = "Leather Vest +1", Level = 7 },      --        VIT+1
    },
    Hands = {
        { Name = "Custom M Gloves", Level = 27 },     -- STR+3
        { Name = "Garrison Gloves +1", Level = 20 },  --        VIT+2
    },
    Ring1 = {
        "San d'Orian Ring",                           -- STR+1
    },
    Back  = {
        { Name = "Earth Mantle", Level = 40 },        -- STR+2 VIT+1
        { Name = "Lizard Mantle", Level = 17 },       -- STR+1
    },
    Waist = {
        -- { Name = "Marid Belt", Level = 45 },          -- STR+3 VIT+5                 -- IN STORAGE
        { Name = "Vanguard Belt", Level = 45 },       -- STR+3              ATK+5
    },
    Legs  = {
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2
        { Name = "Phl. Trousers", Level = 15 },       -- STR+1
    },
    Feet  = {
        -- { Name = "Drachen Greaves", Level = 54 },     --                    ATK+10%
        { Name = "Power Sandals", Level = 18 },       --       VIT+3
    }
};

-- Goal: STR & ACC
-- Note: Base damage (+fSTR)
profile.Sets.JA_HighJump_Priority = {
    Head  = {
        { Name = "Shade Tiara", Level = 25 },         -- STR+2
    },
    Neck  = {
        { Name = "Spike Necklace", Level = 21 },      -- STR+3
        { Name = "Pile Chain", Level = 3 },           --              ACC+1
    },
    Body  = {
        -- { Name = "Thrk. Breastplate", Level = 61 },   -- STR+3        ACC+7 ATK+7  -- IN STORAGE
        { Name = "Raptor Jerkin", Level = 48 },       --                    ATK+8
    },
    Hands = {
        { Name = "Custom M Gloves", Level = 27 },     -- STR+3
    },
    Ring1 = {
        "San d'Orian Ring",                           -- STR+1
    },
    Back  = {
        { Name = "Earth Mantle", Level = 40 },        -- STR+2 VIT+1
        { Name = "Lizard Mantle", Level = 17 },       -- STR+1
    },
    Waist = {
        { Name = "Vanguard Belt", Level = 45 },       -- STR+3              ATK+5
    },
    Legs  = {
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2
        { Name = "Phl. Trousers", Level = 15 },       -- STR+1
    },
    Feet  = {
        -- { Name = "Mettle Leggings +1", Level = 17 },  -- STR+1              ATK+2
    }
};

profile.Sets.Engaged_Priority = {
    Main  = {
        -- { Name = "Kuakuakait", Level = 75 },             -- IN STORAGE
        -- { Name = "Gnd.Kgt. Lance", Level = 60 },         -- IN STORAGE
        -- { Name = "Mythril Lance +1", Level = 48 },       -- IN STORAGE
        -- { Name = "Peregrine", Level = 40 },              -- IN STORAGE
        -- { Name = "Military Spear", Level = 28 },         -- IN STORAGE
        -- { Name = "Platoon Lance", Level = 20 },          -- IN STORAGE
        -- { Name = "Pike", Level = 11 },                   -- IN STORAGE
        -- { Name = "Bronze Spear", Level = 7 },            -- IN STORAGE
    },
    Sub   = {
    },
    Ammo = {
        { Name = "Bibiki seashell", Level = 60 },     -- VIT+4
        { Name = "Happy Egg", Level = 1 },
    },
    Head  = {
        { Name = "Wivre Mask", Level = 65 },          -- ACC+5 EVA+10 STR+2 VIT+2 DEX+3
        { Name = "Valkyrie's Mask", Level = 43 },
        { Name = "Emperor Hairpin", Level = 24 },
        { Name = "Entrancing Ribbon", Level = 11 },
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Brutal Earring", Level = 75 },      -- DA+5 STP+1
        { Name = "Insomnia Earring", Level = 50 },
        { Name = "Cassie Earring", Level = 1 },
    },
    Ear2 = {
        { Name = "Outlaw's Earring", Level = 50 },    -- DEX+2 ATK+4
        { Name = "Dodge Earring", Level = 29 },       -- EVA+3
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Armiger's Lace", Level = 9 },
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        -- { Name = "Thrk. Breastplate", Level = 61 },   -- STR+3 DEX+3   ACC+7 ATK+7 STP+3  -- IN STORAGE
        { Name = "Raptor Jerkin", Level = 48 },
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Scale Mail", Level = 10 },
        { Name = "Leather Vest +1", Level = 7 },
        "Kingdom Aketon",
    },
    Hands = {
        { Name = "Raptor Gloves", Level = 48 },
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
        { Name = "Lizard Belt", Level = 17 },
        { Name = "Friar's Rope", Level = 14 },
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
        { Name = "Greaves", Level = 24 },
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

profile.Sets.Idle_Priority = profile.MiniSwap.DeepCopy(profile.Sets.Engaged_Priority)
profile.Sets.Idle_Priority.Head = {
    { Name = "Emperor Hairpin", Level = 50 },
    { Name = "Garrison Sallet +1", Level = 20 },      -- Regen+1 while below lv.50
};

profile.Sets.Resting_Priority = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
};

-- TODO: AF head in precast, relic head in midcast

-- Goal: ACC (Multi-hits WS) & STR (Generic Mod)
profile.Sets.WS_Default_Priority = {
    Head  = {
        -- TODO: AF head
        { Name = "Wivre Mask", Level = 65 },          -- STR+2       ACC+5
        { Name = "Shade Tiara", Level = 25 },         -- STR+2
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       --             ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Hands = {
        { Name = "Custom M Gloves", Level = 27 },     -- STR+3 DEX+3
        { Name = "Guerilla Gloves", Level = 13 },     --             ACC+2  ATK+2
    },
    Ring1 = {
        "San d'Orian Ring",                           -- STR+1
    },
    Back  = {
        { Name = "Earth Mantle", Level = 40 },        -- STR+2
        { Name = "Lizard Mantle", Level = 17 },       -- STR+1
    },
    Waist = {
        { Name = "Virtuoso Belt", Level = 54 },       --             ACC+12 ATK+4
        { Name = "Vanguard Belt", Level = 45 },       -- STR+3              ATK+5
    },
    Legs  = {
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2
        { Name = "Phl. Trousers", Level = 15 },       -- STR+1
    },
    Feet  = {
        { Name = "Leaping Boots", Level = 7 },        --                          DEX+3 AGI+3
    },
};

return profile;