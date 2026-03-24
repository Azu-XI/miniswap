local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Aliases = {
    ["/noth"] = "/lac fwd mode IdleAndEngaged set None",
    ["/th"] = "/lac fwd mode IdleAndEngaged set TH",
}

profile.Modes = {
    IdleAndEngaged = { "*TH" },
};

local sets = {};

sets.LockStyle = {
    Main  = "Sandung",
    Sub   = "Atoyac",
    Head  = "Leonine Mask",
    Body  = "Freya's Jerkin",
    Hands = "Swift Gages",
    Legs  = "Adhemar Kecks",
    Feet  = "Adhemar Gamashes",
};

sets.Engaged_Default_Priority = {
    Main  = {
        { Name = "Sandung", Level = 75 },
        { Name = "Gully", Level = 72 },
        { Name = "Misericorde", Level = 71 },
        { Name = "Thief's Knife", Level = 70 },
        { Name = "Avis", Level = 57 },
            -- Wish: Lv.50 Bushwhacker +1 {Yagudo Incursions}
        { Name = "Hornetneedle", Level = 50 },
        -- { Name = "Hornetneedle", Level = 48 },
        -- { Name = "Bone Knife +1", Level = 46 },
        -- { Name = "Marauder's Knife", Level = 40 },
        -- { Name = "Mrc.Cpt. Kukri", Level = 30 },
        { Name = "Bushwhacker", Level = 20 },
        { Name = "Sapara +1", Level = 7 },
        "Wax Sword +1",
    },
    Sub  = {
            -- Wish: Lv.75 Taming Sari {Great DI NM Gensai}
        { Name = "Mercurial Kris", Level = 50 },      -- OAT2~3
        { Name = "Terrapin Traitor", Level = 20 },    -- OAT2 under lv.50
        { Name = "Kupo Shield", Level = 7 },
    },
    Range = {
        -- { Name = "Atetepeyorg", Level = 75 }, -- STORED
        { Name = "Rogetsurin", Level = 15 },
    },
    Ammo  = {
        { Name = "Crossbow Bolt", Level = 75 },
        { Name = "remove", Level = 15 },
        "Happy Egg",
    },
    Ear1  = {
        { Name = "Brutal Earring", Level = 75 },      -- DA+5 STP+1
        { Name = "Outlaw's Earring", Level = 50 },
        { Name = "Cassie Earring", Level = 1 },
    },
    Ear2  = {
        { Name = "Suppanomimi", Level = 72 },         -- DW+5 Sword+5
        { Name = "Insomnia Earring", Level = 50 },
        { Name = "Tribal Earring", Level = 20 },
        "remove",
    },
    Head  = {
            -- Wish: Skadi's Visor [DEX+4 AGI+4 ATK+6 H+3 (Aug) Acc+4]
            -- Wish: Aug: ATK+5 ACC+5 DA+2
        { Name = "Assailant's Visor", Level = 70 },   -- STR+5 DEX+11
        { Name = "Wivre Mask", Level = 65 },          -- EVA+10 ACC+5 DEX+3 STR+2
        { Name = "Heroic Hairpin", Level = 30 },      -- PDT-2 H+2 DW+3
        { Name = "Emperor Hairpin", Level = 24 },     -- EVA+10
        { Name = "Garrison Sallet +1", Level = 20 },
        { Name = "Cmp. Eye Circlet", Level = 9 },     -- EVA+5
        "Bronze Cap",
    },
    Neck  = {
        { Name = "Love Torque", Level = 73 },         -- DaggerSkill+7
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        -- { Name = "Rabbit Charm", Level = 7 },         -- DEX+2 AGI+2 EVA+1  -- STORED
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
            -- Wish: Shadi's Cuirie [DEX+8 AGI+8 ACC+10 ATK+5 EVA-10 (Aug) H+3 STP+4]
        { Name = "Adhemar Jacket", Level = 75 },
        { Name = "Scorpion Harness", Level = 57 },    -- ACC+10 EVA+10
        { Name = "Brigandine +1", Level = 45 },       -- STR+3 DEX+3 AGI+3 VIT+3 HP+10 MP+10 ATK+4
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Leather Vest +1", Level = 7 },
        "Tidal Talisman",
    },
    Hands = {
        { Name = "Swift Gages", Level = 75 },         -- STP+2 Haste+4 DA+2 ATK+5
        { Name = "Raptor Gloves", Level = 48 },       --                        DEX+4
        { Name = "Battle Gloves", Level = 14 },       -- ACC+3 EVA+3 STP+1
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
        { Name = "Amemet Mantle +1", Level = 61 },    --        STR+2  ATK+15
        { Name = "Exile's Cloak", Level = 50 },       --        STR+4  ATK+3
        { Name = "Nomad's Mantle", Level = 24 },      -- EVA+3  AGI+1  DW+1
        { Name = "Traveler's Mantle", Level = 12 },   -- EVA+3
        { Name = "Rabbit Mantle", Level = 4 },
    },
    Waist = {
        { Name = "Oneiros Cest", Level = 75 },        -- ACC+9  STP+3        H+3
        { Name = "Virtuoso Belt", Level = 54 },       -- ACC+12                 ATK+4
        { Name = "Griot Belt", Level = 28 },          -- HP+5 H+2
        { Name = "Lizard Belt +1", Level = 17 },      -- HP+5 DEX+2
        { Name = "Leather Belt +1", Level = 7 },      -- HP+10 AGI+1
    },
    Legs  = {
        { Name = "Skadi's Chausses", Level = 75 },    -- ACC+4 ATK+5 STP+7+3 H+2
        { Name = "Acrobat's Breeches", Level = 70 },  --                     H+2 TA+2 EVA+11
        { Name = "Raptor Trousers", Level = 50 },     -- ACC+5
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2 H+2
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Skadi's Jambeaux", Level = 75 },    -- ACC+5 H+3
        { Name = "Raptor Ledelsens", Level = 48 },
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

sets.Engaged_TH_Priority = {
    Main  = {
        { Name = "Thief's Knife", Level = 70 },
    },
    Hands = {
        { Name = "Adhemar Wristbands", Level = 75 },  -- ACC+10 ATK+10 H+3 TH+1
    },
};
sets.Idle_TH_Priority = sets.Engaged_TH_Priority;

sets.Idle_Default_Priority = profile.MiniSwap.DeepCopy(sets.Engaged_Default_Priority)
sets.Idle_Default_Priority.Head = {
    -- { Name = "Rog. Bonnet +1", Level = 74 },          -- EVA+10  -- STORED
    { Name = "Wivre Mask", Level = 65 },              -- EVA+10
    { Name = "Emperor Hairpin", Level = 50 },         -- EVA+10
    { Name = "Garrison Sallet +1", Level = 20 },      -- Regen+1 under lv.50
    { Name = "Cmp. Eye Circlet", Level = 9 },         -- EVA+5         -- EVA+3
    "Coven Hat",
};
sets.Idle_Default_Priority.Neck = {
    { Name = "Oneiros Torque", Level = 75 },          -- EVA+5 PDT-2
    table.unpack(sets.Idle_Default_Priority.Neck),
};
sets.Idle_Default_Priority.Ring1 = {
    { Name = "Defending Ring", Level = 70 },      -- DT-10
    table.unpack(sets.Idle_Default_Priority.Ring1),
};
sets.Idle_Default_Priority.Ring2 = {
        -- Wish: Merman's Ring (Coral Ring +1) [MDT-4]
    { Name = "Coral Ring", Level = 70 },              -- MDT-3
    table.unpack(sets.Idle_Default_Priority.Ring2),
};
sets.Idle_Default_Priority.Legs = {
    { Name = "Acrobat's Breeches", Level = 75 },      -- EVA+11
    table.unpack(sets.Idle_Default_Priority.Legs),
};
sets.Idle_Default_Priority.Feet = {
    { Name = "Skadi's Jambeaux", Level = 75 },        -- MVT+19
    { Name = "Strider Boots", Level = 20 },           -- MVT+18
    { Name = "Leaping Boots", Level = 7 },
    table.unpack(sets.Idle_Default_Priority.Feet),
};

sets.Resting_Default_Priority = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },   -- HHP+2
    },
};

