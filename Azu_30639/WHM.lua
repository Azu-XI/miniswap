local profile = gFunc.LoadFile('common/miniswap.lua');
local sets = {};

sets.LockStyle = {
    Main  = "Baqil Staff",
    Head  = "remove",
    Body  = "Noble's Tunic",
    Hands = "Hlr. Mitts +1",
    Legs  = "Cleric's Pantaln.",
    Feet  = "Bunzi's Sabots",
};

sets.Engaged_Default = {
    Main  = "Tamaxchi",
    Sub   = "Genbu's Shield",                         -- PDT-10 EVA+10
    Ammo  = "Talon Tathlum",                          -- STR+2 DEX+2
    -- Head  = "",
    Ear1  = "Emberpearl Earring",                     -- STR+2 MND+2
    Ear2  = "Brutal Earring",                         -- DA+1
    -- Body  = "",
    Neck  = "Peacock Charm",                          -- ACC+10
    -- Hands = "",
    Ring1 = "Toreador's Ring",                        -- ACC+7
    Ring2 = "Rajas Ring",                             -- STP+5 SB+5 STR+2~5 DEX+2~5
    -- Back  = "",
    Waist = "Ninurta's Sash",                         -- H+6 SB+6 ATK+6
    -- Legs  = "",
    -- Feet  = "",
};

