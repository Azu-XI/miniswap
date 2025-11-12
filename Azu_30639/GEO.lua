local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Sets.LockStyle = {
    Main  = "Baqil Staff",
    Head  = "remove",
    Body  = "Poroggo Coat",
    Hands = "Custom M Gloves",
    Legs  = "Garrison Hose +1",
    Feet  = "Custom M Boots",
};

profile.Sets.Idle_Default_Priority = {
    Main  = {
        { Name = "Terra's Staff", Level = 51 },         -- PDT-20
        { Name = "Ash Pole +1", Level = 5 },          -- INT+3
        "Maple Wand +1",
    },
    Sub   = {
            -- Wish: Lv75 Longbeard's Grip +0/1 [MDT-2/4 MEva+4/8 Refresh+0/1]
        { Name = "Neph. Grip", Level = 8 },          -- INT+1
        { Name = "remove", Level = 5 },               -- No shield with staff
        "Kupo Shield",
    },
    Range = {
        "Matre Bell",
    },
    Head  = {
        { Name = "remove", Level = 59 },              -- No head because of Vermillion Cloak
        { Name = "Gambler's Chapeau", Level = 50 },   -- MP+20 INT+3
        { Name = "Garrison Sallet +1", Level = 20 },  -- Regen+1 under lv.50
        { Name = "Traveler's Hat", Level = 6 },
        "Coven Hat",
    },
    Ear1 = {
            -- Wish: Lv.29 Morion Earring +1 [INT+2]
        { Name = "Cunning Earring", Level = 29 },     -- INT+1
    },
    Ear2 = {
        { Name = "Moldavite Earring", Level = 47 },   --       MAB+5
            -- Wish: Lv.29 Morion Earring +1 [INT+2]
        { Name = "Cunning Earring", Level = 29 },     -- INT+1
    },
    Neck  = {
            -- Wish: Lv.60 Radiant Lantern [(Aug) INT+4]
        { Name = "Mohbwa Scarf +1", Level = 40 },     -- INT+2
            -- Wish: Lv.20 Black Silk Neckerchief [INT+1]
        { Name = "Justice Badge", Level = 7 },        --        MND+3
    },
    Body  = {
        { Name = "Vermillion Cloak", Level = 59 },       -- Refresh+1
        { Name = "Garrison Tunica +1", Level = 20 },     -- Refresh+1 while below lv.50
        { Name = "Druid's Robe", Level = 8 },
        "Kingdom Aketon", 
    },
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- MP+5 INT+2
        { Name = "Mitts +1", Level = 8 },
        "Dream Mittens +1",
    },
    Ring1 = {
            -- Wish: Merman's Ring (Coral Ring +1) [MDT-4]
        { Name = "Coral Ring", Level = 70 },          -- MDT-3
        { Name = "Eremite's Ring +1", Level = 10 },   -- INT+3
        "Windurstian Ring",
    },
    Ring2 = {
            -- Wish: Merman's Ring (Coral Ring +1) [MDT-4]
        { Name = "Coral Ring", Level = 70 },          -- MDT-3
        { Name = "Tamas Ring", Level = 30 },          -- INT+2~5
        { Name = "Eremite's Ring", Level = 10 },      -- INT+2
        "Provenance Ring",
    },
    Back  = {
        { Name = "Black Cape +1", Level = 32 },       -- INT+1
        { Name = "Cotton Cape", Level = 18 },         -- INT+1
        { Name = "Mist Silk Cape", Level = 10 },
    },
    Waist = {
        { Name = "Penitent's Rope", Level = 60 },     -- INT+5 MND+5
            -- Wish: Lv.50 Ocean Stone [INT+3]
            -- Wish: Lv.41 Reverend Sash [INT+2]
            -- Wish: Lv.28 Shaman's Belt [INT+1]
        { Name = "Silver Obi", Level = 20 },
        { Name = "Friar's Rope", Level = 14 },
    },
    Legs  = {
        { Name = "White Slacks", Level = 50 },        -- Regen +1
        { Name = "Seer's Slacks", Level = 29 },
        { Name = "Garrison Hose +1", Level = 20 },
        { Name = "Slacks +1", Level = 8 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Custom M Boots", Level = 29 },      -- INT+3
        { Name = "Garrison Boots +1", Level = 20 },   -- INT+2 MND+2
        { Name = "Power Sandals", Level = 18 },       -- VIT+3
        { Name = "Solea +1", Level = 8 },
        "Dream Boots +1",
    },
};

