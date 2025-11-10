local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Sets.LockStyle = {
    Main  = "Sandung",
    Sub   = "Atoyac",
    Head  = "Tiger Mask",
    Body  = "Freya's Jerkin",
    Hands = "Adhemar Wristbands",
    Legs  = "Adhemar Kecks",
    Feet  = "Adhemar Gamashes",
};

profile.Sets.Engaged_Default_Priority = {
    Main  = {
        { Name = "Sandung", Level = 75 },
        { Name = "Gully", Level = 72 },
        { Name = "Misericorde", Level = 71 },
        { Name = "Thief's Knife", Level = 70 },
            -- Wish: Lv.50 Bushwhacker +1 {Yagudo Incursions}
        { Name = "Corsair's Knife", Level = 50 },
        { Name = "Hornetneedle", Level = 48 },
        { Name = "Bone Knife +1", Level = 46 },
        { Name = "Marauder's Knife", Level = 40 },
        { Name = "Mrc.Cpt. Kukri", Level = 30 },
            -- Wish: Lv.20->50 Bushwhacker {Yagudo Incursions}
        { Name = "Mercenary's Knife", Level = 20 },
        { Name = "Beestringer", Level = 7 },
        "Bronze Knife",
    },
    Sub  = {
            -- Wish: Lv.75 Taming Sari {Great DI NM Gensai}
        { Name = "Atoyac", Level = 75 },
        { Name = "Misericorde", Level = 72 },
            -- Wish: Lv.50->75 Mercurial Kris {Jailer of Prudence}
        { Name = "Hornetneedle", Level = 50 },
        { Name = "Terrapin Traitor", Level = 20 },    -- OAT2 under lv.50
        "Kupo Shield",
    },
    Range = {
        { Name = "Atetepeyorg", Level = 75 },
        { Name = "Rogetsurin", Level = 15 },
        { Name = "Crossbow", Level = 12 },
    },
    Ammo  = {
        { Name = "Crossbow Bolt", Level = 75 },
    },
    Ear1  = {
        { Name = "Brutal Earring", Level = 75 },      -- DA+5 STP+1
        { Name = "Outlaw's Earring", Level = 50 },
        { Name = "Cassie Earring", Level = 1 },
    },
    Ear2  = {
        { Name = "Luminous Earring", Level = 75 },
        { Name = "Bandit's Earring", Level = 60 },
        { Name = "Insomnia Earring", Level = 50 },
        { Name = "Dodge Earring", Level = 29 },
    },
    Head  = {
        { Name = "Rog. Bonnet +1", Level = 74 },      -- Haste+5  CritRate+3  EVA+10
        { Name = "Wivre Mask", Level = 65 },          -- ACC+5 DEX+3
        { Name = "Storm Zucchetto", Level = 50 },     -- ACC+4
        { Name = "Emperor Hairpin", Level = 24 },
        { Name = "Garrison Sallet +1", Level = 20 },
        { Name = "Cmp. Eye Circlet", Level = 9 },
        "Bronze Cap",
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Rabbit Charm", Level = 7 },
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        { Name = "Adhemar Jacket", Level = 75 },
        -- Wish: Lv.70 Bloody Aketon [AGI+6/7 (Aug) AGI+4 ACC+8]
        -- Wish: Lv.60 Aketon [AGI+5 (Aug) ACC+5 ATK+5 H+2]
        { Name = "Scorpion Harness", Level = 57 },    -- ACC+10 EVA+10
        { Name = "Raptor Jerkin", Level = 48 },
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Leather Vest +1", Level = 7 },
        "Hume Tunic",
    },
    Hands = {
        { Name = "Adhemar Wristbands", Level = 75 },  -- ACC+10 ATK+10 H+3 TH+1
        { Name = "Raptor Gloves", Level = 48 },       --                        DEX+4
        { Name = "Battle Gloves", Level = 14 },       -- ACC+3 EVA+3 STP+1
        { Name = "Brass Mittens", Level = 11 },
        "Dream Mittens +1",
    },
    Ring1 = {
            -- Wish: Zilant Ring [DEX+6 ACC+3] {Dyna Bubu Boss}
            -- Use: Toreador's Ring Lv.57 [ACC+7] instead of Kusha when using Rajas
        { Name = "Kusha's Ring", Level = 55 },
        { Name = "Archer's Ring", Level = 30 },
        "San d'Orian Ring",
    },
    Ring2 = {
        { Name = "Lava's Ring", Level = 55 },
            -- Wish: Lv.30~75 Rajas Ring [STR+2~5 DEX+2~5 STP+5 SB+5]
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
        { Name = "Skadi's Chausses", Level = 75 },    -- ACC+4 ATK+5 STP+7+3 H+2
        { Name = "Raptor Trousers", Level = 50 },
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2 Haste+2
        { Name = "Phl. Trousers", Level = 15 },
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Adhemar Gamashes", Level = 75 },
        { Name = "Raptor Ledelsens", Level = 48 },
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

profile.Sets.Weapons = {
    ["Sandung/Atoyac"] = {
        Main = "Sandung",
        Sub = "Atoyac",
    },
    ["Sandung/Thief's Knife"] = {
        Main = "Sandung",
        Sub  = "Thief's Knife"
    }
};

profile.Sets.Idle_Default_Priority = profile.MiniSwap.DeepCopy(profile.Sets.Engaged_Default_Priority)
profile.Sets.Idle_Default_Priority.Head = {
    { Name = "Rog. Bonnet +1", Level = 74 },          -- EVA+10
    { Name = "Emperor Hairpin", Level = 50 },         -- EVA+10
    { Name = "Garrison Sallet +1", Level = 20 },      -- Regen+1 under lv.50
    { Name = "Cmp. Eye Circlet", Level = 9 },         -- EVA+3
    "Coven Hat",
};
profile.Sets.Idle_Default_Priority.Neck = {
    { Name = "Oneiros Torque", Level = 75 },          -- EVA+5 PDT-2
    table.unpack(profile.Sets.Idle_Default_Priority.Neck),
};
profile.Sets.Idle_Default_Priority.Ring1 = {
        -- Wish: Merman's Ring (Coral Ring +1) [MDT-4
    { Name = "Coral Ring", Level = 70 },              -- MDT-3
    { Name = "Kusha's Ring", Level = 55 },
    { Name = "Archer's Ring", Level = 30 },
    "San d'Orian Ring",
};
profile.Sets.Idle_Default_Priority.Ring2 = {
        -- Wish: Merman's Ring (Coral Ring +1) [MDT-4]
    { Name = "Coral Ring", Level = 70 },              -- MDT-3
    { Name = "Lava's Ring", Level = 55 },
    "Provenance Ring",
};
profile.Sets.Idle_Default_Priority.Legs = {
    { Name = "Acrobat's Breeches", Level = 75 },      -- EVA+11
    table.unpack(profile.Sets.Idle_Default_Priority.Legs),
};
profile.Sets.Idle_Default_Priority.Feet = {
    { Name = "Strider Boots", Level = 20 },
    { Name = "Leaping Boots", Level = 7 },
};

profile.Sets.Resting_Default_Priority = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },   -- HHP+2
    },
};

