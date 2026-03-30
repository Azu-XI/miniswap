local profile = gFunc.LoadFile('common/miniswap.lua');
local sets = {};

sets.Engaged_Default_Priority = {
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
        { Name = "Wivre Mask", Level = 65 },          -- EVA+10 ACC+5 DEX+3 STR+2
        { Name = "Heroic Hairpin", Level = 30 },      -- PDT-2 H+2 DW+3
        { Name = "Entrancing Ribbon", Level = 11 },
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Wilder. Earring +1", Level = 45 },  -- ACC+2 PetACC+2
        "remove",
    },
    Ear2 = {
        { Name = "Assault Earring", Level = 58 },     -- ACC+2 ATK+5 EVA-2 DEF-3
        { Name = "Pigeon Earring", Level = 33 },      -- HP+20 MP+15 STR+1 ATK+2
        { Name = "Tribal Earring", Level = 20 },
        "remove",
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
        { Name = "Swift Gages", Level = 75 },         -- STP+2 H+4 DA+2 ATK+5
        { Name = "Axe. Gauntlets", Level = 20 },      -- H+2 AxeSKill+7
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
        { Name = "Virtuoso Belt", Level = 54 },       -- ACC+12                 ATK+4
        { Name = "Griot Belt", Level = 28 },          -- HP+5 H+2
        { Name = "Lizard Belt +1", Level = 17 },      -- HP+5 DEX+2
        { Name = "Leather Belt +1", Level = 7 },      -- HP+10 AGI+1
    },
    Legs  = {
        { Name = "Skadi's Chausses", Level = 75 },    -- ACC+4 ATK+5 STP+7+3 H+2
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2 H+2
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Skadi's Jambeaux", Level = 75 },    -- ACC+5 H+3
        { Name = "Raptor Ledelsens", Level = 48 },    -- H+2
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
sets.Idle_Default_Priority.Feet = {
    { Name = "Skadi's Jambeaux", Level = 75 },        -- MVT+19
    table.unpack(sets.Idle_Default_Priority.Feet),
};

-- Goal: Pet Acc/Atk/DA/...
local petDefaultPriority = {
    Head  = {
        { Name = "Entrancing Ribbon", Level = 11 },   -- PetACC+2 PetRACC+2
    },
    Ear1 = {
        { Name = "Wilder. Earring +1", Level = 45 },  -- PetACC+2
    },
    Body  = {
        { Name = "Aega's Doublet", Level = 32 },      -- PetACC+3 PetATK+3
    },
    Hands = {
        { Name = "Raptor Gloves", Level = 48 },       -- PetATK+5 PetRATK+5
    },
    Back  = {
        { Name = "Aife's Mantle", Level = 75 },       -- PetATK+10          ACC+4 STP+2
        { Name = "Fidelity Mantle", Level = 30 },     -- PetSTP+3
    },
    Waist = {
            -- Wish: Lv.73 Companion Belt +0/1 [PetACC+8/12 PetRACC+8/12 PetDA+0/1%]
            -- Wish: Lv.70 Bolt Stone [PetDEX+5 PetH+3 (Aug) PetATK+3 PetH+3]
    },
    Legs  = {
            -- Wish: Lv.25 Herder's Subligar [PetACC+5 PetRACC+5 (Aug) DEX+3 PetACC+3 PetRACC+3]
    },
    Feet  = {
        { Name = "Mettle Leggings", Level = 19},      -- PetATK+2 PetRATK+2
    },
};
sets.Idle_Pet_Default_Priority = petDefaultPriority;
sets.Engaged_Pet_Default_Priority = petDefaultPriority;

sets.JA_Charm_Priority = {
    Head  = {
        { Name = "Garrison Sallet +1", Level = 20 },  -- CHR+2
        { Name = "Entrancing Ribbon", Level = 11 },     -- CHR+2
    },
    Neck  = {
        { Name = "Bird Whistle", Level = 15 },          -- CHR+3
    },
    Body  = {
        { Name = "Garrison Tunica +1", Level = 20 },  -- CHR+2
    },
    Hands = {
        { Name = "Raptor Gloves", Level = 48 },         -- CHR+4
    },
    Feet  = {
        { Name = "Raptor Ledelsens", Level = 48 },      -- CHR+4
    },
};

sets.Resting = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
    Feet  = {
        { Name = "Garrison Boots +1", Level = 20 },  -- HMP+2
    }
};

-- Goal: STR & ACC
sets.WS_Default_Priority = {
    Head  = {
        { Name = "Sipahi Turban", Level = 59 },       -- STR+3 DEX+2
        { Name = "Shade Tiara", Level = 25 },         -- STR+2
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       --             ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Body = {
        { Name = "Kirin's Osode", Level = 75 },       -- AllStats+10    ATK+3   DA+3  CritDmg+3
        { Name = "Scorpion Harness", Level = 57 },    --                 ACC+10
    },
    Hands = {
            -- Wish: Lv.70 Alkyoneus's Brc. [STR+11]
        { Name = "Swift Gages", Level = 75 },         -- STP+2 DA+2 ATK+5
        { Name = "Custom M Gloves", Level = 27 },     -- STR+3
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
        { Name = "Cuchulain's Mantle", Level = 74 },  -- ACC+4                 STR+4  DEX+4
        { Name = "Amemet Mantle +1", Level = 61 },    --        STR+2  ATK+15  RATK+15
--STORED{ Name = "Earth Mantle", Level = 40 },        -- STR+2 VIT+1
--STORED{ Name = "Lizard Mantle +1", Level = 17 },    -- STR+1
    },
    Waist = {
        { Name = "Virtuoso Belt", Level = 54 },       -- ACC+12                 ATK+4
    },
    Legs  = {
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2
    },
    Feet  = {
        { Name = "Marine M Boots", Level = 62},       -- STR+3 DEX+3
    },
};

profile.Sets = sets;
return profile;