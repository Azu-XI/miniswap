local profile = gFunc.LoadFile('common/miniswap.lua');
local sets = {};

sets.Engaged_Default_Priority = {
    Main  = {
        { Name = "Xiutleato", Level = 75 },
        { Name = "Verdun", Level = 73 },
        { Name = "Enhancing Sword", Level = 68 },
            -- Wish: { Name = "Crimson Blade", Level = 49 },
        { Name = "Centurion's Sword", Level = 30 },
        { Name = "Auriga Xiphos", Level = 19 },
        { Name = "Xiphos +1", Level = 7 },
        "Wax Sword +1",
    },
    Sub  = {
        { Name = "Genbu's Shield", Level = 74 },
        { Name = "Thorin's Shield", Level = 65 },
        { Name = "Viking Shield", Level = 45 },
        "Kupo Shield",
    },
    Head  = {
        { Name = "Wivre Mask", Level = 65 },          -- EVA+10 ACC+5 DEX+3 STR+2
        { Name = "Heroic Hairpin", Level = 30 },      -- PDT-2 H+2 DW+3
        { Name = "Emperor Hairpin", Level = 24 },     --       DEX+3 EVA+10
        { Name = "Garrison Sallet +1", Level = 20 },
            { Name = "Cmp. Eye Circlet", Level = 9 },     -- EVA+5     --              EVA+5
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
        { Name = "Brigandine +1", Level = 45 },       -- STR+3 DEX+3 AGI+3 VIT+3 HP+10 MP+10 ATK+4
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Leather Vest +1", Level = 7 },
        "Kingdom Aketon",
    },
    Hands = {
        { Name = "Swift Gages", Level = 75 },         -- STP+2 Haste+4 DA+2 ATK+5
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
        { Name = "Amemet Mantle +1", Level = 61 },    --        STR+2  ATK+15
        { Name = "Exile's Cloak", Level = 50 },       --        STR+4  ATK+3
        { Name = "Nomad's Mantle", Level = 24 },      -- EVA+3  AGI+1  DW+1
        { Name = "Traveler's Mantle", Level = 12 },   -- EVA+3
        { Name = "Rabbit Mantle", Level = 4 },
    },
    Waist = {
        { Name = "Virtuoso Belt", Level = 54 },       -- ACC+12                 ATK+4
        { Name = "Griot Belt", Level = 28 },          -- HP+5 H+2
        { Name = "Heko Obi", Level = 8 },             -- AGI+3 ACC+3
    },
    Legs  = {
        { Name = "Raptor Trousers", Level = 50 },
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2 Haste+2
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Raptor Ledelsens", Level = 48 },
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

sets.Idle_Default_Priority = {
    Main  = {
        { Name = "Terra's Staff", Level = 51 },       -- PDT-20
        "Maple Wand +1",
    },
    Sub   = {
        { Name = "Neph. Grip", Level = 51 },          -- INT+1
        "Kupo Shield",
    },
    Ammo = {
        { Name = "Talon Tahtlum", Level = 50 },
        { Name = "Morion Tahtlum", Level = 25 },
        "Happy Egg",
    },
    Head  = {
        { Name = "Erudite Cap", Level = 73 },
        { Name = "remove", Level = 59 },              -- No head because of Vermillion Cloak
        { Name = "Gambler's Chapeau", Level = 50 },   -- MP+20 INT+3
        { Name = "Garrison Sallet +1", Level = 20 },  -- Regen+1 under lv.50
        { Name = "Cmp. Eye Circlet", Level = 9 },     -- EVA+5
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Outlaw's Earring", Level = 50 },
        { Name = "Cunning Earring", Level = 29 },
        { Name = "remove", Level = 1 },
    },
    Ear2 = {
        { Name = "Pigeon Earring", Level = 33 },      -- HP+20 MP+15
        { Name = "remove", Level = 1 },
    },
    Neck  = {
        { Name = "Oneiros Torque", Level = 75 },      -- EVA+5 PDT-2
        { Name = "Radiant Lantern", Level = 60 },
        { Name = "Justice Badge", Level = 7 },
    },
    Body  = {
        { Name = "Dalmatica", Level = 73 },           -- Refresh+1 MDB+5 ResistPara+2
        { Name = "Vermillion Cloak", Level = 59 },       -- Refresh+1
        { Name = "Garrison Tunica +1", Level = 20 },     -- Refresh+1 while below lv.50
        { Name = "Druid's Robe", Level = 8 },
        "Tidal Talisman",
    },
    Hands = {
        { Name = "Swift Gages", Level = 75 },         -- STP+2 Haste+4 DA+2 ATK+5
        { Name = "Raptor Gloves", Level = 48 },       --                        DEX+4
        -- { Name = "Garrison Gloves +1", Level = 20 },-- MP+5 INT+2
        { Name = "Zealot's Mitts", Level = 11 },       -- MP+5 MND+3
        { Name = "Mitts +1", Level = 8 },
        "Dream Mittens +1",
    },
    Ring1 = {
        { Name = "Defending Ring", Level = 70 },      -- DT-10
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
            -- Wish: Lv.68 Umbra Cape [PDT-6]
        { Name = "Cheviot Cape", Level = 68 },        -- PDT-5 Dark+13
        { Name = "Tundra Mantle", Level = 39 },       -- MP+5 MND+2
        { Name = "Mist Silk Cape", Level = 10 },
    },
    Waist = {
        { Name = "Penitent's Rope", Level = 60 },
        { Name = "Silver Obi", Level = 20 },          -- MP+10
        { Name = "Heko Obi", Level = 8 },             -- AGI+3 ACC+3
    },
    Legs  = {
        { Name = "Morrigan's Slops", Level = 75 },    -- INT+10  Enmity-2
        { Name = "Zenith Slacks +1", Level = 73 },
        { Name = "White Slacks", Level = 50 },        -- Haste+3 Regen +1
        { Name = "Garrison Hose +1", Level = 20 },    -- Haste+2
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Raptor Ledelsens", Level = 48 },
        { Name = "Garrison Boots +1", Level = 20 },   -- INT+2 MND+2
        { Name = "Power Sandals", Level = 18 },       -- VIT+3
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

-- Goal: Max SIRD 102%; Max FastCast 80% ; Max Haste 25%
sets.Midcast_Default_Priority = {
    Main  = {
        { Name = "Chatoyant Staff", Level = 51 },
        "Maple Wand +1",
    },
    Sub   = {
        { Name = "Neph. Grip", Level = 51 },          -- INT+1
        "Kupo Shield",
    },
    Ammo = {
        { Name = "Rimestone", Level = 60 },           -- MP+35  MACC+3  INT+3  MND+1  Emn-5
        { Name = "Morion Tahtlum", Level = 25 },      -- INT+1
    },
    Head = {
        { Name = "Gambler's Chapeau", Level = 20 },   -- INT+3
    },
    Ear1 = {
        { Name = "Cunning Earring", Level = 29 },     -- INT+1
    },
    Ear2 = {
        { Name = "Cunning Earring", Level = 29 },     -- INT+1
    },
    Neck  = {
        { Name = "Justice Badge", Level = 7 },
    },
    Back  = {
        { Name = "Oneiro's Cape", Level = 75 },       -- MACC+4
        { Name = "Black Cape +1", Level = 32 },       -- INT+3
        { Name = "Cotton Cape", Level = 18 },         -- INT+1
        { Name = "Mist Silk Cape", Level = 10 },
    },
    Waist = {
        { Name = "Salire Belt", Level = 75 },         -- MACC+4 MAB+4
        { Name = "Penitent's Rope", Level = 60 },     -- INT+5                 Enm-3
            -- Wish: Lv.50 Ocean Stone [INT+3]
            -- Wish: Lv.41 Reverend Sash [INT+2]
            -- Wish: Lv.28 Shaman's Belt [INT+1]
        { Name = "Silver Obi", Level = 20 },          -- SIRD-8
        { Name = "Friar's Rope", Level = 14 },
    },
    Legs  = {
        { Name = "Morrigan's Slops", Level = 75 },    -- INT+10  Enmity-2
        { Name = "Seer's Slacks", Level = 29 },       -- INT+1  MACC+2
    },
    Feet  = {
        { Name = "Custom M Boots", Level = 29 },      -- INT+3
        { Name = "Garrison Boots +1", Level = 20 },   -- INT+2          MND+2
    },
};

local midcastEnfeeblingMND = {
    Neck  = {
        { Name = "Mohbwa Scarf +1", Level = 40 },     -- MND+2
        { Name = "Justice Badge", Level = 7 },        -- MND+3
    },
    Ring2 = {
        { Name = "Tamas Ring", Level = 30 },          -- MND+2~5
    },
    Back  = {
        { Name = "Dew Silk Cape +1", Level = 75 },    -- MND+6
        { Name = "Tundra Mantle", Level = 39 },       -- MND+2
    },
    Waist = {
        { Name = "Salire Belt", Level = 75 },         -- MND+5 MACC+4
        { Name = "Penitent's Rope", Level = 60 },     -- MND+5                 Enm-3
        { Name = "Friar's Rope", Level = 14 },        -- MND+1
    },
    Legs  = {
        { Name = "Morrigan's Slops", Level = 75 },    -- MND+10
        { Name = "Custom Slacks", Level = 31 },       -- MND+3
    },
    Feet  = {
        { Name = "Garrison Boots +1", Level = 20 },   -- MND+2
    },
}
sets.Midcast_Paralyze_Priority = midcastEnfeeblingMND;
sets.Midcast_Slow_Priority = midcastEnfeeblingMND;  -- TODO: Add Earth Grip

local midcastEnfeeblingINT = {
    Neck  = {
            -- Wish: Lv.75 Moepapa Pendant [INT+8 MCrit+5 Enm-5] {Arch Christelle@DynaValk}
        { Name = "Lmg. Medallion +1", Level = 75 },   -- INT+5 ElemSkill+5
            -- Wish: Lv.60 Radiant Lantern [(Aug) INT+4]
        { Name = "Mohbwa Scarf +1", Level = 40 },     -- INT+2
            -- Wish: Lv.20 Black Silk Neckerchief [INT+1]
    },
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- INT+2
    },
    Ring1 = {
        { Name = "Hibernal Ring", Level = 75 },       -- INT+5
        { Name = "Eremite's Ring +1", Level = 10 },   -- INT+3
    },
    Ring2 = {
        { Name = "Galdr Ring", Level = 75 },          -- INT+6
        { Name = "Tamas Ring", Level = 30 },          -- INT+2~5
        { Name = "Eremite's Ring", Level = 10 },      -- INT+2
    },
    Back  = {
        { Name = "Oneiro's Cape", Level = 75 },       -- MACC+4
        { Name = "Black Cape +1", Level = 32 },       -- INT+3
        { Name = "Cotton Cape", Level = 18 },         -- INT+1
    },
    Waist = {
        { Name = "Salire Belt", Level = 75 },         -- MACC+4
        { Name = "Penitent's Rope", Level = 60 },     -- INT+5                 Enm-3
            -- Wish: Lv.50 Ocean Stone [INT+3]
            -- Wish: Lv.41 Reverend Sash [INT+2]
            -- Wish: Lv.28 Shaman's Belt [INT+1]
        { Name = "Silver Obi", Level = 20 },          -- SIRD-8
    },
    Legs  = {
        { Name = "Morrigan's Slops", Level = 75 },    -- INT+10
        { Name = "Seer's Slacks", Level = 29 },       -- INT+1  MACC+2
    },
    Feet  = {
        { Name = "Custom M Boots", Level = 29 },      -- INT+3
        { Name = "Garrison Boots +1", Level = 20 },   -- INT+2          MND+2
    },
}
sets.Midcast_Blind_Priority = midcastEnfeeblingINT;
sets.Midcast_Poison_Priority = midcastEnfeeblingINT;

sets.Midcast_ElementalMagic_Priority = {
    Ear2 = {
        { Name = "Moldavite Earring", Level = 47 },   --       MAB+5
        { Name = "Cunning Earring", Level = 29 },     -- INT+1
    },
    Neck  = {
            -- Wish: Lv.75 Moepapa Pendant [INT+8 MCrit+5 Enm-5] {Arch Christelle@DynaValk}
        { Name = "Lmg. Medallion +1", Level = 75 },   -- INT+5 ElemSkill+5
            -- Wish: Lv.60 Radiant Lantern [(Aug) INT+4]
        { Name = "Mohbwa Scarf +1", Level = 40 },     -- INT+2
            -- Wish: Lv.20 Black Silk Neckerchief [INT+1]
    },
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- INT+2
    },
    Ring1 = {
        { Name = "Hibernal Ring", Level = 75 },       -- INT+5  MAC+2  FC+2
        { Name = "Eremite's Ring +1", Level = 10 },   -- INT+3
        "Windurstian Ring",                           -- INT+1
    },
    Ring2 = {
        { Name = "Galdr Ring", Level = 75 },          -- INT+6  MAB+1
        { Name = "Tamas Ring", Level = 30 },          -- INT+2~5
        { Name = "Eremite's Ring", Level = 10 },      -- INT+2
    },
    Back  = {
            -- Wish: Lv.75 Hachirin-no-Obi (depending on day/weather)
            -- Wish: Lv.75 Resonance Sash [ElemSkill+8 MBDmg+5]
            -- Wish: Lv.75 Hecate's Cape? [MACC+3 MAB+3]
            -- Wish: Lv.75 Merciful Cape? [EleSkill+5]
        { Name = "Oneiro's Cape", Level = 75 },       -- MACC+4
        { Name = "Black Cape +1", Level = 32 },       -- INT+3
        { Name = "Cotton Cape", Level = 18 },         -- INT+1
        { Name = "Mist Silk Cape", Level = 10 },
    },
    Waist = {
        { Name = "Salire Belt", Level = 75 },         -- MACC+4 MAB+4
        { Name = "Penitent's Rope", Level = 60 },     -- INT+5                 Enm-3
            -- Wish: Lv.50 Ocean Stone [INT+3]
            -- Wish: Lv.41 Reverend Sash [INT+2]
            -- Wish: Lv.28 Shaman's Belt [INT+1]
        { Name = "Silver Obi", Level = 20 },          -- SIRD-8
    },
    Legs  = {
            -- Wish: Lv.75 Shadow Trews +0/1? [MACC+4/5 MAB+4/5 (Aug) MAB+1~4 ElemSkill+1~6 ConserveMP+1~6]
        { Name = "Morrigan's Slops", Level = 75 },    -- INT+10  Enmity-2
        { Name = "Seer's Slacks", Level = 29 },       -- INT+1   MACC+2
    },
    Feet  = {
        { Name = "Custom M Boots", Level = 29 },      -- INT+3
        { Name = "Garrison Boots +1", Level = 20 },   -- INT+2          MND+2
    },
};

sets.Midcast_Stone_Priority = { Sub = {{ Name = "Earth Grip", Level = 75 }} };
sets.Midcast_Aero_Priority = { Sub = {{ Name = "Wind Grip", Level = 75 }} };

-- Goal: CurePotency Cap30% ; SIRD Cap102%; FastCast Cap80% ; Haste Cap25% ; Enmity-
sets.Midcast_HealingMagic_Priority = {
    Main  = {
        { Name = "Chatoyant Staff", Level = 51 },        -- CurePot+10
    },
    Sub   = {
            -- Wish: Lv.74 Verse Strap +0/1 [CurePot+2/3 Enm-2/3 MND+2/3]
        { Name = "Neph. Grip", Level = 51 },
    },
    Ear2 = {
        { Name = "Roundel Earring", Level = 73 },     -- CurePot+5%
    },
    Neck  = {
        { Name = "Fylgja Torque +1", Level = 75 },    -- CurePot+3  Enm-2
    },
    Ring2 = {
        { Name = "Tamas Ring", Level = 30 },          -- MND+2~5
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
    Body  = {
        { Name = "Minstrel's Coat", Level = 63 },     --               Haste+2
    },
    Ear1  = {
        { Name = "Loquac. Earring", Level = 75 },     --         FC+2          MP+30 (Balance MPs)
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
sets.Midcast_Poisona_Priority = midcastFastCast;
sets.Midcast_Paralyna_Priority = midcastFastCast;
sets.Midcast_Blindna_Priority = midcastFastCast;
sets.Midcast_Silenana_Priority = midcastFastCast;
sets.Midcast_Erase_Priority = midcastFastCast;
sets.Midcast_Raise_Priority = midcastFastCast;

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
sets.Midcast_Poisona_Priority = midcastFastCast
sets.Midcast_Paralyna_Priority = midcastFastCast
sets.Midcast_Blindna_Priority = midcastFastCast
sets.Midcast_Silenana_Priority = midcastFastCast
sets.Midcast_Erase_Priority = midcastFastCast
sets.Midcast_Raise_Priority = midcastFastCast

-- Goal: Max FastCast 80%
sets.Precast_Default_Priority = {
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
sets.Precast_HealingMagic_Priority = {
    Head  = {
        { Name = "Erudite Cap", Level = 70 },         -- CureCast-5
    },
    Back  = {
            -- Wish: Hierarch's Mantle [CureCast-7]
        { Name = "Mist Silk Cape", Level = 10 },      -- CureCast-1
    },
    Feet  = {
            -- Wish: Zenith Pumps+0/1 [(Aug) CureCast-5/6]
    };
};

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
        { Name = "remove", Level = 51 },              -- No shield because of staff
        { Name = "Pelte", Level = 8 },                -- HMP+2
    },
        -- Ear1: Wish: Lv.75 Darkness/Pluto's Earring [HMP+2/3]
        -- Ear2: Wish: Lv.75 Darkness/Pluto's Earring [HMP+2/3]
        -- Neck: Wish: Lv.50 Beak Necklace +1 [HMP+2]
        -- Body: Wish: Lv.72 Mahatma Houppelande [HMP+6]
    Waist = {
            -- Wish: Lv.70 Duelist's Belt [HMP+4]
            -- Wish: Lv.40 Qiqirn Sash +1 [HMP+3] 
    },
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
        -- Ring1: Wish: Lv.75 Fenrir Ring +0/1 [HMP+3/5]
        -- Ring2: Wish: Lv.75 Fenrir Ring +0/1 [HMP+3/5]
    Feet  = {
            -- Wish: Lv.74 Warlock's Boots +1 [(Aug) HMP+3]
            -- Wish: Lv.70 Numerist Pumps [HMP+3]
        { Name = "Garrison Boots +1", Level = 20 },   -- HMP+2
    }
};

profile.Sets = sets;
return profile;