-- Goal: Snapshot & Rapid Shot
profile.Sets.Preshot_Default = {}

-- Goal: RACC, RATK, STP, Crit, Recycle, Etc
profile.Sets.Midshot_Default = {
    Head  = {
        { Name = "Adhemar Bonnet", Level = 75 },      -- RACC+9 RATK+9
    },
    Ring1 = {
            -- Wish: Merman's Ring (Coral Ring +1) [RACC+10]
        { Name = "Coral Ring", Level = 70 },          -- RACC+9
    },
    Ring2 = {
            -- Wish: Merman's Ring (Coral Ring +1) [RACC+10]
        { Name = "Coral Ring", Level = 70 },          -- RACC+9
    },
    Legs  = {
        { Name = "Skadi's Chausses", Level = 75 },    -- RACC+4 RATK+5 STP+7 (Wish Aug: STP+3)
    },
}; 

-- Goal: Waltz Potency > CHR (caster) & VIT (target)
profile.Sets.JA_CuringWaltz_Priority = {
    Head  = {
        { Name = "Shade Tiara", Level = 25 },         -- CHR+2
    },
    Neck  = {
        { Name = "Bird Whistle", Level = 15 },        -- CHR+3
    },
    Body  = {
        { Name = "Raptor Jerkin", Level = 48 },       -- CHR+4
        { Name = "Garrison Tunica +1", Level = 20 },  -- CHR+2
    },
    Hands = {
        { Name = "Raptor Gloves", Level = 48 },       -- CHR+4
        { Name = "Garrison Gloves +1", Level = 20 },  -- VIT+2
    },
    Back  = {
        { Name = "Traveler's Mantle", Level = 28 },   -- Make sure Exile's Cloack with CHR-3 isn't equiped
    },
    Waist = {
        { Name = "Corsette +1", Level = 40 },         -- CHR+6
        { Name = "Griot Belt", Level = 28 },          -- CHR+1
    },
    Legs  = {
            -- Wish: Lv.75 Dragon Subligar +1 [Waltz+5]
        { Name = "Raptor Trousers", Level = 48 },     -- VIT+4
    },
    Feet  = {
        { Name = "Adhemar Gamashes", Level = 75 },    -- VIT+5
    },
}
profile.Sets.JA_CuringWaltzII_Priority = profile.Sets.JA_CuringWaltz_Priority
profile.Sets.JA_DivineWaltz_Priority = profile.Sets.JA_CuringWaltz_Priority

profile.Sets.JA_Flee_Priority = {
    Feet = {
        { Name = "Rogue's Poulaines", Level = 60 },
    },
};

