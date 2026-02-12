local profile = gFunc.LoadFile('common/miniswap.lua');
local sets = {};

sets.LockStyle = {
    Head  = "remove",
    Body  = "Kirin's Osode",
    Hands = "Switft Gages",
    Legs  = "Sipahi Zerehs",
    Feet  = "Suzaku's Sune-Ate",
};

sets.Engaged_Default_Priority = {
    Main  = {
            -- Wish: Juggernaut
            -- Wish: Tabarzin {GG + Augs, can augs be transfered to +1?}
        { Name = "Hatxiik", Level = 75 },
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
        { Name = "Joyeuse", Level = 70 },
        { Name = "Darksteel Pick +1", Level = 62 },
        { Name = "Viking Axe", Level = 60 },          -- EVA-10  ACC+10
        { Name = "Military Pick", Level = 28 },
        { Name = "Battleaxe", Level = 20 },
        { Name = "Clipeus", Level = 9 },
        { Name = "Shell Shield", Level = 7 },
    },
    Range = {
        { Name = "remove", Level = 75 },
        { Name = "Crossbow", Level = 12 },
    },
    Ammo  = {
        { Name = "Fury's Edge", Level = 75 },
        { Name = "Crossbow Bolt", Level = 12 },
        "Happy Egg",
    },
    Head  = {
        { Name = "Ares' Mask", Level = 75 },          -- HP+2% ACC+12 ATK+12 EVA-12 H+3 STP+3
        { Name = "Wivre Mask", Level = 65 },          -- EVA+10 ACC+5 DEX+3 STR+2
        { Name = "Heroic Hairpin", Level = 30 },      -- PDT-2 H+2 DW+3
        { Name = "Emperor Hairpin", Level = 24 },     --         EVA+10  DEX+3  AGI+3
        { Name = "Brass Cap +1", Level = 11 },
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Brutal Earring", Level = 75 },      -- DA+5 STP+1
        { Name = "Outlaw's Earring", Level = 50 },    -- DEX+2 ATK+4 EVA+4
        { Name = "Pigeon Earring", Level = 33 },      -- HP+20 MP+15 STR+1 ATK+2
    },
    Ear2 = {
        { Name = "Suppanomimi", Level = 72 },         -- DW+5 Sword+5
        { Name = "Assault Earring", Level = 58 },     -- ACC+2 ATK+5 EVA-2 DEF-3
        { Name = "Insomnia Earring", Level = 50 },
        { Name = "Tribal Earring", Level = 20 },
        "remove",
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      --                 STR+3  DEX+3
        { Name = "Armiger's Lace", Level = 9 },
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        { Name = "Kirin's Osode", Level = 75 },       -- AllStats+10
        { Name = "Scorpion Harness", Level = 57 },    -- ACC+10  EVA+10
        { Name = "Brigandine +1", Level = 45 },       -- STR+3 DEX+3 AGI+3 VIT+3 HP+10 MP+10 ATK+4
        { Name = "Eisenbrust", Level = 29 },
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Scale Mail", Level = 10 },
        { Name = "Leather Vest +1", Level = 7 },
        "Tidal Talisman",
    },
    Hands = {
        { Name = "Swift Gages", Level = 75 },         -- STP+2 Haste+4 DA+2 ATK+5
        { Name = "Gothic Gauntlets", Level = 43 },    -- STR+3
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
            -- Wish: Aug: ACC+8 ATK+8 
        { Name = "Ares' Flanchard", Level = 75 },     -- HP+2% STR+6 DEX+6 DA+2
        { Name = "Raptor Trousers", Level = 48 },
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2 Haste+2
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Ares' Sollerets", Level = 75 },     -- HP+2% ACC+7 ATK+7 EVA-7 STR+4 STP+3
        { Name = "Raptor Ledelsens", Level = 48 },    -- Haste+2
        { Name = "Eisenschuhs", Level = 29 },
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

sets.Idle_Default_Priority = profile.MiniSwap.DeepCopy(sets.Engaged_Default_Priority)
sets.Idle_Default_Priority.Head = {
    { Name = "Ares' Mask", Level = 75 },
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
        { Name = "Warrior's Mask", Level = 73 },    -- Enm+1
            -- Wish: Lv.1 Cache-nez [Enm+2]
    },
    Body  = {
        { Name = "Ftr. Lorica +1", Level = 74 },      -- Enm+8+6
            -- Wish: Lv.60 Fighter's Lorica [Enm+8]
    },
    Hands = {
        { Name = "Hydra Moufles", Level = 70 },       -- Enm+6
        { Name = "Gothic Gauntlets", Level = 43 },    -- Enm+2
    },
    Ring1 = {
            -- Wish: Lv.50 Myrmeleo Ring [(Aug) Enm+3]
    },
    Ring2 = {
        { Name = "Sattva Ring", Level = 30 },         -- Enm+3
    },
    Back  = {
            -- Wish: Toreador's Cape [Enm+4]
            -- Wish: Cerberus Mantle +1  [Enm+4]
        { Name = "Ram Mantle", Level = 38 },          -- Enm+2
    },
    Waist = {
            -- Wish: Lv.71 Warwolf Belt [Enm+3]
    },
    Legs  = {
            -- Wish: Lv.70 Hydra Brayettes [Enm+6]
            -- Wish: Lv.58 Fighter's Cuisses [Enm+2]
    },
    Feet  = {
            -- Wish: Lv.70 Hydra Sollerets [Enm+4]
            -- Wish: Lv.43 Gothic Sabatons [Enm+2] {Behemoth's Dominion - Treasure Casket}
    },
};

sets.JA_Warcry_Priority = {
    Head  = {
        { Name = "Warrior's Mask", Level = 73 },      -- Warcry+10s
    }
}

--
-- Weapon Skills
--

-- Goal: STR & ACC
sets.WS_Default_Priority = {
    Head  = {
        { Name = "Ares' Mask", Level = 75 },          -- ACC+12 ATK+12
        { Name = "Sipahi Turban", Level = 59 },       -- STR+3 DEX+2
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
        { Name = "Kirin's Osode", Level = 75 },       -- AllStats+10
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
        { Name = "Earth Mantle", Level = 40 },        -- STR+2
        { Name = "Lizard Mantle +1", Level = 17 },    -- STR+1
    },
    Waist = {
        { Name = "Warrior's Stone", Level = 70 },     -- ACC+7  STR+5
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

--> Decimation: 3 hits, 50% STR, fTP replicating (Flame/Aqua/Light Gorget)
--> Ruinator: 4 hits, 73% STR, 1.1 ATK, fTP replicating (Aqua/Breeze/Snow Gorget)
--> Upheaval: 4 hits, 75% STR / 75% VIT
--> Savage Blade: 2 hits, 50% STR / 50% MND

--> Requiescat: 4 hits, 73% MND, fTP replicating (Soil/Shadow Gorget)
sets.WS_Requiescat = {
    Body  = "Kirin's Osode",                          -- AllStats+10
    Neck  = "Soil Gorget",                            -- fTP+0.1
    Ear2  = "Emberpearl Earring",                     -- MND+2   STR+2         WSACC+2       ATK+3
    Ring1 = "Tamas Ring",                             -- MND+5
    Waist = "Salire Belt",                            -- MND+5
    Feet  = "Suzaku's Sune-Ate",                      -- MND+15
};

--> Resolution: 5 his, 73% STR, 0.85 ATK, fTP replicating (Soil/Breeze/Thunder Gorget)
--> Entropy: 4 hits, 73% INT, fTP replicating (Soil/Aqua/Shadow Gorget)
--> Stardiver: 4 hits, 75% STR, fTP replicating (Soil/Light/Shadow Gorget)
--> Black Halo: 2 hits, 70% MND / 30% STR
--> Realmrazer: 7 hits, 73% MND, fTP replicating (Flame/Thunder/Light Gorget)

profile.Sets = sets;
return profile;