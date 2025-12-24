local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Sets.LockStyle = {
    Main  = "Baqil Staff",
    Head  = "remove",
    Body  = "Noble's Tunic",
    Hands = "Zealot's Mitts",
    Legs  = "Cleric's Pantaln.",
    Feet  = "Zenith Pumps",
};

profile.Sets.Engaged_Default = {
    Main  = "Tamaxchi",
    Sub   = "Genbu's Shield",                         -- PDT-10 EVA+10
    Ammo  = "Talon Tathlum",                          -- STR+2 DEX+2
    Ear1  = "Emberpearl Earring",                     -- STR+2 MND+2
    Ear2  = "Brutal Earring",                         -- DA+1
    -- Head  = "",
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

profile.Sets.Idle_Default_Priority = {
    Main  = {
        { Name = "Terra's Staff", Level = 51 },       -- PDT-20
        { Name = "Pilgrim's Wand", Level = 10 },
        "Maple Wand +1",
    },
    Sub   = {
            -- Wish: Lv75 Longbeard's Grip +0/1 [MDT-2/4 MEva+4/8 Refresh+0/1]
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
    Ear1 = {
        { Name = "Loquac. Earring", Level = 75 },     -- MP+30
        { Name = "Outlaw's Earring", Level = 50 },    -- MP+15
    },
    Ear2 = {
        { Name = "Insomnia Earring", Level = 50 },    -- MP+15 ResistSleep+2
        { Name = "Dodge Earring", Level = 29 },
    },
    Head  = {
        { Name = "Bunzi's Hat", Level = 75 },         -- Refresh+1  MP+25 
        { Name = "Erudite Cap", Level = 70 },         -- MP+30
        { Name = "remove", Level = 59 },              -- No head because of Vermillion Cloak
        { Name = "Garrison Sallet +1", Level = 20 },  -- Regen+1 under lv.50
        { Name = "Traveler's Hat", Level = 6 },
        "Coven Hat",
    },
    Neck  = {
        { Name = "Radiant Lantern", Level = 60 },     -- MP+40
        { Name = "Mohbwa Scarf +1", Level = 40 },     -- MP+6
        { Name = "Justice Badge", Level = 7 },
    },
    Body  = {
        { Name = "Noble's Tunic", Level = 68 },       -- Refresh+1  MP+17
        { Name = "Vermillion Cloak", Level = 59 },    -- Refresh+1
        { Name = "Garrison Tunica +1", Level = 20 },  -- Refresh+1 while below lv.50
        { Name = "Druid's Robe", Level = 8 },
        "Tidal Talisman",
    },
    Hands = {
            -- Wish: Lv.74 Healer's Mitts +1
        { Name = "Zenith Mitts", Level = 73 },        -- 50HP>MP
        { Name = "Devotee's Mitts", Level = 27 },     -- MP+8 MND+5
        { Name = "Zealot's Mitts", Level = 11 },      -- MP+5 MND+3
        { Name = "Mitts +1", Level = 8 },
        "Dream Mittens +1",
    },
    Ring1 = {
        { Name = "Serket Ring", Level = 51 },         -- 50HP>MP
        { Name = "Astral Ring", Level = 10 },         -- 25HP>MP
    },
    Ring2 = {
        { Name = "Tamas Ring", Level = 30 },          -- MP+30 MND+2~5
        { Name = "Astral Ring", Level = 10 },         -- 25HP>MP
        "Windurstian Ring",
    },
    Back  = {
        { Name = "Dew Silk Cape +1", Level = 75 },
        { Name = "Tundra Mantle", Level = 39 },       -- MP+5
        { Name = "Mist Silk Cape", Level = 10 },
    },
    Waist = {
            -- Wish: Aug: MP+10 MDef+3
        { Name = "Cleric's Belt", Level = 70 },       -- MP+40
        { Name = "Penitent's Rope", Level = 60 },
        { Name = "Friar's Rope", Level = 14 },
    },
    Legs  = {
            -- Wish: Lv.74 Clr. Pantaln. +1 [(Aug) DT-4]
        { Name = "Cleric's Pantaln.", Level = 73 },
        { Name = "White Slacks", Level = 50 },        -- Regen +1
        { Name = "Custom Slacks", Level = 31 },       -- MP+32 MND+3
        { Name = "Garrison Hose +1", Level = 20 },
        { Name = "Slacks +1", Level = 8 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Zenith Pumps", Level = 73 },        -- 50HP>MP
        { Name = "Garrison Boots +1", Level = 20 },   -- INT+2 MND+2
        { Name = "Power Sandals", Level = 18 },       -- VIT+3
        { Name = "Solea +1", Level = 8 },
        "Dream Boots +1",
    },
};

profile.Sets.Midcast_Default_Priority = {
    Main  = {
        { Name = "Chatoyant Staff", Level = 51 },     -- CurePot+10
        "Maple Wand +1",                              -- MND+2
    },
    Sub   = {
        { Name = "Neph. Grip", Level = 51 },          -- INT+1
        { Name = "Pelte", Level = 8 },                -- MND+1
    },
    Neck  = {
        { Name = "Fylgja Torque +1", Level = 75 },    -- CurePot+3  Enm-2
    },
    Head  = {
        { Name = "Bunzi's Hat", Level = 70 },         -- MND+10 Divine+10
    },
    Body  = {
        { Name = "Noble's Tunic", Level = 68 },       -- CurePot+10
    },
    Hands = {
            -- Wish: Lv.74 Healer's Mitts +1 [MND+7 Healing+15 Emn-4 (Aug) CurePot+3 ConserveMP+5]
    },
    Back  = {
        { Name = "Dew Silk Cape +1", Level = 75 },    -- CurePot+3  Enm-3
        { Name = "Tundra Mantle", Level = 39 },       -- MND+2 ConserveMP+2
        { Name = "Mist Silk Cape", Level = 10 },      -- CurePot+1
    },
    Waist = {
            -- Wish: Aug: CurePot+5
        { Name = "Cleric's Belt", Level = 70 },       -- MND+6
        { Name = "Penitent's Rope", Level = 60 },     -- MND+5 Enm-3
        { Name = "Silver Obi", Level = 20 },          -- SIRD-8
    },
    Legs  = {
            -- Wish: Lv.74 Clr. Pantaln. +1 [Healing+15 Enm-3 BarSpells+22 (Aug) CurePot+6 Enhancing+10]
        { Name = "Cleric's Pantaln.", Level = 73 },   -- Healing+15 Enm-2 BarSpells+20
    },
    Feet  = {
            -- Wish: Zenith Pumps+1 [(Aug) CurePot+5/6]
            -- Wish: Medium's Sabots [CurePot+4] {DomainInvasion}
        { Name = "Zenith Pumps", Level = 73 },        -- CurePot+2
    };
};

profile.Sets.Midcast_Regen_Priority = {
    Body  = {
        { Name = "Cleric's Bliaut", Level = 74 },     -- RegenPot+1
    },
};

profile.Sets.Midcast_Banish_Priority = {
    Body  = {
        { Name = "Cleric's Mitts", Level = 75 },      -- BanishPotVsUndead
    },
};

profile.Sets.Midcast_EnfeeblingMagic_Priority = {
    Body  = {
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
profile.Sets.Precast_Default_Priority = {
    Head  = {
        { Name = "Entrancing Ribbon", Level = 11 },   -- FC+1
    },
    Ear1  = {
        { Name = "Loquac. Earring", Level = 75 },     -- FC+2
    }
};

-- Goal: Max FastCast 80% ; Cure Spellcasting
profile.Sets.Precast_HealingMagic_Priority = {
    Head  = {
        { Name = "Bunzi's Hat", Level = 75 },         -- CureCast-5
        { Name = "Erudite Cap", Level = 70 },         -- CureCast-5
    },
    Back  = {
            -- Wish: Hierarch's Mantle [CureCast-7]
        { Name = "Mist Silk Cape", Level = 10 },      -- CureCast-1
    },
}

profile.Sets.Resting_Default_Priority = {
    Main  = {
        { Name = "Chatoyant Staff", Level = 51 },     -- HMP+10
        { Name = "Pilgrim's Wand", Level = 10 },      -- HMP+3
    },
    Sub   = {
        { Name = "Oneiros Grip", Level = 75 },        -- Regen +1
        { Name = "Neph. Grip", Level = 51 },
        { Name = "Pelte", Level = 8 },                -- HMP+2
    },
    Waist = {
        { Name = "Cleric's Belt", Level = 70 },       -- HMP+3
    },
    Feet  = {
        { Name = "", Level = 73 },                    -- Stop swapping boots with MP
        { Name = "Garrison Boots +1", Level = 20 },   -- HMP+2
    }
};

-- Goal:
--> Black Halo: 2 hits, 70% MND / 30% STR
--> Realmrazer: 7 hits, 73% MND, fTP replicating
--> Mystic Boon: 1 hit, 70% MND / 30% STR
profile.Sets.WS_Default = {
    Ammo  = "Talon Tathlum",                          --         STR+2
    Ear1  = "Emberpearl Earring",                     -- MND+2   STR+2
    Ear2  = "Brutal Earring",                         --                       DA+1
    Head  = "Bunzi's Hat",                            -- MND+10
    -- Body  = "",
    Neck  = "Justice Badge",                          -- MND+3
    Hands = "Devotee's Mitts",                        -- MND+5
    Ring1 = "Toreador's Ring",                        --                ACC+7
    Ring2 = "Tamas Ring",                             -- MND+5
    Back  = "Dew Silk Cape +1",                       -- MND+6
    Waist = "Pythia Sash",                            -- MND+5
    Legs  = "Errant Slops",                           -- MND+7
    -- Feet  = "",
};

return profile;