-- Goal: Max SIRD 102%; Max FastCast 80% ; Max Haste 25%
profile.Sets.Midcast_Default_Priority = {
    Main  = {
        { Name = "Chatoyant Staff", Level = 51 },
        { Name = "Ash Pole +1", Level = 5 },          -- INT+3
        "Maple Wand +1",
    },
    Sub   = {
        { Name = "Neph. Grip", Level = 8 },           -- INT+1
        { Name = "remove", Level = 5 },               -- No shield with staff
        "Kupo Shield",
    },
    Range = '',
    Ammo  = {
            -- Wish: Lv.60 Rimestone {DI@25 merits} [MACC+3 (Aug) INT+3 Enm-5]
        { Name = "Morion Tahtlum", Level = 25 },      -- INT+1
    },
    Head  = {
        { Name = "Demon Helm", Level = 73 },          -- INT+5  ElemSkill +5
            -- Wish: Lv.60 Wizard's Petasos [INT+4]
        { Name = "Gambler's Chapeau", Level = 20 },   -- INT+3
    },
    Ear1 = {
            -- Wish: Lv.29 Morion Earring +1 [INT+2]
        { Name = "Cunning Earring", Level = 29 },     -- INT+1
    },
    Ear2 = {
        { Name = "Moldavite Earring", Level = 47 },   --       MAB+5
            -- Wish: Lv.29 Morion Earring +1 [INT+2]
        { Name = "Cunning Earring", Level = 29 },     -- INT+1
    },
    Neck  = {
            -- Wish: Lv.60 Radiant Lantern [(Aug) INT+4]
        { Name = "Mohbwa Scarf +1", Level = 40 },     -- INT+2
            -- Wish: Lv.20 Black Silk Neckerchief [INT+1]
        { Name = "Justice Badge", Level = 7 },        --                MND+3
    },
    Body  = {
        { Name = "Seer's Tunic", Level = 29 },        -- INT+1
    },
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- INT+2
    },
    Ring1 = {
        { Name = "Hibernal Ring", Level = 75 },       -- INT+5
        { Name = "Eremite's Ring +1", Level = 10 },   -- INT+3
        "Windurstian Ring",                           -- INT+1
    },
    Ring2 = {
        { Name = "Tamas Ring", Level = 30 },          -- INT+2~5
        { Name = "Eremite's Ring", Level = 10 },      -- INT+2
    },
    Back  = {
        { Name = "Black Cape +1", Level = 32 },       -- INT+1
        { Name = "Cotton Cape", Level = 18 },         -- INT+1
        { Name = "Mist Silk Cape", Level = 10 },
    },
    Waist = {
        { Name = "Penitent's Rope", Level = 60 },     -- INT+5                 Enm-3
            -- Wish: Lv.50 Ocean Stone [INT+3]
            -- Wish: Lv.41 Reverend Sash [INT+2]
            -- Wish: Lv.28 Shaman's Belt [INT+1]
        { Name = "Silver Obi", Level = 20 },          -- SIRD-8
        { Name = "Friar's Rope", Level = 14 },
    },
    Legs  = {
        { Name = "Seer's Slacks", Level = 29 },       -- INT+1  MACC+2
    },
    Feet  = {
        { Name = "Custom M Boots", Level = 29 },      -- INT+3
        { Name = "Garrison Boots +1", Level = 20 },   -- INT+2          MND+2
        { Name = "Power Sandals", Level = 18 },       -- VIT+3
    },
};

profile.Sets.Midcast_Geomancy_Priority = {
    Range = {
        "Matre Bell",
    },
    Ammo  = '',
};

local midcastEnfeeblingMND = {
    Ring1 = {
            -- Wish: +1
        { Name = "Saintly Ring", Level = 10 },        -- MND+2
    },
    Ring2 = {
        { Name = "Tamas Ring", Level = 30 },          -- MND+2~5
        { Name = "Saintly Ring", Level = 10 },        -- MND+2
    },
}
profile.Sets.Midcast_Paralyze_Priority = midcastEnfeeblingMND;
profile.Sets.Midcast_Slow_Priority = midcastEnfeeblingMND;