profile.Sets.JA_Mug_Priority = {
    Ear2 = {
        { Name = "Bandit's Earring", Level = 60 },
    },
};

profile.Sets.JA_Steal_Priority = {
    Head  = {
        -- { Name = "Rogue's Bonnet", Level = 54 },   -- Turned into +1, worth getting again for Steal+1?
    },
    Neck  = {
        { Name = "Rabbit Charm", Level = 7 },         -- Steal+1
    },
    Hands = {
        { Name = "Thief's Kote", Level = 70 },        -- Steal+3
        -- { Name = "Rogue's Armlets", Level = 52 },     -- Steal+1 -- In storage
    },
    Legs  = {
        -- { Name = "Assassin's Culottes", Level = 72 },  -- Steal+5
        { Name = "Rogue's Culottes", Level = 56 },    -- Steal+1
    },
    Feet = {
        { Name = "Rogue's Poulaines", Level = 60 },   -- Steal+2
    },
};

-- Goal: ACC & DEX & AGI
profile.Sets.WS_Default_Priority = {
    Head  = {
        { Name = "Adhemar Bonnet", Level = 75 },      -- DEX+6 AGI+6 Crit+3
        { Name = "Emperor Hairpin", Level = 24 },     -- DEX+3 AGI+3
    },
    Neck  = {
            -- Wish: Lv.75 Love Torque [DEX+5 Dagger+7]
        { Name = "Spike Necklace", Level = 21 },      -- DEX+3       STR+3
        { Name = "Rabbit Charm", Level = 7 },         -- DEX+1 AGI+1
        { Name = "Pile Chain", Level = 3 },           --             ACC+1
    },
    Body = {
        { Name = "Adhemar Wristbands", Level = 75 },  --             ACC+10 ATK+10 Enhance Trick Attack
        { Name = "Raptor Jerkin", Level = 48 },       -- DEX+4       ATK+8
        { Name = "Garrison Tunica +1", Level = 20 },  -- DEX+2
    },
    Hands = {
        { Name = "Adhemar Wristbands", Level = 75 },  --             ACC+10 ATK+10 Enhance Trick Attack
        { Name = "Raptor Gloves", Level = 48 },       -- DEX+4
        { Name = "Battle Gloves", Level = 48 },       --             ACC+3
    },
    Ring1 = {
        { Name = "Kusha's Ring", Level = 55 },
        "San d'Orian Ring",
    },
    Ring2 = {
        { Name = "Lava's Ring", Level = 55 },
        { Name = "Archer's Ring", Level = 30 },
    },
    Back  = {
        {Name = "Exile's Cloak", Level = 50 },        --            STR+2 ATK+3
        {Name = "Lizard Mantle", Level = 17 },
    },
    Waist  = {
        {Name = "Virtuoso Belt", Level = 54 },        --             ACC+12 ATK+4
    },
    Legs  = {
        { Name = "Adhemar Kecks", Level = 75 },       -- DEX+4 AGI+4
        { Name = "Velvet Slops", Level = 38 },        -- DEX+2       ATK+4
    },
    Feet  = {
        { Name = "Adhemar Gamashes", Level = 75 },    --                   TA+2
        { Name = "Leaping Boots", Level = 7 },        -- DEX+3 AGI+3
    },
};

-- Goal: fTP & ACC & AGI & DA & TA & CRIT
profile.Sets.WS_Exenterator = {
    Head  = "Adhemar Bonnet",                         -- AGI+6  DEX+6  Crit+3
        -- Wish: Dragon Cap +1 [AGI+5 (Aug) AGI+6 Dagger+8]
    Neck  = "Soil Gorget",                            -- fTP+0.1
        -- Wish: Fotia Gorget [WSAcc+10 WSD+10%]
    Body  = "Adhemar Jacket",                         --             ATK+10 Crit+
        -- Wish: Lv.75 Dragon Harness +1 [DEX+7 AGI+7 ATK+12 (Aug) DEX+3 AGI+3 ATK+12 Skillchain Dmg+4]
        -- Wish: Lv.70 Bloody Aketon [AGI+6/7 (Aug) AGI+4 ACC+8]
    Hands = "Adhemar Wristbands",                     --             ACC+10 ATK+10 Enhance Trick Attack
    Ring1 = "Kusha's Ring",
    Ring2 = "Lava's Ring",
    Back  = "Cuchulain's Mantle",                     --        DEX+4              ACC+4  STR+4
    Waist = "Virtuoso Belt",                          --                    ATK+4  ACC+12
    Legs  = "Acrobat's Breeches",                     -- AGI+8  DEX+2  TA+2
    Feet  = "Adhemar Gamashes",                       --               TA+2
        -- Wish: Dragon Leggings +1 [AGI+4 (Aug) Acc+8 Atk+8 Crit+3]
};

return profile;