sets.Idle_Default_Priority = {
    Main  = {
        { Name = "Terra's Staff", Level = 51 },       -- PDT-20
        "Maple Wand +1",
    },
    Sub   = {
            -- Wish: Lv75 Longbeard's Grip +0/1 [MDT-2/4 MEva+4/8 Refresh+0/1] {Leathercraft Lv.111}
        { Name = "Oneiros Grip", Level = 75 },        -- Regen +1
        { Name = "Neph. Grip", Level = 51 },          -- INT+1
        { Name = "Pelte", Level = 8 },
        "Kupo Shield",
    },
    Ammo = {
        { Name = "Rimestone", Level = 60 },           -- MP+35  MACC+3  INT+3  MND+1  Emn-5
        { Name = "Talon Tathlum", Level = 50 },       -- MP+15
        { Name = "Morion Tathlum", Level = 25 },      -- MP+3
        "Happy Egg",
    },
    Head  = {
        { Name = "Bunzi's Hat", Level = 75 },         -- Refresh+1  MP+25 
        { Name = "Erudite Cap", Level = 70 },         -- MP+30
        { Name = "remove", Level = 59 },              -- No head because of Vermillion Cloak
        { Name = "Garrison Sallet +1", Level = 20 },  -- Regen+1 under lv.50
        { Name = "Cmp. Eye Circlet", Level = 9 },     -- EVA+5
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Loquac. Earring", Level = 75 },     -- MP+30
        { Name = "Outlaw's Earring", Level = 50 },    -- MP+15
    },
    Ear2 = {
        { Name = "Roundel Earring", Level = 73 },     -- CurePot+5%
        { Name = "Pigeon Earring", Level = 33 },      -- HP+20 MP+15 STR+1 ATK+2
        { Name = "Tribal Earring", Level = 20 },
        "remove",
    },
    Neck  = {
        { Name = "Radiant Lantern", Level = 60 },     -- MP+40
        { Name = "Mohbwa Scarf +1", Level = 40 },     -- MP+6
        { Name = "Justice Badge", Level = 7 },
    },
    Body  = {
        { Name = "Dalmatica", Level = 73 },           -- Refresh+1 MDB+5 ResistPara+2
        { Name = "Noble's Tunic", Level = 68 },       -- Refresh+1  MP+17
        { Name = "Vermillion Cloak", Level = 59 },    -- Refresh+1
        { Name = "Garrison Tunica +1", Level = 20 },  -- Refresh+1 while below lv.50
        { Name = "Druid's Robe", Level = 8 },
        "Tidal Talisman",
    },
    Hands = {
        { Name = "Hlr. Mitts +1", Level = 74 },       -- MP+15 MND+7
        { Name = "Zealot's Mitts", Level = 11 },      -- MP+5 MND+3
        { Name = "Mitts +1", Level = 8 },
        "Dream Mittens +1",
    },
    Ring1 = {
        { Name = "Defending Ring", Level = 70 },      -- DT-10
        { Name = "Astral Ring", Level = 10 },         -- 25HP>MP
    },
    Ring2 = {
            -- Wish: Merman's Ring (Coral Ring +1) [MDT-4]
        { Name = "Coral Ring", Level = 70 },              -- MDT-3
        { Name = "Tamas Ring", Level = 30 },          -- MP+30 MND+2~5
        { Name = "Astral Ring", Level = 10 },         -- 25HP>MP
        "Windurstian Ring",
    },
    Back  = {
            -- Wish: Lv.68 Umbra Cape [PDT-6]
        { Name = "Cheviot Cape", Level = 68 },        -- PDT-5 Dark+13
        { Name = "Tundra Mantle", Level = 39 },       -- MP+5 MND+2
        { Name = "Mist Silk Cape", Level = 10 },
    },
    Waist = {
            -- Wish: Aug: MP+10 MDef+3
        { Name = "Cleric's Belt", Level = 70 },       -- MP+40+10 MDef+3
        { Name = "Penitent's Rope", Level = 60 },
        { Name = "Friar's Rope", Level = 14 },
    },
    Legs  = {
            -- Wish: Lv.74 Clr. Pantaln. +1 [(Aug) DT-4]
        { Name = "Zenith Slacks +1", Level = 73 },
        { Name = "White Slacks", Level = 50 },        -- Regen +1
        { Name = "Custom Slacks", Level = 31 },       -- MP+32 MND+3
        { Name = "Garrison Hose +1", Level = 20 },
        { Name = "Slacks +1", Level = 8 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Bunzi's Sabots", Level = 75 },
        { Name = "Garrison Boots +1", Level = 20 },   -- INT+2 MND+2
        { Name = "Power Sandals", Level = 18 },       -- VIT+3
        { Name = "Solea +1", Level = 8 },
        "Dream Boots +1",
    },
};

sets.Midcast_Default_Priority = {
    Main  = {
        { Name = "Chatoyant Staff", Level = 51 },     -- CurePot+10
        "Maple Wand +1",                              --            MND+2
    },
    Sub   = {
            -- Wish: Verse Strap +0/1 [CurePot+2~3 MND+2~3 Enm-2~3] {Leathercraft Guild NM}
        { Name = "Oneiros Grip", Level = 75 },        --                                                    Regen +1
        { Name = "Neph. Grip", Level = 51 },          --                                                    INT+1
        { Name = "Pelte", Level = 8 },                --            MND+1
    },
    Ear2 = {
        { Name = "Roundel Earring", Level = 73 },     -- CurePot+5
    },
    Head  = {
        { Name = "Bunzi's Hat", Level = 70 },         -- MND+10                                 Divine+10
    },
    Neck  = {
        { Name = "Fylgja Torque +1", Level = 75 },    -- CurePot+3         Enm-2
    },
    Body  = {
        { Name = "Noble's Tunic", Level = 68 },       -- CurePot+10
    },
    Hands = {
        { Name = "Hlr. Mitts +1", Level = 74 },       -- CurePot+3  MND+7  Emn-4  ConserveMP+5  Healing+15
    },
    Back  = {
        { Name = "Dew Silk Cape +1", Level = 75 },    -- CurePot+3         Enm-3
        { Name = "Tundra Mantle", Level = 39 },       --            MND+2         ConserveMP+2
        { Name = "Mist Silk Cape", Level = 10 },      -- CurePot+1
    },
    Waist = {
        { Name = "Cleric's Belt", Level = 70 },       -- CurePot+5  MND+6
        { Name = "Penitent's Rope", Level = 60 },     --            MND+5  Enm-3
        { Name = "Silver Obi", Level = 20 },          --                          SIRD-8
    },
    Legs  = {
            -- Wish: Lv.74 Clr. Pantaln. +1 [Healing+15 Enm-3 BarSpells+22 (Aug) CurePot+6 Enhancing+10]
        { Name = "Cleric's Pantaln.", Level = 73 },   -- Healing+15 Enm-2 BarSpells+20
    },
    Feet  = {
        { Name = "Bunzi's Sabots", Level = 75 },      -- 1%CuredToMP
    };
};

sets.Midcast_Regen_Priority = {
    Body  = {
        { Name = "Cleric's Bliaut", Level = 74 },     -- RegenPot+1
    },
};

sets.Midcast_Banish_Priority = {
    Hands  = {
        { Name = "Cleric's Mitts", Level = 75 },      -- BanishPotVsUndead
    },
};

sets.Midcast_EnfeeblingMagic_Priority = {
    Hands  = {
        { Name = "Cleric's Mitts", Level = 75 },      -- Enfeebling+15
    },
    Back  = {
        { Name = "Oneiros Cape", Level = 75 },        -- MACC+4
    },
    Waist = {
        { Name = "Salire Belt", Level = 75 },         -- MACC+4  MND+5
    },
};

-- Goal: Max FastCast 80%
sets.Precast_Default_Priority = {
    Head  = {
        { Name = "remove", Level = 59 },              -- No head because of Vermillion Cloak
        { Name = "Entrancing Ribbon", Level = 11 },   -- FC+1
    },
    Ear1  = {
        { Name = "Loquac. Earring", Level = 75 },     -- FC+2
    },
    Body  = {
            -- Wish: Dalmatica +0/1 [(Aug) FC+4]
        { Name = "Vermillion Cloak", Level = 59 },    -- FC+3
    },
    Feet  = {
        { Name = "Bunzi's Sabots", Level = 75 },      -- FC+2
    },
};

-- Goal: Max FastCast 80% ; Cure Spellcasting
sets.Precast_HealingMagic_Priority = {
    -- Wish: Genbu's Shield [(Aug) CureCast-5]
    Head  = {
        { Name = "Bunzi's Hat", Level = 75 },         -- CureCast-5
        { Name = "Erudite Cap", Level = 70 },         -- CureCast-5
    },
    Back  = {
            -- Wish: Hierarch's Mantle [CureCast-7]
        { Name = "Mist Silk Cape", Level = 10 },      -- CureCast-1
    },
}

-- Goal: QuickSpell /!\ Only for spells where midcast doesn't matter /!\
sets.Precast_Raise_Priority = {
    Body  = {
            -- Wish: Aug HQ QuickSpell+6
        { Name = "Dalmatica", Level = 73 },           -- QuickSpell+3
    },
};

