local profile = gFunc.LoadFile('common/miniswap.lua');
local sets = {};

sets.Engaged_Default_Priority = {
    Main  = {
        { Name = "Archer's Knife", Level = 28 },      -- RACC+10
        { Name = "Terrapin Traitor", Level = 20 },    -- OAT2 under lv.50
        { Name = "Xiphos +1 ", Level = 7 },
        "Wax Sword +1",
    },
    Sub   = {
        { Name = "Mercurial Kris", Level = 50 },      -- OAT2~3
        { Name = "Terrapin Traitor", Level = 28 },    -- OAT2 under lv.50
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
        "Happy Egg",
    },
    Head  = {
        { Name = "Wivre Mask", Level = 65 },          -- EVA+10 ACC+5 DEX+3 STR+2
        { Name = "Heroic Hairpin", Level = 30 },      -- PDT-2 H+2 DW+3
        { Name = "Brass Cap +1", Level = 11 },
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Cassie Earring", Level = 1 },
    },
    Ear2 = {
        { Name = "Outlaw's Earring", Level = 50 },    -- DEX+2 ATK+4
        { Name = "Pigeon Earring", Level = 33 },      -- HP+20 MP+15 STR+1 ATK+2
        { Name = "Tribal Earring", Level = 20 },
        "remove",
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10 RACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },           -- ACC+1
    },
    Body  = {
        { Name = "Brigandine +1", Level = 45 },       -- STR+3 DEX+3 AGI+3 VIT+3 HP+10 MP+10 ATK+4
            -- Wish: Full Noct Set @30
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Scale Mail", Level = 10 },
        { Name = "Leather Vest +1", Level = 7 },
        "Tidal Talisman",
    },
    Hands = {
        { Name = "Raptor Gloves", Level = 48 },
        { Name = "Garrison Gloves +1", Level = 20 },     -- VIT+2
        { Name = "Guerilla Gloves", Level = 13 },
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
        { Name = "Amemet Mantle +1", Level = 61 },    --        STR+2  ATK+15 RATK+15
        { Name = "Exile's Cloak", Level = 50 },       --        STR+4  ATK+3
        { Name = "Nomad's Mantle", Level = 24 },      -- EVA+3  AGI+1  DW+1
        { Name = "Traveler's Mantle", Level = 12 },   -- EVA+3
        { Name = "Rabbit Mantle", Level = 4 },
    },
    Waist = {
        { Name = "Virtuoso Belt", Level = 54 },       -- ACC+12                 ATK+4
        { Name = "Griot Belt", Level = 28 },          -- HP+5 H+2
        { Name = "Lizard Belt +1", Level = 17 },      -- HP+5 DEX+2
        { Name = "Leather Belt +1", Level = 7 },      -- HP+10 AGI+1
    },
    Legs  = {
        { Name = "Skadi's Chausses", Level = 75 },    -- RACC+4 RATK+5 STP+7+3 H+2
        { Name = "Raptor Trousers", Level = 48 },
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2 Haste+2
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Skadi's Jambeaux", Level = 75 },    -- RACC+5 ACC+5 H+3
        { Name = "Raptor Ledelsens", Level = 48 },    -- Haste+2
        { Name = "Greaves", Level = 24 },
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

sets.Idle_Default_Priority = profile.MiniSwap.DeepCopy(sets.Engaged_Default_Priority)
sets.Idle_Default_Priority.Head = {
    { Name = "Emperor Hairpin", Level = 50 },         -- EVA+10
    { Name = "Garrison Sallet +1", Level = 20 },      -- Regen+1 under lv.50
    { Name = "Brass Cap +1", Level = 11 },
    "Coven Hat",
};
sets.Idle_Default_Priority.Neck = {
    { Name = "Pegasus Collar", Level = 20 },          -- MvtSpeed+12%
    { Name = "Justice Badge", Level = 7 },            -- MND+3
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
sets.Idle_Default_Priority.Feet = {
    { Name = "Skadi's Jambeaux", Level = 75 },        -- MVT+19
    table.unpack(sets.Idle_Default_Priority.Feet),
};

sets.Resting_Default_Priority = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
};

-- Goal: Snapshot & Rapid Shot
sets.Preshot_Default = {}

-- Goal: RACC, RATK, STP, Crit, Recycle, Etc
sets.Midshot_Default = {
    Ring1 = {
            -- Wish: Merman's Ring (Coral Ring +1) [RACC+10]
        { Name = "Coral Ring", Level = 70 },          -- RACC+9
    },
    Ring2 = {
            -- Wish: Merman's Ring (Coral Ring +1) [RACC+10]
        { Name = "Coral Ring", Level = 70 },          -- RACC+9
    },
    Back  = {
        { Name = "Amemet Mantle +1", Level = 61 },    --        STR+2  ATK+15  RATK+15
        { Name = "Hunter's Shawl", Level = 30 },      -- RACC+3 RATK+3 STR+2 AGI+2
    },
    Legs  = {
        { Name = "Skadi's Chausses", Level = 75 },    -- RACC+4 RATK+5 STP+7 (Wish Aug: STP+3)
    },
    Feet  = {
        { Name = "Skadi's Jambeaux", Level = 75 },    -- RACC+5
    }
}; 

sets.WS_Default_Priority = {
    Head  = {
        { Name = "Shade Tiara", Level = 25 },         -- STR+2
    },
    Ear1 = {
        -- TODO
    },
    Ear2 = {
        -- TODO
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       --             ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Body = {
        { Name = "Scorpion Harness", Level = 57 },    --                 ACC+10
    },
    Hands = {
        { Name = "Swift Gages", Level = 75 },         --               ATK+5 DA+2 AGI+8
        { Name = "Custom M Gloves", Level = 27 },     --       STR+3
        { Name = "Guerilla Gloves", Level = 13 },     -- ACC+2
    },
    Ring1 = {
        { Name = "Strigoi Ring", Level = 75 },        --       STR+6   ATK+3
        { Name = "Toreador's Ring", Level = 57 },     -- ACC+7
        { Name = "Ecphoria Ring", Level = 49 },       -- ACC+4
        { Name = "Balance Ring", Level = 14 },        --                       DEX+2
        "San d'Orian Ring",
    },
    Ring2 = {
        { Name = "Rajas Ring", Level = 30 },          --       STR+2~5         DEX+2~5
        { Name = "Balance Ring", Level = 14 },        --                       DEX+2
        "Provenance Ring",
    },
    Back  = {
        { Name = "Amemet Mantle +1", Level = 61 },    --        STR+2  ATK+15 RATK+5
        { Name = "Hunter's Shawl", Level = 30 },      -- RACC+3 RATK+3 STR+2 AGI+2
    },
    Waist = {
        { Name = "Virtuoso Belt", Level = 54 },       -- ACC+12        ATK+4
    },
    Legs  = {
        { Name = "Garrison Hose +1", Level = 20 },    --        STR+2
    },
    Feet  = {
        { Name = "Marine M Boots", Level = 62},       --        STR+3 DEX+3
    },
};

profile.Sets = sets;
return profile;