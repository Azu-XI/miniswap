local profile = gFunc.LoadFile('common/miniswap.lua');
local sets = {};

sets.Engaged_Default_Priority = {
    Main  = {
        { Name = "Mujin Tanto", Level = 75 },
            -- TODO: Some katanas from lv.40
        { Name = "Nikkariaoe", Level = 30 },
        { Name = "Gassan", Level = 15 },
        { Name = "Xiphos +1", Level = 7 },
        "Wax Sword +1",
    },
    Sub   = {
        { Name = "Taikogane", Level = 75 },
            -- TODO: Some katanas from lv.40
        { Name = "Gassan", Level = 15 },
        { Name = "Wax Sword +1", Level = 10 },
    },
    Range = {
        { Name = "Rogetsurin", Level = 15 },
    },
    Ammo  = {
        { Name = "remove", Level = 15 },
        "Happy Egg",
    },
    Head  = {
        { Name = "Usukane Somen", Level = 75 },       -- STR+3 AGI+3 ACC+7 EVA+7 H+3 Counter+4 DT-4
        { Name = "Wivre Mask", Level = 65 },          -- EVA+10 ACC+5 DEX+3 STR+2
        { Name = "Shinobi Hachigane", Level = 49 },   -- ATK+2 H+2 Counter+3
        { Name = "Heroic Hairpin", Level = 30 },      -- PDT-2 H+2 DW+3
        { Name = "Brass Cap +1", Level = 11 },
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Outlaw's Earring", Level = 50 },
        { Name = "Cassie Earring", Level = 1 },
    },
    Ear2 = {
        { Name = "Insomnia Earring", Level = 50 },
        { Name = "Pigeon Earring", Level = 33 },      -- HP+20 MP+15 STR+1 ATK+2
        { Name = "Tribal Earring", Level = 20 },
        "remove",
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
        { Name = "Kenpogi +1", Level = 8 },           -- HP+5 DEX+1 AGI+1
        { Name = "Leather Vest +1", Level = 7 },
        "Tidal Talisman",
    },
    Hands = {
        { Name = "Swift Gages", Level = 75 },         -- STP+2 Haste+4 DA+2 ATK+5
        { Name = "Shinobi Tekko", Level = 49 },
        -- { Name = "Garrison Gloves +1", Level = 20 },     -- VIT+2
        { Name = "Guerilla Gloves", Level = 13 },
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
        { Name = "Amemet Mantle +1", Level = 61 },    --        STR+2  ATK+15
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
        { Name = "Byakko's Haidate", Level = 75 },    -- STP+3 H+5  -- Wish: HQ Augments
        { Name = "Shinobi Hakama", Level = 49 },
        -- { Name = "Jujitsu Sitabaki", Level = 37 },  -- Not worth against garrison hose if not augmented, and even then?
        { Name = "Garrison Hose +1", Level = 20 },   -- STR+2 Haste+2
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Usukane Sune-Ate", Level = 75 },    -- ACC+7 ATK+7 STP+7 H+2
        -- { Name = "Cotton Gaiters", Level = 23 },
        -- { Name = "Ryl.Ftm. Clogs", Level = 20 },
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

sets.Idle_Default_Priority = profile.MiniSwap.DeepCopy(sets.Engaged_Default_Priority)
sets.Idle_Default_Priority.Head = {
    { Name = "Usukane Somen", Level = 75 },           -- EVA+7 DT-4
    { Name = "Wivre Mask", Level = 65 },              -- EVA+10
    { Name = "Emperor Hairpin", Level = 50 },         -- EVA+10
    { Name = "Garrison Sallet +1", Level = 20 },      -- Regen+1 under lv.50
    { Name = "Brass Cap +1", Level = 11 },
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

sets.Resting_Default_Priority = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
};

sets.WS_Default_Priority = {
    Head  = {
        { Name = "Wivre Mask", Level = 65 },          -- STR+2       ACC+5
        { Name = "Shade Tiara", Level = 25 },         -- STR+2
    },
    Neck  = {
        { Name = "Justice Torque", Level = 73 },      -- STR+5       GK+7
        { Name = "Peacock Charm", Level = 33 },       --             ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3                     DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Body = {
        { Name = "Kirin's Osode", Level = 75 },       -- AllStats+10    ATK+3   DA+3  CritDmg+3
        { Name = "Scorpion Harness", Level = 57 },    --             ACC+10
    },
    Hands = {
            -- Wish: Lv.70 Alkyoneus's Brc. [STR+11]
        { Name = "Custom M Gloves", Level = 27 },     -- STR+3
        { Name = "Cotton Tekko +1", Level = 18 },     -- STR+2               ATK+4
        { Name = "Guerilla Gloves", Level = 13 },     --             ACC+2
    },
    Ring1 = {
        { Name = "Strigoi Ring", Level = 75 },        -- STR+6               ATK+3
        { Name = "Toreador's Ring", Level = 57 },     --              ACC+7
        { Name = "Ecphoria Ring", Level = 49 },       --              ACC+4
        { Name = "Balance Ring", Level = 14 },        -- DEX+2
        "San d'Orian Ring",
    },
    Ring2 = {
        { Name = "Rajas Ring", Level = 30 },          -- STR+2~5                   DEX+2~5
        { Name = "Balance Ring", Level = 14 },        -- DEX+2
        "Provenance Ring",
    },
    Back  = {
        { Name = "Cuchulain's Mantle", Level = 74 },  -- STR+4        ACC+4        DEX+4
        { Name = "Amemet Mantle +1", Level = 61 },    --        STR+2  ATK+15  RATK+15
        { Name = "Earth Mantle", Level = 40 },        -- STR+2
        { Name = "Lizard Mantle +1", Level = 17 },    -- STR+1
    },
    Waist = {
        { Name = "Virtuoso Belt", Level = 54 },       --              ACC+12 ATK+4
    },
    Legs  = {
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2
    },
    Feet  = {
        { Name = "Marine M Boots", Level = 62},       -- STR+3                     DEX+3
    },
};

profile.Sets = sets;
return profile;