sets.Resting_Default_Priority = {
    Main  = {
        { Name = "Chatoyant Staff", Level = 51 },     -- HMP+10
        { Name = "Pilgrim's Wand", Level = 10 },      -- HMP+3
    },
    Sub   = {
        { Name = "Oneiros Grip", Level = 75 },        -- Regen +1
        { Name = "Neph. Grip", Level = 51 },
        { Name = "Pelte", Level = 8 },                -- HMP+2
    },
        -- Head: Wish: Lv.74 Healer's Cap +1 [HMP+1 (Aug) HMP+3 Refresh+1]
        -- Body: Wish: Lv.72 Mahatma Houppelande [HMP+6]
        -- Ear1: Wish: Lv.75 Darkness/Pluto's Earring [HMP+2/3]
        -- Ear2: Wish: Lv.75 Darkness/Pluto's Earring [HMP+2/3]
        -- Neck: Wish: Lv.50 Beak Necklace +1 [HMP+2]
        -- Hands: Wish: Lv.72 Oracle's Gloves [HMP+2]
        -- Ring1: Wish: Lv.75 Fenrir Ring +0/1 [HMP+3/5]
        -- Ring2: Wish: Lv.75 Fenrir Ring +0/1 [HMP+3/5]
        -- Back: Wish: Lv.68 Blue Cape [(Aug) HMP+2]
    Waist = {
        { Name = "Cleric's Belt", Level = 70 },       -- HMP+3
            -- Wish: Lv.40 Qiqirn Sash +1 [HMP+3] 
    },
        -- Legs: Wish: Lv.72 Oracle's Braconi [HMP+2]
    Feet  = {
            -- Wish: Lv.74 Healer's Duckbills +1 [HMP+1 (Aug) HMP+3]
            -- Wish: Lv.70 Numerist Pumps [HMP+3]
        { Name = "Garrison Boots +1", Level = 20 },   -- HMP+2
    }
};

-- Goal:
--> Black Halo: 2 hits, 70% MND / 30% STR
--> Realmrazer: 7 hits, 73% MND (no fTP, CEXI doesn't have `USE_ADOULIN_WEAPON_SKILL_CHANGES`)
--> Mystic Boon: 1 hit, 70% MND / 30% STR
sets.WS_Default = {
    Ammo  = "Talon Tathlum",                          --         STR+2
    Head  = "Bunzi's Hat",                            -- MND+10
    Ear1  = "Brutal Earring",                         --                                DA+1
    Ear2  = "Emberpearl Earring",                     -- MND+2   STR+2         WSACC+2       ATK+3
    -- Body  = "",
    Neck  = "Faith Torque",                           -- MND+5
    Hands = "Hlr. Mitts +1",                          -- MND+7   STR+7
    Ring1 = "Karka Ring",                             -- MND+6
    Ring2 = "Tamas Ring",                             -- MND+5
    Back  = "Dew Silk Cape +1",                       -- MND+6
    Waist = "Pythia Sash",                            -- MND+5
    -- Legs  = "",
    Feet  = "Bunzi's Sabots",                         -- MND+5
};

profile.Sets = sets;
return profile;