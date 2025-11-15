local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Sets.Engaged_Default_Priority = {
    Main  = {
        { Name = "Xiutleato", Level = 75 },
        { Name = "Verdun", Level = 73 },
        { Name = "Enhancing Sword", Level = 68 },
            -- Wish: { Name = "Crimson Blade", Level = 49 },
        { Name = "Centurion's Sword", Level = 30 },
        { Name = "Auriga Xiphos", Level = 19 },
        { Name = "Xiphos", Level = 7 },
        "Ash Staff",
            -- Wish: Wax Sword +1?
    },
    Sub  = {
        { Name = "Genbu's Shield", Level = 74 },
        { Name = "Thorin's Shield", Level = 65 },
        { Name = "Viking Shield", Level = 45 },
        { Name = "Kupo Shield", Level = 7 },
    },
    Head  = {
        { Name = "Wivre Mask", Level = 65 },          -- ACC+5 DEX+3
        { Name = "Storm Zucchetto", Level = 50 },     -- ACC+4
        { Name = "Emperor Hairpin", Level = 24 },     --       DEX+3 EVA+10
        { Name = "Garrison Sallet +1", Level = 20 },
        { Name = "Cmp. Eye Circlet", Level = 9 },     --              EVA+5
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        -- Wish: Lv.70 Bloody Aketon [AGI+6/7 (Aug) AGI+4 ACC+8]
        -- Wish: Lv.60 Aketon [AGI+5 (Aug) ACC+5 ATK+5 H+2]
        -- Wish: Lv.57 Scorpion Harness [ACC+10 EVA+10 (Aug) PDT+3 Regen+1]
        { Name = "Raptor Jerkin", Level = 48 },       -- DEX+4 ATK+8
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Leather Vest +1", Level = 7 },
        "Kingdom Aketon",
    },
    Hands = {
        { Name = "Raptor Gloves", Level = 48 },       --                        DEX+4
        { Name = "Battle Gloves", Level = 14 },       -- ACC+3 EVA+3 STP+1
        { Name = "Mitts +1", Level = 8 },
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
        { Name = "Exile's Cloak", Level = 50 },       --        STR+4  ATK+3
        { Name = "Nomad's Mantle", Level = 24 },      -- EVA+3  AGI+1  DW+1
        { Name = "Traveler's Mantle", Level = 12 },   -- EVA+3
        { Name = "Rabbit Mantle", Level = 4 },
    },
    Waist = {
        { Name = "Virtuoso Belt", Level = 54 },
        { Name = "Griot Belt", Level = 28 },
        { Name = "Lizard Belt", Level = 17 },
        { Name = "Friar's Rope", Level = 14 },
    },
    Legs  = {
        { Name = "Raptor Trousers", Level = 50 },
        { Name = "Garrison Hose +1", Level = 20 },        -- STR+2 Haste+2
        { Name = "Phl. Trousers", Level = 15 },
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Raptor Ledelsens", Level = 48 },
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

profile.Sets.Idle_Default_Priority = {
    Main  = {
        { Name = "Terra's Staff", Level = 51 },         -- PDT-20
        { Name = "Centurion's Sword", Level = 30 },
        { Name = "Auriga Xiphos", Level = 19 },
        { Name = "Xiphos", Level = 7 },
        "Ash Staff",
            -- Wish: Wax Sword +1?
    },
    Sub  = {
        { Name = "remove", Level = 51 },              -- No shield because of staff. TODO: Find a grip
        { Name = "Viking Shield", Level = 45 },
        { Name = "Pelte", Level = 8 },
        { Name = "Kupo Shield", Level = 7 },
    },
    Ammo = {
        { Name = "Talon Tahtlum", Level = 50 },
        { Name = "Morion Tahtlum", Level = 25 },
        "Happy Egg",
    },
    Ear1 = {
        { Name = "Outlaw's Earring", Level = 50 },
        { Name = "Cunning Earring", Level = 29 },
        { Name = "remove", Level = 1 },
    },
    Ear2 = {
        { Name = "Insomnia Earring", Level = 50 },
        { Name = "Dodge Earring", Level = 29 },
        { Name = "remove", Level = 1 },
    },
    Head  = {
        { Name = "remove", Level = 59 },              -- No head because of Vermillion Cloak
        { Name = "Gambler's Chapeau", Level = 50 },   -- MP+20 INT+3
        { Name = "Garrison Sallet +1", Level = 20 },  -- Regen+1 under lv.50
        { Name = "Traveler's Hat", Level = 6 },
        "Coven Hat",
    },
    Neck  = {
        { Name = "Oneiros Torque", Level = 75 },      -- EVA+5 PDT-2
        { Name = "Radiant Lantern", Level = 60 },
        { Name = "Justice Badge", Level = 7 },
    },
    Body  = {
        { Name = "Vermillion Cloak", Level = 59 },       -- Refresh+1
        { Name = "Garrison Tunica +1", Level = 20 },     -- Refresh+1 while below lv.50
        { Name = "Druid's Robe", Level = 8 },
        "Tidal Talisman",
    },
    Hands = {
        -- { Name = "Garrison Gloves +1", Level = 20 },-- MP+5 INT+2
        { Name = "Zealot's Mitts", Level = 11 },       -- MP+5 MND+3
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
        { Name = "Tundra Mantle", Level = 39 },
        { Name = "Silver Obi", Level = 20 },
        { Name = "Mist Silk Cape", Level = 10 },
    },
    Waist = {
        { Name = "Heko Obi", Level = 8 },             -- AGI+3 ACC+3
    },
    Legs  = {
        { Name = "White Slacks", Level = 50 },            -- Haste+3 Regen +1
        { Name = "Garrison Hose +1", Level = 20 },        -- Haste+2
        { Name = "Phl. Trousers", Level = 15 },
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Garrison Boots +1", Level = 20 },       -- INT+2 MND+2
        { Name = "Power Sandals", Level = 18 },           -- VIT+3
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

-- Goal: Max SIRD 102%; Max FastCast 80% ; Max Haste 25%
profile.Sets.Midcast_Default_Priority = {
    Main  = {
        { Name = "Chatoyant Staff", Level = 51 },
        "Maple Wand +1",
    },
    Sub   = {
        { Name = "Neph. Grip", Level = 51 },          -- INT+1
        "Kupo Shield",
    },
    Ammo = {
        { Name = "Morion Tahtlum", Level = 25 },      -- INT+1
    },
    Head  = {
        { Name = "Gambler's Chapeau", Level = 20 },   -- INT+3
    },
    Ear1 = {
        { Name = "Cunning Earring", Level = 29 },     -- INT+1
    },
    Neck  = {
        { Name = "Justice Badge", Level = 7 },
    },
    Back  = {
        { Name = "Coton Cape", Level = 18 },          -- INT+1       -- TODO: Keep for nukes
        { Name = "Mist Silk Cape", Level = 10 },      -- CurePot+1   -- TODO: Keep for Cure
    },
    Waist = {
        { Name = "Silver Obi", Level = 20 },          -- SIRD-8
    },
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

local midcastEnfeeblingINT = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- INT+2
    },
    Ring1 = {
        { Name = "Hibernal Ring", Level = 75 },       -- INT+5
        { Name = "Eremite's Ring +1", Level = 10 },   -- INT+3
    },
    Ring2 = {
        { Name = "Tamas Ring", Level = 30 },          -- INT+2~5
        { Name = "Eremite's Ring", Level = 10 },      -- INT+2
    },
}
profile.Sets.Midcast_Blind_Priority = midcastEnfeeblingINT;
profile.Sets.Midcast_Poison_Priority = midcastEnfeeblingINT;

profile.Sets.Midcast_ElementalMagic_Priority = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- INT+2
    },
    Ring1 = {
        { Name = "Eremite's Ring +1", Level = 10 },   -- INT+3
    },
    Ring2 = {
        { Name = "Eremite's Ring", Level = 10 },      -- INT+2
    },
}

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
    Feet  = {
        { Name = "Raptor Ledelsens", Level = 48 },    --               Haste+2
    },
};
profile.Sets.Midcast_Poisona_Priority = midcastFastCast;
profile.Sets.Midcast_Paralyna_Priority = midcastFastCast;
profile.Sets.Midcast_Blindna_Priority = midcastFastCast;
profile.Sets.Midcast_Silenana_Priority = midcastFastCast;
profile.Sets.Midcast_Erase_Priority = midcastFastCast;
profile.Sets.Midcast_Raise_Priority = midcastFastCast;

