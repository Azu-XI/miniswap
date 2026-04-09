local profile = gFunc.LoadFile('common/miniswap.lua');
local sets = {};

sets.JA_AncientCircle = {
    Legs = {
        { Name = "Drachen Brais", Level = 52 },
    }
};

-- Goal: STR & VIT & ACC & Jump+ & Jump TP+
-- Note: Base damage (+fSTR) multiplier of (1 + VIT/256)
sets.JA_Jump_Priority = {
    Head  = {
        { Name = "Shade Tiara", Level = 25 },         -- STR+2
    },
    Neck  = {
        { Name = "Spike Necklace", Level = 21 },      -- STR+3
        { Name = "Pile Chain", Level = 3 },           --              ACC+1
    },
    Body  = {
--STORED-- { Name = "Thrk. Breastplate", Level = 61 },   -- STR+3        ACC+7 ATK+7
        { Name = "Brigandine +1", Level = 45 },       --        VIT+3 ATK+4
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
    Ring2 = {
        { Name = "Rajas Ring", Level = 30 },          -- STR+2~5 DEX+2~5
    },
    Back  = {
--STORED{ Name = "Earth Mantle", Level = 40 },        -- STR+2 VIT+1
--STORED{ Name = "Lizard Mantle +1", Level = 17 },    -- STR+1
    },
    Waist = {
--STORED{ Name = "Marid Belt", Level = 45 },          -- STR+3 VIT+5
        { Name = "Vanguard Belt", Level = 45 },       -- STR+3              ATK+5
    },
    Legs  = {
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2
            },
    Feet  = {
        -- { Name = "Drachen Greaves", Level = 54 },     --                    ATK+10%
        { Name = "Power Sandals", Level = 18 },       --       VIT+3
    }
};

-- Goal: STR & ACC
-- Note: Base damage (+fSTR)
sets.JA_HighJump_Priority = {
    Head  = {
        { Name = "Shade Tiara", Level = 25 },         -- STR+2
    },
    Neck  = {
        { Name = "Spike Necklace", Level = 21 },      -- STR+3
        { Name = "Pile Chain", Level = 3 },           --              ACC+1
    },
    Body  = {
--STORED{ Name = "Thrk. Breastplate", Level = 61 },   -- STR+3        ACC+7 ATK+7
        { Name = "Brigandine +1", Level = 45 },       -- STR+3 ATK+4
    },
    Hands = {
        { Name = "Custom M Gloves", Level = 27 },     -- STR+3
    },
    Ring1 = {
        "San d'Orian Ring",                           -- STR+1
    },
    Ring2 = {
        { Name = "Rajas Ring", Level = 30 },          -- STR+2~5 DEX+2~5
    },
    Back  = {
--STORED{ Name = "Earth Mantle", Level = 40 },        -- STR+2 VIT+1
--STORED{ Name = "Lizard Mantle +1", Level = 17 },    -- STR+1
    },
    Waist = {
        { Name = "Vanguard Belt", Level = 45 },       -- STR+3              ATK+5
    },
    Legs  = {
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2
            },
    Feet  = {
        -- { Name = "Mettle Leggings +1", Level = 17 },  -- STR+1              ATK+2
    }
};

sets.Engaged_Default_Priority = {
    Main  = {
--STORED{ Name = "Kuakuakait", Level = 75 },
--STORED{ Name = "Gnd.Kgt. Lance", Level = 60 },
--STORED{ Name = "Mythril Lance +1", Level = 48 },
--STORED{ Name = "Peregrine", Level = 40 },
--STORED{ Name = "Military Spear", Level = 28 },
--STORED{ Name = "Platoon Lance", Level = 20 },
--STORED{ Name = "Pike", Level = 11 },
--STORED{ Name = "Bronze Spear", Level = 7 },
    },
    Sub   = {
            -- Wish: Lv.74 Gatta Strap +0/1 [STR+3/4 DEX+3/4 ATK+3/4] {Leathercraft GuildNM}
        { Name = "Mythril Grip +1", Level = 55 },     -- STR+2 VIT+2 ACC+2
        { Name = "Tigris Grip", Level = 40 },         -- STP+2 DEX+3 ATK+2
            -- Wish: Lv.20 Orcish Axegrip [HP+15 PDT-2 (Aug) DEF+4 ACC+3 Enm+2]
    },
    Ammo = {
        { Name = "Bibiki seashell", Level = 60 },     -- VIT+4
        "Happy Egg",
    },
    Head  = {
        { Name = "Wivre Mask", Level = 65 },          -- EVA+10 ACC+5 DEX+3 STR+2
        { Name = "Heroic Hairpin", Level = 30 },      -- PDT-2 H+2 DW+3
        { Name = "Entrancing Ribbon", Level = 11 },
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Brutal Earring", Level = 75 },      -- DA+5 STP+1
        { Name = "Outlaw's Earring", Level = 50 },    -- DEX+2 ATK+4 EVA+4
        { Name = "Cassie Earring", Level = 1 },
    },
    Ear2 = {
        { Name = "Assault Earring", Level = 58 },     -- ACC+2 ATK+5 EVA-2 DEF-3
        { Name = "Wilder. Earring +1", Level = 45 },  -- ACC+2 PetACC+2
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
--STORED{ Name = "Thrk. Breastplate", Level = 61 },   -- STR+3 DEX+3   ACC+7 ATK+7 STP+3
        { Name = "Brigandine +1", Level = 45 },       -- STR+3 DEX+3 AGI+3 VIT+3 HP+10 MP+10 ATK+4
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Scale Mail", Level = 10 },
        { Name = "Leather Vest +1", Level = 7 },
        "Tidal Talisman",
    },
    Hands = {
        { Name = "Swift Gages", Level = 75 },         -- STP+2 H+4 DA+2 ATK+5
        { Name = "Dino Gloves", Level = 48 },
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
        { Name = "Earth Mantle", Level = 40 },        --        STR+2
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
        { Name = "Dino Trousers", Level = 48 },
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2 H+2
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Dino Ledelsens", Level = 48 },      -- H+2
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

sets.Resting_Default_Priority = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
};

-- Goal: Pet Acc/Atk/DA/...
local petDefaultPriority = {
    Head  = {
        { Name = "Entrancing Ribbon", Level = 11 },   -- PetACC+2 PetRACC+2
    },
    Ear1 = {
        { Name = "Wilder. Earring +1", Level = 45 },  -- ACC+2 PetACC+2
    }
    Body  = {
--STORED{ Name = "Thrk. Breastplate", Level = 61 },   -- PetRegen+2 (and some DEF for master)
        { Name = "Aega's Doublet", Level = 32 },      -- PetACC+3 PetATK+3
    },
    Hands = {
        { Name = "Dino Gloves", Level = 48 },         -- PetATK+5 PetRATK+5
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

-- TODO: AF head in precast, relic head in midcast

-- Goal: ACC (Multi-hits WS) & STR (Generic Mod)
-- Goal: STR & ACC
sets.WS_Default_Priority = {
    Head  = {
        { Name = "Ares' Mask", Level = 75 },          -- ACC+12 ATK+12
        { Name = "Sipahi Turban", Level = 59 },       -- STR+3 DEX+2
        { Name = "Shade Tiara", Level = 25 },         -- STR+2
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
        { Name = "Amemet Mantle +1", Level = 61 },    --        STR+2  ATK+15
--STORED{ Name = "Earth Mantle", Level = 40 },        -- STR+2 VIT+1
--STORED{ Name = "Lizard Mantle +1", Level = 17 },    -- STR+1
    },
    Waist = {
        { Name = "Virtuoso Belt", Level = 54 },       -- ACC+12                 ATK+4
    },
    Legs  = {
        { Name = "Ares' Flanchard", Level = 75 },     -- STR+6 DEX+6 DA+2
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2
    },
    Feet  = {
        { Name = "Ares' Sollerets", Level = 75 },     -- ACC+7 ATK+7 STR+4
        { Name = "Marine M Boots", Level = 62},       -- STR+3 DEX+3
    },
};

--> Stardiver: 4 hits, 75% STR, fTP replicating (Soil/Light/Shadow Gorget)

profile.Sets = sets;
return profile;