-- Goal: CurePotency Cap30% ; SIRD Cap102%; FastCast Cap80% ; Haste Cap25% ; Enmity-
profile.Sets.Midcast_HealingMagic_Priority = {
    Main  = {
        { Name = "Chatoyant Staff", Level = 51 },        -- CurePot+15
    },
    Sub   = {
            -- Wish: Lv.74 Verse Strap +0/1 [CurePot+2/3 Enm-2/3 MND+2/3]
        { Name = "Neph. Grip", Level = 51 },
    },
    Neck  = {
        { Name = "Fylgja Torque +1", Level = 75 },    -- CurePot+3  Enm-2
    },
    Ring1 = {
            -- Wish: +1
        { Name = "Saintly Ring", Level = 10 },        -- MND+2
    },
    Ring2 = {
        { Name = "Tamas Ring", Level = 30 },          -- MND+2~5
        { Name = "Saintly Ring", Level = 10 },        -- MND+2
    },
    Back  = {
        { Name = "Dew Silk Cape +1", Level = 75 },    -- CurePot+3  Enm-3
        { Name = "Mist Silk Cape", Level = 10 },      -- CurePot+1
    },
    Waist = {
        { Name = "Pythia Sash", Level = 75 },         --                   ConserveMP+4
        { Name = "Penitent's Rope", Level = 60 },     -- MND+5      Enm-3
    },
    Feet  = {
            -- Wish: Zenith Pumps+0/1 [(Aug) CurePot+5/6]
            -- Wish: Medium's Sabots [CurePot+4] {DomainInvasion}
    };
};

-- Goal: Max FastCast 80% ; Max Haste 25% ; Max SIRD 102%
-- Erase & -na spells don't care about skill, so prioritize recast (and SIRD)
local midcastFastCast = {
    Head  = {
        { Name = "Entrancing Ribbon", Level = 11 },   --         FC+1
    },
    Ear1  = {
        { Name = "Loquac. Earring", Level = 75 },     --         FC+2          MP+30 (Balance MPs)
    },
    Body  = {
        { Name = "Minstrel's Coat", Level = 63 },     --               Haste+2
    },
    Ring1 = {
        { Name = "Hibernal Ring", Level = 75 },       --          FC+2
    },
    Ring2 = {
        { Name = "Astral Ring", Level = 10 },         --                        MP+25 (Balance MPs)
    },
    Waist = {
        { Name = "Griot Belt", Level = 28 },          --               Haste+2
        { Name = "Silver Obi", Level = 20 },          -- SIRD-8
    },
    Legs  = {
        { Name = "White Slacks", Level = 50 },        --               Haste+3
        { Name = "Garrison Hose +1", Level = 20 },    --               Haste+2
    },
};
profile.Sets.Midcast_Poisona_Priority = midcastFastCast;
profile.Sets.Midcast_Paralyna_Priority = midcastFastCast;
profile.Sets.Midcast_Blindna_Priority = midcastFastCast;
profile.Sets.Midcast_Silenana_Priority = midcastFastCast;
profile.Sets.Midcast_Erase_Priority = midcastFastCast;
profile.Sets.Midcast_Raise_Priority = midcastFastCast;

-- Goal: Max FastCast 80%
profile.Sets.Precast_Default_Priority = {
        -- Wish: Lv.75 Reflexive Grip +0/1 [FC+1/3]
    Head  = {
        { Name = "remove", Level = 59 },              -- No head because of Vermillion Cloak
        { Name = "Entrancing Ribbon", Level = 11 },   -- FC+1
    },
    Ear1  = {
        { Name = "Loquac. Earring", Level = 75 },     -- FC+2
    },
    Body  = {
            -- Wish: Dalmatica +0/1 [(Aug) FC+4] // Carreful with Occ. Quickens Spellcasting!!
        { Name = "Vermillion Cloak", Level = 59 },    -- FC+3
    },
    Hands = {
            -- Wish: Brd. Cuffs +1 [(Aug) FC+3]
    },
    Ring1 = {
        { Name = "Hibernal Ring", Level = 75 },       -- FC+2
    },
    Back  = {
            -- Wish: Hierarch's Mantle [(Aug) FC+2]
    },
    Feet  = {
            -- Wish: Suzaku's Sune-Ate [(Aug) FC+4]
    };
};

-- Goal: Max FastCast 80% ; Cure Spellcasting
profile.Sets.Precast_HealingMagic_Priority = {
    Head  = {
        { Name = "Erudite Cap", Level = 70 },         -- CureSpellcasting-5
    },
    Back  = {
            -- Wish: Hierarch's Mantle [CureSpellcasting-7]
        { Name = "Mist Silk Cape", Level = 10 },      -- CureSpellcasting-1
    },
    Feet  = {
            -- Wish: Zenith Pumps+0/1 [(Aug) CureSpellcasting-5/6]
    };
};

profile.Sets.Resting_Default_Priority = {
    Main  = {
        { Name = "Chatoyant Staff", Level = 51 },        -- HMP+10
        { Name = "Pilgrim's Wand", Level = 10 },      -- MMP+3
    },
    Sub   = {
        { Name = "remove", Level = 51 },              -- No shield because of staff
        { Name = "Pelte", Level = 8 },                -- MMP+2
    },
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
    Feet  = {
        { Name = "Garrison Boots +1", Level = 20 },   -- HMP+2
    }
};

return profile;