-- Goal: Max FastCast 80% ; Max Haste 25% ; Max SIRD 102%
-- Erase & -na spells don't care about skill, so prioritize recast (and SIRD)
local midcastFastCast = {
    Head  = {
        { Name = "Entrancing Ribbon", Level = 11 },   --         FC+1
    },
    Ear1  = {
        { Name = "Loquac. Earring", Level = 75 },     --         FC+2          MP+30 (Balance MPs)
    },
    Neck  = {
    },
    Body  = {
        { Name = "Minstrel's Coat", Level = 63 },     --               Haste+2
    },
    Ring1 = {
        { Name = "Hibernal Ring", Level = 75 },       --          FC+2
    },
    Waist = {
        { Name = "Griot Belt", Level = 28 },          --               Haste+2
        { Name = "Silver Obi", Level = 20 },          -- SIRD-8
    },
    Legs  = {
        { Name = "White Slacks", Level = 50 },        --               Haste+3
        { Name = "Garrison Hose +1", Level = 20 },    --               Haste+2
    },
    Feet  = {
        { Name = "Raptor Ledelsens", Level = 48 },    --               Haste+2
    },
};
profile.Sets.Midcast_Poisona_Priority = midcastFastCast
profile.Sets.Midcast_Paralyna_Priority = midcastFastCast
profile.Sets.Midcast_Blindna_Priority = midcastFastCast
profile.Sets.Midcast_Silenana_Priority = midcastFastCast
profile.Sets.Midcast_Erase_Priority = midcastFastCast
profile.Sets.Midcast_Raise_Priority = midcastFastCast

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