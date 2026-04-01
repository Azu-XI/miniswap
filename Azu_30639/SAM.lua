local profile = gFunc.LoadFile('common/miniswap.lua');
local sets = {};

sets.LockStyle = {
    Head  = "empty",
    Body  = "Vampire Cloack",
    Hands = "Swift Gages",
    Legs  = "Saotome Haidate",
    Feet  = "Usukane Sune-Ate",
};

sets.Engaged_Default_Priority = {
    Main  = {
--STORED{ Name = "Azukinagamitsu", Level = 75 },
--STORED{ Name = "Jindachi +1", Level = 54 },
--STORED{ Name = "Mikazuki", Level = 44 },
--STORED{ Name = "Kanesada", Level = 26 },
--STORED{ Name = "Katayama", Level = 10 },
    },
    Sub   = {
            -- Wish: Lv.74 Gatta Strap +0/1 [STR+3/4 DEX+3/4 ATK+3/4] {Leathercraft GuildNM}
        { Name = "Mythril Grip +1", Level = 55 },     -- STR+2 VIT+2 ACC+2
        { Name = "Tigris Grip", Level = 40 },         -- STP+2 DEX+3 ATK+2
            -- Wish: Lv.20 Orcish Axegrip [HP+15 PDT-2 (Aug) DEF+4 ACC+3 Enm+2]
    },
    Range = {
--STORED{ Name = "Ajjub Bow", Level = 75 },
        { Name = "War Bow +1", Level = 50 },
        { Name = "Battle Bow +1", Level = 40 },
        { Name = "Great Bow +1", Level = 30 },
        { Name = "Self Bow +1", Level = 7 },
    },
    Head  = {
        { Name = "Usukane Somen", Level = 75 },       -- STR+3 AGI+3 ACC+7 EVA+7 H+3 Counter+4 DT-4
        { Name = "Wivre Mask", Level = 65 },          -- EVA+10 ACC+5 DEX+3 STR+2
        { Name = "Shinobi Hachigane", Level = 49 },   -- ATK+2 H+2 Counter+3
        { Name = "Heroic Hairpin", Level = 30 },      -- PDT-2 H+2 DW+3
        { Name = "Emperor Hairpin", Level = 24 },     -- EVA+10
        { Name = "Brass Cap +1", Level = 11 },
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Brutal Earring", Level = 75 },      -- DA+5 STP+1
        { Name = "Outlaw's Earring", Level = 50 },    -- DEX+2 ATK+4
        { Name = "Cassie Earring", Level = 1 },
    },
    Ear2 = {
        { Name = "Emberpearl Earring", Level = 75 },  -- STR+2
        { Name = "Pigeon Earring", Level = 33 },      -- HP+20 MP+15 STR+1 ATK+2
        { Name = "Tribal Earring", Level = 20 },
        "remove",
    },
    Neck  = {
        { Name = "Justice Torque", Level = 73 },      -- GK+7 STR+5
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Armiger's Lace", Level = 9 },
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        { Name = "Kirin's Osode", Level = 75 },       -- AllStats+10    ATK+3   DA+3  CritDmg+3
        { Name = "Scorpion Harness", Level = 57 },    -- ACC+10  EVA+10
        { Name = "Shinobi Gi", Level = 49 },          -- ACC+8 ATK+8 MDT-2
        { Name = "Brigandine +1", Level = 45 },       -- STR+3 DEX+3 AGI+3 VIT+3 HP+10 MP+10 ATK+4
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Kenpogi +1", Level = 8 },           -- HP+5 DEX+1 AGI+1
        "Tidal Talisman",
    },
    Hands = {
        { Name = "Swift Gages", Level = 75 },         -- STP+2 Haste+4 DA+2 ATK+5
        { Name = "Shinobi Tekko", Level = 49 },       -- ACC+8 ATK+8 STP+2
        { Name = "Gothic Gauntlets", Level = 43 },    -- STR+3
        { Name = "Dino Gloves", Level = 48 },
        { Name = "Guerilla Gloves", Level = 13 },     -- ACC+2 ATK+1
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
        { Name = "Amemet Mantle +1", Level = 61 },    --                ATK+15 STR+2
        { Name = "Exile's Cloak", Level = 50 },       --                ATK+3  STR+4
        { Name = "Nomad's Mantle", Level = 24 },      --         EVA+3                       AGI+1  DW+1
        { Name = "Traveler's Mantle", Level = 12 },   --         EVA+3
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
        { Name = "Byakko's Haidate", Level = 75 },    -- STP+3 H+5  -- Wish: HQ Augments
        { Name = "Shinobi Hakama", Level = 49 },      -- ATK+8 H+2
        { Name = "Dino Trousers", Level = 48 },
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2 Haste+2
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Usukane Sune-Ate", Level = 75 },    -- ACC+7 ATK+7 STP+7 H+2
        { Name = "Shinobi Kyahan", Level = 49 },      -- ACC+8 H+2 MDT-3
        { Name = "Dino Ledelsens", Level = 48 },      -- H+2
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

-- Goal: Enmity+
sets.JA_Provoke_Priority = {
    Head  = {
            -- Wish: Lv.1 Cache-nez [Enm+2]
    },
    Hands = {
        { Name = "Gothic Gauntlets", Level = 43 },    -- Enm+2
    },
    Ring2 = {
        { Name = "Sattva Ring", Level = 30 },         -- Enm+3
    },
    Back  = {
--STORED{ Name = "Ram Mantle", Level = 38 },          -- Enm+2
    },
    Waist = {
            -- Wish: Lv.71 Warwolf Belt [Enm+3]
    },
    Feet  = {
            -- Wish: Lv.43 Gothic Sabatons [Enm+2] {Behemoth's Dominion - Treasure Casket}
    },
};

sets.JA_Meditate_Priority = {
    Head  = { Name = "Myochin Kabuto", Level = 60 },  -- +20~40 TP
    Hands = { Name = "Saotome Kote", Level = 73 },    -- +20~40 TP
};

-- Goal: STR & ACC
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
--STORED{ Name = "Earth Mantle", Level = 40 },        -- STR+2 VIT+1
--STORED{ Name = "Lizard Mantle +1", Level = 17 },    -- STR+1
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