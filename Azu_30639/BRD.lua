local profile = gFunc.LoadFile('common/miniswap.lua');
local sets = {};

sets.LockStyle = {
    Main  = "Baqil Staff",
    Head  = "remove",
    Body  = "Custom Gilet +1",
    Hands = "remove",
    Legs  = "Choral Cannions",
    Feet  = "Brd. Slippers +1",
};

sets.Engaged_Default_Priority = {
    Main  = {
        { Name = "Atoyac", Level = 75 },
        { Name = "Gully", Level = 72 },
        { Name = "Hornetneedle", Level = 48 },
        { Name = "Mrc.Cpt. Kukri", Level = 30 },
        { Name = "Mercenary's Knife", Level = 20 },
        { Name = "Beestinger", Level = 7 },
        "Wax Sword +1",
    },
    Sub   = {
        { Name = "Genbu's Shield", Level = 74 },
        { Name = "Elegant Shield", Level = 40 },
        "Kupo Shield",
    },
    Head  = {
        { Name = "Pursuer's Beret", Level = 75 },     -- H+5 DaggerSkill+5 DA+3
        { Name = "Wivre Mask", Level = 65 },          -- EVA+10 ACC+5 DEX+3 STR+2
        { Name = "Heroic Hairpin", Level = 30 },      -- PDT-2 H+2 DW+3
        { Name = "Emperor Hairpin", Level = 24 },
        { Name = "Cmp. Eye Circlet", Level = 9 },     -- EVA+5
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Suppanomimi", Level = 72 },         -- DW+5 Sword+5
        { Name = "Pigeon Earring", Level = 33 },      -- HP+20 MP+15 STR+1 ATK+2
    },
    Ear2 = {
        { Name = "Brutal Earring", Level = 75 },      -- DA+5 STP+1
        { Name = "Outlaw's Earring", Level = 50 },    -- MP+15 DEX+2 ATK+4 EVA+4
        { Name = "Tribal Earring", Level = 20 },      -- DEF+1 VIT+1
    },
    Neck  = {
        { Name = "Love Torque", Level = 73 },         -- DaggerSkill+7
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        { Name = "Pursuer's Doublet", Level = 75 },   -- ACC+12 ATK+12 DT-5 DA+?
        { Name = "Scorpion Harness", Level = 57 },    -- ACC+10 EVA+10
        { Name = "Brigandine +1", Level = 45 },       -- STR+3 DEX+3 AGI+3 VIT+3 HP+10 MP+10 ATK+4
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Leather Vest +1", Level = 7 },
        "Tidal Talisman",
    },
    Hands = {
        { Name = "Swift Gages", Level = 75 },         -- STP+2 H+4 DA+2 ATK+5
        { Name = "Dino Gloves", Level = 48 },
        { Name = "Garrison Gloves +1", Level = 20 },  -- VIT+2
        { Name = "Battle Gloves", Level = 14 },
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
        { Name = "Bard's Cape", Level = 70 },         -- ACC+7 EVA+7 STP+5 ATK+3
        { Name = "Amemet Mantle +1", Level = 61 },    --        STR+2  ATK+15
        { Name = "Exile's Cloak", Level = 50 },       --        STR+4  ATK+3
        { Name = "Tundra Mantle", Level = 39 },
        { Name = "Nomad's Mantle", Level = 24 },      -- EVA+3  AGI+1  DW+1
        { Name = "Traveler's Mantle", Level = 12 },   -- EVA+3
        { Name = "Rabbit Mantle", Level = 4 },
    },
    Waist = {
        { Name = "Oneiros Cest", Level = 75 },        -- ACC+9  STP+3        H+3
        { Name = "Virtuoso Belt", Level = 54 },       --               ACC+12 ATK+4
        { Name = "Griot Belt", Level = 28 },          -- HP+5 H+2
        { Name = "Heko Obi", Level = 8 },             -- AGI+3         ACC+3
    },
    Legs  = {
        { Name = "Pursuer's Pants", Level = 75 },     -- STP+5 H+5 DaggerSkill+8 Fencer
        { Name = "White Slacks", Level = 50 },        --       H+3       Regen +1
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2 H+2
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Pursuer's Gaiters", Level = 75 },   -- H+3
        { Name = "Dino Ledelsens", Level = 48 },      -- H+2
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

sets.Idle_Default_Priority = {
    Main  = {
        { Name = "Terra's Staff", Level = 51 },         -- PDT-20
        { Name = "Monster Signa", Level = 17 },
        { Name = "Beestinger", Level = 7 },
    },
    Sub   = {
            -- Wish: Lv75  Longbeard's Grip +0/1 [MDT-2/4 MEva+4/8 Refresh+0/1] {Leathercraft Lv.111}
        { Name = "Oneiros Grip", Level = 75 },        -- Regen +1
        { Name = "Neph. Grip", Level = 17 },
        "Kupo Shield",
    },
    Range = {
        { Name = "Gjallarhorn", Level = 75 },
        -- { Name = "Terpander", Level = 75 },
        { Name = "Rouser +1", Level = 50 },
        -- { Name = "Rouser", Level = 20 },
    },
    Head  = {
        { Name = "Chl. Roundlet +1", Level = 74 },    -- Regen+3 Refresh+1
        { Name = "remove", Level = 59 },              -- No head because of Vermillion Cloak
        { Name = "Emperor Hairpin", Level = 24 },     -- EVA+10 -- No Sallet, EVA > Regen for pulls
        { Name = "Garrison Sallet +1", Level = 20 },  -- Regen+1 under lv.50
        { Name = "Cmp. Eye Circlet", Level = 9 },     -- EVA+5
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Suppanomimi", Level = 72 },         -- DW+5 Sword+5
        { Name = "Pigeon Earring", Level = 33 },      -- HP+20 MP+15 STR+1 ATK+2
    },
    Ear2 = {
        { Name = "Brutal Earring", Level = 75 },      -- DA+5 STP+1
        { Name = "Outlaw's Earring", Level = 50 },    -- MP+15 DEX+2 ATK+4 EVA+4
        { Name = "Tribal Earring", Level = 20 },      -- DEF+1 VIT+1
    },
    Neck  = {
        { Name = "Pegasus Collar", Level = 20 },      -- MvtSpeed+12%
        { Name = "Justice Badge", Level = 7 },        -- MND+3
    },
    Body  = {
        -- { Name = "Pursuer's Doublet", Level = 75 }, -- TODO: Add to a new Oh-Shit set for DT-5
        { Name = "Dalmatica", Level = 73 },           -- Refresh+1 MDB+5 ResistPara+2
        { Name = "Vermillion Cloak", Level = 59 },    -- Refresh+1
        { Name = "Brigandine +1", Level = 45 },       -- STR+3 DEX+3 AGI+3 VIT+3 HP+10 MP+10 ATK+4
        { Name = "Garrison Tunica +1", Level = 20 },  -- Refresh+1 while below lv.50
        { Name = "Leather Vest +1", Level = 7 },
        "Tidal Talisman",
    },
    Hands = {
        { Name = "Pursuer's Cuffs", Level = 75 },     -- Regen+1
        { Name = "Dino Gloves", Level = 48 },
        { Name = "Garrison Gloves +1", Level = 20 },  -- VIT+2
        { Name = "Battle Gloves", Level = 14 },
        "Dream Mittens +1",
    },
    Ring1 = {
        { Name = "Defending Ring", Level = 70 },      -- DT-10
        { Name = "Toreador's Ring", Level = 57 },     -- ACC+7
        { Name = "Ecphoria Ring", Level = 49 },       -- ACC+4 STP+1
        { Name = "Balance Ring", Level = 14 },        -- DEX+2
        "San d'Orian Ring",
    },
    Ring2 = {
            -- Wish: Merman's Ring (Coral Ring +1) [MDT-4]
        { Name = "Coral Ring", Level = 70 },          -- MDT-3
        { Name = "Rajas Ring", Level = 30 },
        { Name = "Balance Ring", Level = 14 },        -- DEX+2
        "Provenance Ring",
    },
    Back  = {
            -- Wish: Lv.68 Umbra Cape [PDT-6]
        { Name = "Cheviot Cape", Level = 68 },        -- PDT-5 Dark+13
        { Name = "Jester's Cape +1", Level = 54 },    -- CHR+10
        { Name = "Tundra Mantle", Level = 39 },       -- CHR+2 MND+2
        { Name = "Nomad's Mantle", Level = 24 },      -- EVA+3  AGI+1  DW+1
        { Name = "Traveler's Mantle", Level = 12 },   -- EVA+3
        { Name = "Rabbit Mantle", Level = 4 },
    },
    Waist = {
        { Name = "Oneiros Cest", Level = 75 },        -- ACC+9  STP+3  H+3
        { Name = "Gleeman's Belt", Level = 60 },      -- CHR+6
        { Name = "Corsette +1", Level = 40 },         -- CHR+6
        { Name = "Friar's Rope", Level = 14 },        --       MND+1
    },
    Legs  = {
            -- Wish: Brd. Cannions +1 [(Aug) DT-4]
            -- Wish: Sha'ir Seraweels +1 [(Aug) PDT-4]
        { Name = "Byakko's Haidate", Level = 75 },    -- Thunder+50
        { Name = "White Slacks", Level = 50 },        --              Regen +1
        { Name = "Custom Slacks", Level = 31 },       -- MND+3 CHR+1
        { Name = "Garrison Hose +1", Level = 20 },
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Suzaku's Sune-Ate", Level = 75 },   -- MND+15 Fire+50
        { Name = "Dino Ledelsens", Level = 48 },      -- H+2
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

-- Goal: Max SIRD 102%; Max FastCast 80% ; Max Haste 25%
sets.Midcast_Default_Priority = {
    Main  = {
        { Name = "Chatoyant Staff", Level = 51 },
    },
    Sub   = {
            -- Wish: Lv.75 Reflexive Grip +1 [MACC+4]
            -- Wish: Lv.70 Omni Grip [MACC+3]
            -- Wish: Lv.70 Elemental Grips [EleMACC+2]
            -- Wish: Lv.29 Magic Strap [SIRD-5]
        { Name = "Neph. Grip", Level = 51 },
    },
    Head  = {
            -- Wish: Genbu's Kabuto [(Aug) SIRD-5]
        { Name = "Pursuer's Beret", Level = 75 },     --               H+5
        { Name = "Entrancing Ribbon", Level = 11 },   --         FC+1
    },
    Ear1  = {
        { Name = "Loquac. Earring", Level = 75 },     --         FC+2          MP+30 (Balance MPs)
    },
    Neck  = {
        { Name = "Justice Badge", Level = 7 },
    },
    Body  = {
        { Name = "Minstrel's Coat", Level = 63 },     --               H+2
    },
    Hands = {
            -- Wish: Brd. Cuffs +1 [(Aug) FC+3]
    },
    Ring1 = {
        { Name = "Astral Ring", Level = 10 },         --                        MP+25 (Balance MPs)
    },
    Ring2 = {
        { Name = "Tamas Ring", Level = 30 },          --                        MP+30 (Balance MPs)
        { Name = "Astral Ring", Level = 10 },         --                        MP+25 (Balance MPs)
    },
    Waist = {
        { Name = "Silver Obi", Level = 20 },          -- SIRD-8
    },
    Legs  = {
        { Name = "Pursuer's Pants", Level = 75 },     --               H+5
        { Name = "White Slacks", Level = 50 },        --               H+3
        { Name = "Garrison Hose +1", Level = 20 },    --               H+2
    },
    Feet  = {
            -- Wish: Sheikh Crackows [(Aug) SIRD-10]
        { Name = "Pursuer's Gaiters", Level = 75 },   --               H+3
        { Name = "Dino Ledelsens", Level = 48 },      --               H+2
    },
};

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
    Head  = {
            -- Wish: Sheikh Turban [(Aug) CurePot+5]
    },
    Neck  = {
        { Name = "Fylgja Torque +1", Level = 75 },    -- CurePot+3  Enm-2
    },
    Ring2 = {
        { Name = "Tamas Ring", Level = 30 },          -- MND+2~5 Enm-3
        "Windurstian Ring",
    },
    Back  = {
        { Name = "Dew Silk Cape +1", Level = 75 },    -- CurePot+3  Enm-3
        { Name = "Mist Silk Cape", Level = 10 },      -- CurePot+1
    },
    Waist = {
        { Name = "Penitent's Rope", Level = 60 },     -- MND+5 Enm-3
        { Name = "Silver Obi", Level = 20 },          -- SIRD-8
    },
    Legs  = {
            -- Wish: Brd. Cannions +1 [(Aug) CurePot+5]
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
        { Name = "Pursuer's Beret", Level = 75 },     --               H+5
        { Name = "Entrancing Ribbon", Level = 11 },   --         FC+1
    },
    Ear1  = {
        { Name = "Loquac. Earring", Level = 75 },     --         FC+2          MP+30 (Balance MPs)
    },
    Neck  = {
    },
    Body  = {
        { Name = "Minstrel's Coat", Level = 63 },     --               H+2
    },
    Hands = {
            -- Wish: Brd. Cuffs +1 [(Aug) FC+3]
    },
    Ring1 = {
        { Name = "Hibernal Ring", Level = 75 },       --          FC+2
    },
    Ring2 = {
        { Name = "Astral Ring", Level = 10 },         --                        MP+25 (Balance MPs)
    },
    Back  = {
    },
    Waist = {
        { Name = "Griot Belt", Level = 28 },          --               H+2
        { Name = "Silver Obi", Level = 20 },          -- SIRD-8
    },
    Legs  = {
        { Name = "Pursuer's Pants", Level = 75 },     --               H+5
        { Name = "White Slacks", Level = 50 },        --               H+3
        { Name = "Garrison Hose +1", Level = 20 },    --               H+2
    },
    Feet  = {
        { Name = "Pursuer's Gaiters", Level = 75 },   --               H+3
        { Name = "Dino Ledelsens", Level = 48 },      --               H+2
    },
};
sets.Midcast_Poisona_Priority = midcastFastCast;
sets.Midcast_Paralyna_Priority = midcastFastCast;
sets.Midcast_Blindna_Priority = midcastFastCast;
sets.Midcast_Silenana_Priority = midcastFastCast;
sets.Midcast_Erase_Priority = midcastFastCast;
sets.Midcast_Raise_Priority = midcastFastCast;

-- Goal: CHR & Skill ; SongRecast- & SongDuration+
sets.Midcast_Singing_Priority = {
    Main  = {
        { Name = "Chatoyant Staff", Level = 51 },
            -- Wish: Lv.40 Chanter's Staff [CHR+6 SingingSkill+4] /!\ Not available on CEXI, ENM not implemented.
        { Name = "Monster Signa", Level = 17 },
    },
    Sub   = {
            -- Wish: Lv.75 Reflexive Grip +1 [MACC+4]
            -- Wish: Lv.70 Omni Grip [MACC+3]
            -- Wish: Lv.70 Elemental Grips [EleMACC+2]
        { Name = "Neph. Grip", Level = 20 },
    },
    Range = {
        { Name = "Gjallarhorn", Level = 75 },         -- CHR+4  SingSkill+10  WindSkill+10  AllSongs+2
        { Name = "Rouser +1", Level = 50 },           -- CHR+5                WindSkill+3   AllSongs+1  Duration+15%
        -- { Name = "Rouser", Level = 20 },              -- CHR+3                WindSkill+3   AllSongs+1  Duration+5%
        { Name = "Cornette +1", Level = 4 },
    },
    Head  = {
        { Name = "Brd. Roundlet +1", Level = 72 },    -- CHR+6   SingSkill+5 WindSkill+7
        { Name = "Garrison Sallet +1", Level = 20 },  -- CHR+2
        { Name = "Entrancing Ribbon", Level = 11 },   -- CHR+2
    },
    Ear1  = {
        { Name = "Musical Earring", Level = 70 },     --                      WindSkill+5 StringSkill+5
    },
    Ear2 = {
        { Name = "Beastly Earring", Level = 72 },     -- CHR+2
            -- Wish: Lv.50 Spire Earring [SingSkil+3 WindSkill+3 StringSkill+3]
    },
    Neck  = {
        { Name = "Timeless Ocarina", Level = 70 },    -- CHR+5                WindSkill+10 SongDuration+10
        { Name = "Bird Whistle", Level = 15 },        -- CHR+3
    },
    Body  = {
            -- Wish: Brd. Jstcorps +1 [(Aug) SingSkill+7 SongDuration+5] (for buffs)
        { Name = "Chl. Jstcorps +1", Level = 74 },    -- CHR+10  SingSkill+5  WindSkill+6  StringSkill+6
        { Name = "Minstrel's Coat", Level = 63 },     -- CHR+4   SingSkill+3  WindSkill+3
        { Name = "Garrison Tunica +1", Level = 20 },  -- CHR+2
    },
    Hands = {
        { Name = "Chl. Cuffs +1", Level = 74 },       -- CHR+10  SingSkill+5  MACC+3
        { Name = "Dino Gloves", Level = 48 },         -- CHR+4
    },
    Ring1 = {
            -- Wish: Lv.51 Nereid Ring [WindSkill+3]
        { Name = "Trumpet Ring", Level = 51 },        -- WindSkill+2
    },
    Ring2 = {
        { Name = "Nereid Ring", Level = 51 },         -- WindSkill+3
    },
    Back  = {
        { Name = "Astute Cape", Level = 73 },         -- SingSkill+5
        { Name = "Jester's Cape +1", Level = 54 },    -- CHR+10
        { Name = "Tundra Mantle", Level = 39 },       -- CHR+2
    },
    Waist = {
            -- Wish: Lv.75 Marching Belt [WindSkill+3] {Dyna Tav 1.0 Boss}
        { Name = "Gleeman's Belt", Level = 50 },      -- CHR+6
        { Name = "Corsette +1", Level = 40 },         -- CHR+6
        { Name = "Griot Belt", Level = 28 },          -- CHR+1
        { Name = "Silver Obi", Level = 20 },          --                                 SIRD+8
    },
    Legs  = {
        { Name = "Marduk's Shalwar", Level = 75 },    -- CHR+10  WindSkill+5 MACC+4 SongDuration+6
                                                      -- Note: Choral Cannions +1 has an additional +3 WindSkill, but lacks the SongDuration 
        { Name = "Choral Cannions", Level = 56 },     --                      WindSkill+3
        { Name = "Custom Slacks", Level = 31 },       -- CHR+1
    },
    Feet  = {
            -- Wish: Valkyrie's Clogs [(Aug) SingingSkill+6]
            -- Wish: Oracle's Pigache [WindSkill+5]
        { Name = "Brd. Slippers +1", Level = 75 },    -- CHR+8  StringSkill+8+3 SongRecast-3
        { Name = "Dino Ledelsens", Level = 48 },      -- CHR+4
    },
};

local midcastSingingBuffDuration = {
    Feet  = {
        { Name = "Pursuer's Gaiters", Level = 75 },   -- SongDuration+10
    },
};
sets.Midcast_Ballad_Priority = midcastSingingBuffDuration;
sets.Midcast_Paeon_Priority = midcastSingingBuffDuration;

sets.Midcast_Lullaby_Priority = {
    Range = {
        { Name = "Terpander", Level = 75 },           -- Lullaby+3
        -- { Name = "Mary's Horn", Level = 14 },
    },
    Ring1 = {
            -- Wish: Lv.75 Carbuncle Ring +0/1 [CHR+6/8] {Goldsmithing Guild NM}
        { Name = "Light Ring", Level = 74 },          -- CHR+5
    },
    Ring2 = {
            -- Wish: Lv.75 Veela Ring [CHR+6 Enm-2] {Cirrate Christelle@Dynamis Valkurm}
        { Name = "Light Ring", Level = 74 },          -- CHR+5
    },
    Feet  = {
        { Name = "Brd. Slippers +1", Level = 75 },    -- CHR+8  StringSkill+8+3 SongRecast-3
    },
};


sets.Midcast_Elegy_Priority = { Sub = {{ Name = "Earth Grip", Level = 75 }} };
sets.Midcast_LightningThrenody_Priority = { Sub = {{ Name = "Earth Grip", Level = 75 }} };
sets.Midcast_EarthThrenody_Priority = { Sub = {{ Name = "Wind Grip", Level = 75 }} };

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

-- Goal: Max FastCast 80% ; Song Spellcasting
sets.Precast_Singing_Priority = {
    Head  = {
        { Name = "Brd. Roundlet +1", Level = 72 },    --       SongCast-5
        { Name = "Demon Helm", Level = 72 },          --       SongCast-3
        { Name = "Entrancing Ribbon", Level = 11 },   -- FC+1
    },
    Body  = {
            -- Wish: +1 [SongCast-13]
        { Name = "Sha'ir Manteel", Level = 72 },      --       SongCast-12
        { Name = "Minstrel's Coat", Level = 63 },     --       SongCast-5
    },
    Legs  = {
            -- Wish: Aug HQ SongCast-6
        { Name = "Zenith Slacks +1", Level = 73 },    --       SongCast-4
    },
    Feet  = {
        { Name = "Pursuer's Gaiters", Level = 75 },   --       SongCast-3
    },
};

sets.Resting_Default_Priority = {
    Main  = {
        { Name = "Chatoyant Staff", Level = 51 },     -- HMP+10
    },
    Sub   = {
        { Name = "remove", Level = 51 },              -- No shield because of staff
    },
        -- Ear1: Wish: Lv.75 Darkness/Pluto's Earring [HMP+2/3]
        -- Ear2: Wish: Lv.75 Darkness/Pluto's Earring [HMP+2/3]
        -- Neck: Wish: Lv.50 Beak Necklace +1 [HMP+2]
        -- Body: Wish: Lv.72 Mahatma Houppelande [HMP+6]
    Hands = {
            -- Wish: Lv.72 Oracle's Gloves [HMP+2]
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
        -- Ring1: Wish: Lv.75 Fenrir Ring +0/1 [HMP+3/5]
        -- Ring2: Wish: Lv.75 Fenrir Ring +0/1 [HMP+3/5]
        -- Back: Wish: Lv.68 Blue Cape [(Aug) HMP+2]
        -- Waist: Wish: Lv.40 Qiqirn Sash +1 [HMP+3]
        -- Legs: Wish: Lv.72 Oracle's Braconi [HMP+2]
    Feet  = {
            -- Wish: Lv.74 Choral Slippers +1 [HMP+2 (Aug) HMP+5]
            -- Wish: Lv.70 Numerist Pumps [HMP+3]
        { Name = "Garrison Boots +1", Level = 20 },   -- HMP+2
    }
};

-- Goal: ACC & DEX & AGI
sets.WS_Default_Priority = {
    Head  = {
        { Name = "Emperor Hairpin", Level = 24 },     -- DEX+3  AGI+3
    },
    Ear1 = {
        -- TODO
    },
    Ear2 = {
        -- TODO
    },
    Neck  = {
        { Name = "Love Torque", Level = 73 },         -- DEX+5 DaggerSkill+7
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- DEX+3                           STR+3
        { Name = "Pile Chain", Level = 3 },           --                 ACC+1
    },
    Body = {
        { Name = "Kirin's Osode", Level = 75 },       -- AllStats+10    ATK+3   DA+3  CritDmg+3
        { Name = "Scorpion Harness", Level = 57 },    --                 ACC+10
        { Name = "Brigandine +1", Level = 45 },       -- STR+3 DEX+3 AGI+3 VIT+3 HP+10 MP+10 ATK+4
        { Name = "Garrison Tunica +1", Level = 20 },  -- DEX+2
    },
    Hands = {
        { Name = "Swift Gages", Level = 75 },         -- AGI+8  DEX+5             ATK+5   DA+2
        { Name = "Dino Gloves", Level = 48 },         -- DEX+4
        { Name = "Battle Gloves", Level = 48 },       --                 ACC+3
    },
    Ring1 = {
        { Name = "Zilant Ring", Level = 75 },         -- DEX+6           ACC+3
        { Name = "Toreador's Ring", Level = 57 },     --                 ACC+7
        { Name = "Ecphoria Ring", Level = 49 },       --                 ACC+4
        { Name = "Balance Ring", Level = 14 },        -- DEX+2
        "San d'Orian Ring",
    },
    Ring2 = {
        { Name = "Rajas Ring", Level = 30 },          -- DEX+2~5                        STR+2~5
        { Name = "Balance Ring", Level = 14 },        -- DEX+2
    },
    Back  = {
        { Name = "Cuchulain's Mantle", Level = 74 },   -- DEX+4           ACC+4
        { Name = "Amemet Mantle +1", Level = 61 },    --        ATK+15 STR+2
        { Name = "Exile's Cloak", Level = 50 },        --                         ATK+3  STR+4
        { Name = "Lizard Mantle +1", Level = 17 },     -- STR+1
    },
    Waist = {
        { Name = "Fatality Belt", Level = 75 },        -- DEX+4           ACC+4
        { Name = "Virtuoso Belt", Level = 54 },        --                 ACC+12  ATK+4
        { Name = "Lizard Belt +1", Level = 17 },       -- DEX+2
    },
    Legs  = {
        { Name = "Byakko's Haidate", Level = 75 },    -- DEX+15
    },
    Feet  = {
        { Name = "Leaping Boots", Level = 7 },        -- DEX+3 AGI+3
    },
};

-- Exenterator: fTP & ACC & AGI & DA & TA & CRIT
sets.WS_Exenterator = {
    -- Head  = "Maat's Cap",
    Ear1  = "Luminous Earring",                       --        ACC+3   ATK+4
    Ear2  = "Brutal Earring",                         --                        DA+1
    Neck  = "Soil Gorget",                            -- fTP+0.1
    Body  = "Kirin's Osode",                          -- AllStats+10    ATK+3   DA+3  CritDmg+3
    Hands = "Swift Gages",                            -- AGI+8          ATK+5   DA+2
    Ring1 = "Kusha's Ring",                           --        ACC+6   ATK+3 (set with Lava's Ring)
    Ring2 = "Lava's Ring",                            --        ACC+6   ATK+3 (set with Kusha's Ring)
    Back  = "Bard's Cape",                            --        ACC+7
    Waist = "Virtuoso Belt",                          --        ACC+12  ATK+4
    Legs  = "Dino Trousers",                          -- AGI+4  ACC+5
    Feet  = "Dino Ledelsens",                         -- AGI+4
};

-- Mordant Rime: CHR & ACC & DA & TA & CRIT
sets.WS_MordantRime = {
    Range = "Rouser +1",                              -- CHR+5
    Head  = "Brd. Roundlet +1",                       -- CHR+6
    Ear1  = "Luminous Earring",                       --             ACC+3   ATK+4
    Ear2  = "Beastly Earring",                        -- CHR+2
    Neck  = "Timeless Ocarina",                       -- CHR+5               ATK+10  STR+5
    Body  = "Kirin's Osode",                          -- AllStats+10    ATK+3   DA+3  CritDmg+3
    Hands = "Chl. Cuffs +1",                          -- CHR+10
    Ring1 = "Light Ring",                             -- CHR+5
    Ring2 = "Light Ring",                             -- CHR+5
    Back  = "Bard's Cape",                            -- CHR+7       ACC+7
    Waist = "Gleeman's Belt",                         -- CHR+6       ACC+8
    Legs  = "Marduk's Shalwar",                       -- CHR+10
    Feet  = "Brd. Slippers +1",                       -- CHR+8
};

--> Requiescat: 4 hits, 73% MND, fTP replicating (Soil/Shadow Gorget)
sets.WS_Requiescat = {
    Head  = "Choral Roundlet +1",                     -- MND+6
    Neck  = "Soil Gorget",                            -- fTP+0.1
    Body  = "Kirin's Osode",                          -- AllStats+10    ATK+3   DA+3  CritDmg+3
    Ear1  = "Emberpearl Earring",                     -- MND+2   STR+2         WSACC+2       ATK+3
    Ring1 = "Karka Ring",                             -- MND+6
    Ring2 = "Tamas Ring",                             -- MND+5
    Back  = "Dew Silk Cape +1",                       -- MND+6
    Waist = "Salire Belt",                            -- MND+5
    Feet  = "Suzaku's Sune-Ate",                      -- MND+15
};

profile.Sets = sets;
return profile;