-- Goal: Snapshot & Rapid Shot
sets.Preshot_Default = {}

-- Goal: RACC, RATK, STP, Crit, Recycle, Etc
sets.Midshot_Default = {
    Head  = {
        -- { Name = "Adhemar Bonnet", Level = 75 },      -- RACC+9 RATK+9  -- STORED
    },
    Ring1 = {
            -- Wish: Merman's Ring (Coral Ring +1) [RACC+10]
        { Name = "Coral Ring", Level = 70 },          -- RACC+9
    },
    Ring2 = {
            -- Wish: Merman's Ring (Coral Ring +1) [RACC+10]
        { Name = "Coral Ring", Level = 70 },          -- RACC+9
    },
    Back  = {
        { Name = "Hunter's Shawl", Level = 30 },      -- RACC+3 RATK+3 STR+2 AGI+2
    },
    Legs  = {
        { Name = "Skadi's Chausses", Level = 75 },    -- RACC+4 RATK+5 STP+7 (Wish Aug: STP+3)
    },
    Feet  = {
        { Name = "Skadi's Jambeaux", Level = 75 },    -- RACC+5
    }
}; 

-- Goal: Waltz Potency > CHR (caster) & VIT (target)
sets.JA_CuringWaltz_Priority = {
    Head  = {
        { Name = "Shade Tiara", Level = 25 },         -- CHR+2
    },
    Neck  = {
        { Name = "Bird Whistle", Level = 15 },        -- CHR+3
    },
    Body  = {
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
        -- { Name = "Adhemar Gamashes", Level = 75 },    -- VIT+5  -- STORED
        { Name = "Skadi's Jambeaux", Level = 75 },    -- VIT+3
    },
}
sets.JA_CuringWaltzII_Priority = sets.JA_CuringWaltz_Priority
sets.JA_DivineWaltz_Priority = sets.JA_CuringWaltz_Priority

