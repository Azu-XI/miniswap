local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Sets.LockStyle = {
    Main  = "Baqil Staff",
    Head  = "Demon Helm",
    Body  = "Vanya Robe",
    Hands = "Sorcerer's Gloves",
    Legs  = "Sorcerer's Tonban",
    Feet  = "Sorcerer's Sabots",
};

profile.Sets.Idle_Default_Priority = {
    Main  = {
        { Name = "Earth Staff", Level = 51 },         -- PDT-20
        { Name = "Ash Pole +1", Level = 5 },          -- INT+3
        { Name = "Maple Wand +1", Level = 1 },
    },
    Sub   = {
            -- Wish: Lv75 Longbeard's Grip +0/1 [MDT-2/4 MEva+4/8 Refresh+0/1]
        { Name = "Neph. Grip", Level = 8 },           -- INT+1
        { Name = "remove", Level = 5 },               -- No shield with staff
        "Kupo Shield",
    },
    Ammo = {
            -- Wish: Lv.66 Phantom Tathlum [INT+2]
        { Name = "Morion Tathlum", Level = 25 },      -- INT+1
        { Name = "Happy Egg", Level = 1 },
    },
    Head  = {
        { Name = "Demon Helm", Level = 74 },
        { Name = "remove", Level = 59 },              -- No head because of Vermillion Cloak
        { Name = "Gambler's Chapeau", Level = 50 },   -- MP+20 INT+3
        { Name = "Garrison Sallet +1", Level = 20 },  -- Regen+1 under lv.50
        { Name = "Traveler's Hat", Level = 6 },
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Loquac. Earring", Level = 75 },
            -- Wish: Lv.29 Morion Earring +1 [INT+2]
        { Name = "Cunning Earring", Level = 29 },     -- INT+1
    },
    Ear2 = {
        { Name = "Moldavite Earring", Level = 47 },   --       MAB+5
            -- Wish: Lv.29 Morion Earring +1 [INT+2]
        { Name = "Cunning Earring", Level = 29 },     -- INT+1
    },
    Neck  = {
        { Name = "Lmg. Medallion +1", Level = 75 },
            -- Wish: Lv.60 Radiant Lantern [(Aug) INT+4]
        { Name = "Mohbwa Scarf +1", Level = 40 },     -- INT+2
            -- Wish: Lv.20 Black Silk Neckerchief [INT+1]
        { Name = "Justice Badge", Level = 7 },        --        MND+3
    },
    Body  = {
        { Name = "Sorcerer's Coat", Level = 74 },       -- Refresh+1
        { Name = "Vermillion Cloak", Level = 59 },       -- Refresh+1
        { Name = "Garrison Tunica +1", Level = 20 },     -- Refresh+1 while below lv.50
        { Name = "Druid's Robe", Level = 8 },
        "Kingdom Aketon", 
    },
    Hands = {
        { Name = "Sorcerer's Gloves", Level = 72 },
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
            -- Wish: Lv.30 Tamas Ring [INT+2~5]
        { Name = "Eremite's Ring +1", Level = 10 },   -- INT+3
        "Provenance Ring",
    },
    Back  = {
        { Name = "Black Cape +1", Level = 32 },       -- INT+1
        { Name = "Cotton Cape", Level = 18 },         -- INT+1
        { Name = "Mist Silk Cape", Level = 10 },
    },
    Waist = {
        { Name = "Salire Belt", Level = 75 },
        { Name = "Penitent's Rope", Level = 60 },     -- INT+5 MND+5
            -- Wish: Lv.50 Ocean Stone [INT+3]
            -- Wish: Lv.41 Reverend Sash [INT+2]
            -- Wish: Lv.28 Shaman's Belt [INT+1]
        { Name = "Silver Obi", Level = 20 },
        { Name = "Friar's Rope", Level = 14 },
    },
    Legs  = {
        { Name = "Sorcerer's Tonban", Level = 73 },
        { Name = "White Slacks", Level = 50 },        -- Regen +1
        { Name = "Seer's Slacks", Level = 29 },
        { Name = "Garrison Hose +1", Level = 20 },
        { Name = "Slacks +1", Level = 8 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Sorcerer's Sabots", Level = 71 },   -- INT+2 ConserveMP+5
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
            -- Wish: Lv.75 Kaladanda {Oboro}
            -- Wish: Lv.51 Chatoyant Staff
        { Name = "Iridal Staff", Level = 51 },
        { Name = "Ash Pole +1", Level = 5 },          -- INT+3
        { Name = "Maple Wand +1", Level = 1 },
    },
    Sub   = {
            -- Wish: Lv.75 Reflexive Grip +1 [MACC+4]
            -- Wish: Lv.70 Omni Grip [MACC+3]
            -- Wish: Lv.70 Elemental Grips [EleMACC+2]
        { Name = "Neph. Grip", Level = 8 },           -- INT+1
        { Name = "remove", Level = 5 },               -- No shield with staff
        "Kupo Shield",
    },
    Ammo = {
            -- Wish: Lv.66 Phantom Tathlum [INT+2]
        { Name = "Morion Tahtlum", Level = 25 },      -- INT+1
    },
    Head  = {
            -- Wish: Lv.75 Src. Petasos +1 [ElemSkill+10 (Aug) INT+8 MAB+6 Enm-5]
        { Name = "Demon Helm", Level = 73 },          -- INT+5  ElemSkill +5
            -- Wish: Lv.60 Wizard's Petasos [INT+4]
        { Name = "Gambler's Chapeau", Level = 20 },   -- INT+3
    },
    Ear1 = {
            -- Wish: Lv.75 Novio Earring {Aura of Adulation@Jailer of Love}
            -- Wish: Lv.29 Morion Earring +1 [INT+2]
        { Name = "Cunning Earring", Level = 29 },     -- INT+1
    },
    Ear2 = {
        { Name = "Moldavite Earring", Level = 47 },   --       MAB+5
            -- Wish: Lv.29 Morion Earring +1 [INT+2]
        { Name = "Cunning Earring", Level = 29 },     -- INT+1
    },
    Neck  = {
            -- Wish: Lv.75 Moepapa Pendant [INT+8 MCrit+5 Enm-5] {Arch Christelle@DynaValk}
        { Name = "Lmg. Medallion +1", Level = 75 },   -- INT+5 ElemSkill+5
            -- Wish: Lv.60 Radiant Lantern [(Aug) INT+4]
        { Name = "Mohbwa Scarf +1", Level = 40 },     -- INT+2
            -- Wish: Lv.20 Black Silk Neckerchief [INT+1]
        { Name = "Justice Badge", Level = 7 },        --                MND+3
    },
    Body  = {
            -- Wish: Morrigan's Robe [INT+8 MAB+5 MACC+5]
        { Name = "Vanya Robe", Level = 75 },          -- INT+5  MAB+5  MagicBurst+5
        { Name = "Seer's Tunic", Level = 29 },        -- INT+1
    },
    Hands = {
            -- Wish: Lv.73 Genie Manillas [MAB+3 ElemSkill+6 (Aug) INT+8 MCrit+8 ConserveMP+6 OccultAcumen+30]
            -- Wish: Lv.75 Src. Gloves +1 [(Aug) INT+8 MAB+6]
            -- Wish: Lv.74 Wizard's Gloves +1 [INT+3 ElemSkill+15 (Aug) MAB+5 ConserveMP+5]
            -- Wish: Lv.75 Morrigan's Cuffs [MAB+5 MACC+5 INT+3]
        { Name = "Garrison Gloves +1", Level = 20 },  -- INT+2
    },
    Ring1 = {
            -- WishL Lv.50 Sorcerer's Ring [MAB+10 when HP<=75%]
        { Name = "Eremite's Ring +1", Level = 10 },   -- INT+3
        "Windurstian Ring",                           -- INT+1
    },
    Ring2 = {
        { Name = "Hibernal Ring", Level = 75 },       -- INT+5
            -- Wish: Lv.30 Tamas Ring [INT+2~5]
            -- Wish: +1
        { Name = "Eremite's Ring", Level = 10 },      -- INT+2
    },
    Back  = {
            -- Wish: Lv.75 Hachirin-no-Obi (depending on day/weather)
            -- Wish: Lv.75 Resonance Sash [ElemSkill+8 MBDmg+5]
            -- Wish: Lv.75 Hecate's Cape? [MACC+3 MAB+3]
            -- Wish: Lv.75 Merciful Cape? [EleSkill+5]
        { Name = "Black Cape +1", Level = 32 },       -- INT+1
        { Name = "Cotton Cape", Level = 18 },         -- INT+1
        { Name = "Mist Silk Cape", Level = 10 },
    },
    Waist = {
            -- Wish? Lv.70 Sorcerer's Belt [INT+6 (Aug) ElemSkill+6 MAB+3]
        { Name = "Salire Belt", Level = 75 },         -- MACC+4 MAB+4
        { Name = "Penitent's Rope", Level = 60 },     -- INT+5                 Enm-3
            -- Wish: Lv.50 Ocean Stone [INT+3]
            -- Wish: Lv.41 Reverend Sash [INT+2]
            -- Wish: Lv.28 Shaman's Belt [INT+1]
        { Name = "Silver Obi", Level = 20 },          -- SIRD-8
        { Name = "Friar's Rope", Level = 14 },
    },
    Legs  = {
            -- Wish: Lv.75 Shadow Trews +0/1? [MACC+4/5 MAB+4/5 (Aug) MAB+1~4 ElemSkill+1~6 ConserveMP+1~6]
            -- Wish: Lv.75 Src. Tonban +1 [INT+3 (Aug) ElemSkill+8 MCrit+8 MCritDmg+8]
        { Name = "Errant Slops", Level = 72 },        -- INT+7  Enmity-3
        { Name = "Seer's Slacks", Level = 29 },       -- INT+1  MACC+2
    },
    Feet  = {
            -- Wish: Lv.75 Src. Sabots +1 [INT+3 (Aug) MAB+3 MBurst+3 MCrit+8]
        { Name = "Sorcerer's Sabots", Level = 71 },   -- INT+2  ConserveMP+5
        { Name = "Custom M Boots", Level = 29 },      -- INT+3
        { Name = "Garrison Boots +1", Level = 20 },   -- INT+2          MND+2
        { Name = "Power Sandals", Level = 18 },       -- VIT+3
    },
};

-- Goal: Drain/Aspir Potency ; Dark magic skill
profile.Sets.Midcast_Drain_Priority = {
    Ear1  = {
        { Name = "Hirudinea Earring", Level = 75 },   -- DrainAspirPot+3
    },
    Hands = {
            -- Wish: Lv.75 Src. Gloves +1 [DarkSkill+12 (Aug) DrainAspirPot+6]
        { Name = "Sorcerer's Gloves", Level = 72 },   -- DarkSkill+10
    },
    Legs  = {
            -- Wish: Lv.74 Wizard's Tonban +1 [DarkSkill+15 (Aug) DrainAspirPot+5]
            -- Wish: Lv.56 Wizard's Tonban [DarkSkill+15]
    },
    Feet  = {
            -- Wish: Lv.73 Genie Huaraches [DarkSkill+5 (Aug) DarkSkill+10 DrainAspirPot+6]
    },
};
profile.Sets.Midcast_Aspir_Priority = profile.Sets.Midcast_Drain_Priority;

local midcastEnfeeblingMND = {
    Ring1 = {
            -- Wish: +1
        { Name = "Saintly Ring", Level = 10 },        -- MND+2
    },
    Ring2 = {
            -- Wish: Lv.30 Tamas Ring [INT+2~5]
            -- Wish: +1
        { Name = "Saintly Ring", Level = 10 },        -- MND+2
    },
}
profile.Sets.Midcast_Paralyze_Priority = midcastEnfeeblingMND;
profile.Sets.Midcast_Slow_Priority = midcastEnfeeblingMND;

-- Goal: CurePotency Cap30% ; SIRD Cap102%; FastCast Cap80% ; Haste Cap25% ; Enmity-
profile.Sets.Midcast_HealingMagic_Priority = {
    Main  = {
            -- Wish: Chatoyant Staff [CurePot+15]
        { Name = "Iridal Staff", Level = 51 },        -- CurePot+10
    },
    Sub   = {
            -- Wish: Lv.74 Verse Strap +0/1 [CurePot+2/3 Enm-2/3 MND+2/3]
        { Name = "Neph. Grip", Level = 51 },
    },
    Neck  = {
        { Name = "Fylgja Torque +1", Level = 75 },    -- CurePot+3  Enm-2
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

-- Goal: Max FastCast 80%
profile.Sets.Precast_Default_Priority = {
    Head  = {
        { Name = "remove", Level = 59 },              -- No head because of Vermillion Cloak
    },
    Ear1  = {
        { Name = "Loquac. Earring", Level = 75 },     -- FC+2
    },
    Body  = {
        { Name = "Vermillion Cloak", Level = 59 },    -- FC+3
    },
    Ring1 = {
        { Name = "Hibernal Ring", Level = 75 },       -- FC+2
    },
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
}

profile.Sets.Resting_Default_Priority = {
    Main  = {
        { Name = "Iridal Staff", Level = 51 },        -- HMP+10
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