sets.JA_Flee_Priority = {
    Feet = {
        { Name = "Rogue's Poulaines", Level = 60 },   -- Flee+15s
    },
};

sets.JA_Steal_Priority = {
    Head  = {
        -- { Name = "Rogue's Bonnet", Level = 54 },      -- Turned into +1, worth getting again for Steal+1?
    },
    Neck  = {
        -- { Name = "Rabbit Charm", Level = 7 },         -- Steal+1  -- STORED
    },
    Hands = {
        -- { Name = "Thief's Kote", Level = 70 },        -- Steal+3  -- STORED
        -- { Name = "Rogue's Armlets", Level = 52 },     -- Steal+1  -- STORED
    },
    Legs  = {
        -- { Name = "Assassin's Culottes", Level = 72 }, -- Steal+5  -- STORED
        -- { Name = "Rogue's Culottes", Level = 56 },    -- Steal+1  -- STORED
    },
    Feet = {
        { Name = "Rogue's Poulaines", Level = 60 },   -- Steal+2
    },
};

-- Goal: ACC & DEX & AGI
sets.WS_Default_Priority = {
    Head  = {
        -- { Name = "Adhemar Bonnet", Level = 75 },      -- DEX+6 AGI+6 Crit+3  -- STORED
            -- Wish: Aug: ATK+5 ACC+5 DA+2
        { Name = "Assailant's Visor", Level = 70 },   -- STR+5 DEX+11
        { Name = "Emperor Hairpin", Level = 24 },     -- DEX+3 AGI+3
    },
    Neck  = {
        { Name = "Love Torque", Level = 73 },         -- DEX+5 DaggerSkill+7
        { Name = "Spike Necklace", Level = 21 },      -- DEX+3       STR+3
        -- { Name = "Rabbit Charm", Level = 7 },         -- DEX+1 AGI+1  -- STORED
        { Name = "Pile Chain", Level = 3 },           --             ACC+1
    },
    Body = {
            -- Wish: Lv.75 Skadi's Cuirie [DEX+8 AGI+8 ACC+10 ATK+5]
        { Name = "Adhemar Wristbands", Level = 75 },  --             ACC+10 ATK+10 Enhance Trick Attack
        { Name = "Brigandine +1", Level = 45 },       -- DEX+3 AGI+3 STR+3  ATK+4
        { Name = "Garrison Tunica +1", Level = 20 },  -- DEX+2
    },
    Hands = {
        { Name = "Swift Gages", Level = 75 },         -- DEX+5 AGI+8         ATK+5
        -- { Name = "Adhemar Wristbands", Level = 75 },  --             ACC+10 ATK+10 Enhance Trick Attack  -- STORED
        { Name = "Raptor Gloves", Level = 48 },       -- DEX+4
        { Name = "Battle Gloves", Level = 48 },       --             ACC+3
    },
    Ring1 = {
        { Name = "Zilant Ring", Level = 75 },         -- DEX+6       ACC+3
        { Name = "Toreador's Ring", Level = 57 },     --             ACC+7
        { Name = "Ecphoria Ring", Level = 49 },       --             ACC+4
        { Name = "Balance Ring", Level = 14 },        -- DEX+2
        "San d'Orian Ring",
    },
    Ring2 = {
        { Name = "Rajas Ring", Level = 30 },          -- DEX+2~5                    STR+2~5
        { Name = "Balance Ring", Level = 14 },        -- DEX+2
        "Provenance Ring",
    },
    Back  = {
        {Name = "Cuchulain's Mantle", Level = 74 },   -- DEX+4       ACC+4
        { Name = "Amemet Mantle +1", Level = 61 },    --        ATK+15 STR+2
        {Name = "Exile's Cloak", Level = 50 },        --                     ATK+3  STR+4
        {Name = "Lizard Mantle +1", Level = 17 },     -- STR+1
    },
    Waist = {
        {Name = "Fatality Belt", Level = 75 },        -- DEX+4       ACC+4
        {Name = "Virtuoso Belt", Level = 54 },        --             ACC+12  ATK+4
        {Name = "Lizard Belt +1", Level = 17 },       -- DEX+2
    },
    Legs  = {
        -- { Name = "Adhemar Kecks", Level = 75 },       -- DEX+4 AGI+4  -- STORED
        { Name = "Acrobat's Breeches", Level = 70 },  -- DEX+2 AGI+9 TA+2
    },
    Feet  = {
        { Name = "Skadi's Jambeaux", Level = 75 },    --       AGI+3                      TA+2
        { Name = "Leaping Boots", Level = 7 },        --       AGI+3  ACC+5         STR+3
    },
};

-- Goal: fTP & ACC & AGI & DA & TA & CRIT
sets.WS_Exenterator = {
    -- Head  = "Adhemar Bonnet",                         -- AGI+6  DEX+6  Crit+3  -- STORED
        -- Wish: Dragon Cap +1 [AGI+5 (Aug) AGI+6 Dagger+8]
    Neck  = "Soil Gorget",                            -- fTP+0.1
        -- Wish: Fotia Gorget [WSAcc+10 WSD+10%]
    Body  = "Adhemar Jacket",                         --             ATK+10 Crit+
        -- Wish: Lv.75 Dragon Harness +1 [DEX+7 AGI+7 ATK+12 (Aug) DEX+3 AGI+3 ATK+12 Skillchain Dmg+4]
        -- Wish: Lv.75 Skadi's Cuirie [DEX+8 AGI+8 ACC+10 ATK+5]
    Hands = "Swift Gages",                            -- AGI+8 DA+2 ATK+5
    Ring1 = "Kusha's Ring",                           --        ACC+6   ATK+3 (set with Lava's Ring)
    Ring2 = "Lava's Ring",                            --        ACC+6   ATK+3 (set with Kusha's Ring)
    Back  = "Cuchulain's Mantle",                     --        DEX+4              ACC+4  STR+4
    Waist = "Virtuoso Belt",                          --                    ATK+4  ACC+12
    Legs  = "Acrobat's Breeches",                     -- AGI+8  DEX+2  TA+2
    Feet  = "Skadi's Jambeauxs",                      -- AGI+3
        -- Wish: Dragon Leggings +1 [AGI+4 (Aug) Acc+8 Atk+8 Crit+3]
};

profile.Sets = sets;
return profile;