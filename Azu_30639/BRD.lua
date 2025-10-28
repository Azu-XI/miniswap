local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Sets.LockStyle = {
    Main  = "Baqil Staff",
    Head  = "remove",
    Body  = "Custom Gilet +1",
    Hands = "remove",
    Legs  = "Choral Cannions",
    Feet  = "Bard's Slippers",
};

profile.Sets.Engaged_Priority = {
    Main  = {
        { Name = "Atoyac", Level = 75 },
        { Name = "Gully", Level = 72 },
        { Name = "Hornetneedle", Level = 48 },
        { Name = "Mrc.Cpt. Kukri", Level = 30 },
        { Name = "Mercenary's Knife", Level = 20 },
        { Name = "Beestinger", Level = 7 },
        { Name = "Bronze Dagger", Level = 1 },
    },
    Sub   = {
        { Name = "Genbu's Shield", Level = 74 },
        { Name = "Elegant Shield", Level = 40 },
        { Name = "Kupo Shield", Level = 1 },
    },
    Head  = {
        { Name = "Pursuer's Beret", Level = 75 },
        { Name = "Wivre Mask", Level = 65 },          -- ACC+5 DEX+3
        { Name = "Storm Zucchetto", Level = 50 },     -- ACC+4
        { Name = "Raptor Helm", Level = 48 },
        { Name = "Emperor Hairpin", Level = 24 },
        { Name = "Cmp. Eye Circlet", Level = 9 },
        "Dream Hat +1",
    },
    Ear1 = {
        { Name = "Luminous Earring", Level = 75 },
        { Name = "Insomnia Earring", Level = 50 },
    },
    Ear2 = {
        { Name = "Brutal Earring", Level = 75 },      -- DA+5 STP+1
        { Name = "Outlaw's Earring", Level = 50 },
        { Name = "Dodge Earring", Level = 29 },
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        { Name = "Pursuer's Doublet", Level = 75 },
        { Name = "Scorpion Harness", Level = 57 },    -- ACC+10 EVA+10
        { Name = "Raptor Jerkin", Level = 48 },
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Leather Vest +1", Level = 7 },
        "Kingdom Aketon", 
    },
    Hands = {
        { Name = "Pursuer's Cuffs", Level = 75 },
        { Name = "Raptor Gloves", Level = 48 },
        { Name = "Garrison Gloves +1", Level = 20 },  -- VIT+2
        { Name = "Battle Gloves", Level = 14 },
        { Name = "Brass Mittens", Level = 11 },
        "Dream Mittens +1",
    },
    Ring1 = {
        { Name = "Kusha's Ring", Level = 55 },
        { Name = "Archer's Ring", Level = 30 },
        "San d'Orian Ring",
    },
    Ring2 = {
        { Name = "Lava's Ring", Level = 55 },
        "Provenance Ring",
    },
    Back  = {
        { Name = "Bard's Cape", Level = 70 },         -- ACC+7 EVA+7
        { Name = "Exile's Cloak", Level = 50 },
        { Name = "Tundra Mantle", Level = 39 },
        { Name = "Nomad's Mantle", Level = 24 },      -- EVA+3  AGI+1  DW+1
        { Name = "Traveler's Mantle", Level = 12 },   -- EVA+3
        { Name = "Rabbit Mantle", Level = 4 },
    },
    Waist = {
            -- Wish: Bard's Cape [ACC+7 EVA+7 (Aug) STP+5]
        { Name = "Virtuoso Belt", Level = 54 },       --               ACC+12 ATK+4
        { Name = "Heko Obi", Level = 8 },             -- AGI+3         ACC+3
    },
    Legs  = {
        { Name = "Pursuer's Pants", Level = 75 },
        { Name = "White Slacks", Level = 50 },        --       Haste+3       Regen +1
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2 Haste+2
        { Name = "Phl. Trousers", Level = 15 },
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Pursuer's Gaiters", Level = 75 },
        { Name = "Raptor Ledelsens", Level = 48 },    -- Haste+2
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

profile.Sets.Idle_Priority = {
    Main  = {
        { Name = "Earth Staff", Level = 51 },         -- PDT-20
        { Name = "Monster Signa", Level = 17 },
        { Name = "Beestinger", Level = 7 },
    },
    Sub   = {
            -- Wish: Lv75  Longbeard's Grip +0/1 [MDT-2/4 MEva+4/8 Refresh+0/1]
        { Name = "Neph. Grip", Level = 17 },
        { Name = "Kupo Shield", Level = 1 },
    },
    Range = {
        { Name = "Terpander", Level = 75 },
        { Name = "Rouser", Level = 20 },
    },
    Head  = {
        { Name = "Chl. Roundlet +1", Level = 74 },    -- Regen+3 Refresh+1
        { Name = "remove", Level = 59 },              -- No head because of Vermillion Cloak
        { Name = "Emperor Hairpin", Level = 24 },     -- EVA+10 -- No Sallet, EVA > Regen for pulls
        { Name = "Garrison Sallet +1", Level = 20 },  -- Regen+1 while below lv.50
        { Name = "Cmp. Eye Circlet", Level = 9 },
        "Dream Hat +1",
    },
    Ear1 = {
        { Name = "Beastly Earring", Level = 72 },     -- EVA+5
        { Name = "Insomnia Earring", Level = 50 },    -- HP/MP+15  ResistSleep
    },
    Ear2 = {
        { Name = "Musical Earring", Level = 70 },     -- EVA+5
        { Name = "Dodge Earring", Level = 29 },       -- EVA+3
    },
    Neck  = {
        { Name = "Pegasus Collar", Level = 20 },      -- MvtSpeed+12%
        { Name = "Justice Badge", Level = 7 },        -- MND+3
    },
    Body  = {
        { Name = "Pursuer's Doublet", Level = 75 },
        { Name = "Vermillion Cloak", Level = 59 },    -- Refresh+1
        { Name = "Raptor Jerkin", Level = 50 },
        { Name = "Garrison Tunica +1", Level = 20 },  -- Refresh+1 while below lv.50
        { Name = "Leather Vest +1", Level = 7 },
        "Kingdom Aketon", 
    },
    Hands = {
        { Name = "Pursuer's Cuffs", Level = 75 },
        { Name = "Raptor Gloves", Level = 48 },
        { Name = "Garrison Gloves +1", Level = 20 },  -- VIT+2
        { Name = "Battle Gloves", Level = 14 },
        { Name = "Brass Mittens", Level = 11 },
        "Dream Mittens +1",
    },
    Ring1 = {
            -- Wish: Merman's Ring (Coral Ring +1) [MDT-4]
        { Name = "Coral Ring", Level = 70 },          -- MDT-3
        { Name = "Kusha's Ring", Level = 55 },
        { Name = "Archer's Ring", Level = 30 },
        "San d'Orian Ring",
    },
    Ring2 = {
            -- Wish: Merman's Ring (Coral Ring +1) [MDT-4]
        { Name = "Coral Ring", Level = 70 },          -- MDT-3
        { Name = "Lava's Ring", Level = 55 },
        "Provenance Ring",
    },
    Back  = {
            -- Wish: Lv.68 Umbra Cape [PDT-6]
        { Name = "Jester's Cape +1", Level = 54 },       -- CHR+7
        { Name = "Tundra Mantle", Level = 39 },       -- CHR+2 MND+2
        { Name = "Nomad's Mantle", Level = 24 },      -- EVA+3  AGI+1  DW+1
        { Name = "Traveler's Mantle", Level = 12 },   -- EVA+3
        { Name = "Rabbit Mantle", Level = 4 },
    },
    Waist = {
        { Name = "Gleeman's Belt", Level = 60 },      -- CHR+6
        { Name = "Corsette +1", Level = 40 },         -- CHR+6
        { Name = "Friar's Rope", Level = 14 },        --       MND+1
    },
    Legs  = {
            -- Wish: Brd. Cannions +1 [(Aug) DT-4]
            -- Wish: Sha'ir Seraweels +1 [(Aug) PDT-4]
        { Name = "Pursuer's Pants", Level = 75 },
        { Name = "White Slacks", Level = 50 },        --              Regen +1
        { Name = "Custom Slacks", Level = 31 },       -- MND+3 CHR+1
        { Name = "Garrison Hose +1", Level = 20 },
        { Name = "Phl. Trousers", Level = 15 },
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Pursuer's Gaiters", Level = 75 },
        { Name = "Raptor Ledelsens", Level = 48 },    -- Haste+2
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

profile.Sets.Town_Priority = {
    Main  = {
        { Name = "Joyeuse", Level = 70 },
        { Name = "Hornetneedle", Level = 48 },
        { Name = "Beestinger", Level = 7 },
    },
    Sub   = {
        { Name = "Genbu's Shield", Level = 74 },
        { Name = "Elegant Shield", Level = 40 },
        { Name = "Kupo Shield", Level = 1 },
    },
    Range = {
        { Name = "Terpander", Level = 75 },
        { Name = "Rouser", Level = 20 },
    },
}

-- Goal: Max SIRD 102%; Max FastCast 80% ; Max Haste 25%
profile.Sets.Midcast_Default_Priority = {
    Main  = {
        { Name = "Iridal Staff", Level = 51 },
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
        { Name = "Pursuer's Beret", Level = 75 },     --               Haste+5
        { Name = "Entrancing Ribbon", Level = 11 },   --         FC+1
    },
    Ear1  = {
        { Name = "Loquac. Earring", Level = 75 },     --         FC+2          MP+30 (Balance MPs)
    },
    Neck  = {
        { Name = "Justice Badge", Level = 7 },
    },
    Body  = {
        { Name = "Minstrel's Coat", Level = 63 },     --               Haste+2
    },
    Hands = {
            -- Wish: Brd. Cuffs +1 [(Aug) FC+3]
    },
    Ring1 = {
        { Name = "Astral Ring", Level = 10 },         --                        MP+25 (Balance MPs)
    },
    Ring2 = {
        { Name = "Astral Ring", Level = 10 },         --                        MP+25 (Balance MPs)
    },
    Waist = {
        { Name = "Silver Obi", Level = 20 },          -- SIRD-8
    },
    Legs  = {
        { Name = "Pursuer's Pants", Level = 75 },     --               Haste+5
        { Name = "White Slacks", Level = 50 },        --               Haste+3
        { Name = "Garrison Hose +1", Level = 20 },    --               Haste+2
    },
    Feet  = {
            -- Wish: Sheikh Crackows [(Aug) SIRD-10]
        { Name = "Pursuer's Gaiters", Level = 75 },   --               Haste+3
        { Name = "Raptor Ledelsens", Level = 48 },    --               Haste+2
    },
};

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
    Head  = {
            -- Wish: Sheikh Turban [(Aug) CurePot+5]
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
    Legs  = {
            -- Wish: Brd. Cannions +1 [(Aug) CurePot+5]
    },
    Feet  = {
            -- Wish: Zenith Pumps+0/1 [(Aug) CurePot+5/6]
            -- Wish: Medium's Sabots [CurePot+4] {DomainInvasion}
    };
}

-- Goal: Max FastCast 80% ; Max Haste 25% ; Max SIRD 102%
-- Erase & -na spells don't care about skill, so prioritize recast (and SIRD)
local midcastFastCast = {
    Range = {
        { Name = "Rousser", Level = 20 },             --               Haste+1
    },
    Head  = {
        { Name = "Pursuer's Beret", Level = 75 },     --               Haste+5
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
        { Name = "Griot Belt", Level = 28 },          --               Haste+2
        { Name = "Silver Obi", Level = 20 },          -- SIRD-8
    },
    Legs  = {
        { Name = "Pursuer's Pants", Level = 75 },     --               Haste+5
        { Name = "White Slacks", Level = 50 },        --               Haste+3
        { Name = "Garrison Hose +1", Level = 20 },    --               Haste+2
    },
    Feet  = {
        { Name = "Pursuer's Gaiters", Level = 75 },   --               Haste+3
        { Name = "Raptor Ledelsens", Level = 48 },    --               Haste+2
    },
};
profile.Sets.Midcast_Poisona_Priority = midcastFastCast
profile.Sets.Midcast_Paralyna_Priority = midcastFastCast
profile.Sets.Midcast_Blindna_Priority = midcastFastCast
profile.Sets.Midcast_Silenana_Priority = midcastFastCast
profile.Sets.Midcast_Erase_Priority = midcastFastCast
profile.Sets.Midcast_Raise_Priority = midcastFastCast

-- Goal: CHR & Skill ; SongRecast- & SongDuration+
profile.Sets.Midcast_Singing_Priority = {
    Main  = {
        { Name = "Iridal Staff", Level = 51 },
        { Name = "Monster Signa", Level = 17 },
    },
    Sub   = {
            -- Wish: Lv.75 Reflexive Grip +1 [MACC+4]
            -- Wish: Lv.70 Omni Grip [MACC+3]
            -- Wish: Lv.70 Elemental Grips [EleMACC+2]
        { Name = "Neph. Grip", Level = 20 },
    },
    Range = {
        { Name = "Rouser +1", Level = 50 },           -- CHR+5 AllSongs+1   WindSkill+3  Duration+15%
        -- { Name = "Rouser", Level = 20 },              -- CHR+3 AllSongs+1   WindSkill+3  Duration+5%
        { Name = "Maple Harp +1", Level = 1 },
    },
    Head  = {
            -- Wish: Bard's Roundlet +1 [CHR+6 SingSkill+5 (Aug) WindSkill+7]
        { Name = "Bard's Roundlet", Level = 72 },     -- CHR+5  SingSkill+5
        { Name = "Raptor Helm", Level = 48 },         -- CHR+4
        { Name = "Shade Tiara", Level = 25 },         -- CHR+2
        { Name = "Entrancing Ribbon", Level = 11 },   -- CHR+2
    },
    Ear1  = {
        -- { Name = "Loquac. Earring", Level = 75 },     --         FC+2 MP+30
        { Name = "Beastly Earring", Level = 72 },     -- CHR+2
    },
    Ear2 = {
        { Name = "Musical Earring", Level = 70 },     --                    WindSkill+5 StringSkill+5
    },
    Neck  = {
        { Name = "Timeless Ocarina", Level = 70 },    -- CHR+5 WindSkill+10 SongDuration+10
        { Name = "Bird Whistle", Level = 15 },        -- CHR+3
    },
    Body  = {
            -- Wish: Brd. Jstcorps +1 [(Aug) SingSkill+7 SongDuration+5] (for buffs)
        { Name = "Chl. Jstcorps +1", Level = 74 },    -- CHR+10 SingSkill+5  WindSkill+6  StringSkill+6
        { Name = "Minstrel's Coat", Level = 63 },     -- CHR+4  SingSkill+3  WindSkill+3
        { Name = "Raptor Jerkin", Level = 48 },       -- CHR+4
    },
    Hands = {
            -- Wish: Sheikh Gages [SongRecast-4] // Only if potency it not an issue
            -- Wish: Choral Cuffs +1 [CHR+4  SingSkill+5 (Aug) CHR+3 MACC+3]
        { Name = "Choral Cuffs", Level = 60 },        -- CHR+4  SingSkill+5
        { Name = "Raptor Gloves", Level = 48 },       -- CHR+4
    },
    Back  = {
        { Name = "Jester's Cape +1", Level = 54 },    -- CHR+7
        { Name = "Tundra Mantle", Level = 39 },       -- CHR+2
    },
    Waist = {
        { Name = "Gleeman's Belt", Level = 50 },      -- CHR+6
        { Name = "Corsette +1", Level = 40 },         -- CHR+6
        { Name = "Griot Belt", Level = 28 },          -- CHR+1
        { Name = "Silver Obi", Level = 20 },          --                                 SIRD+8
    },
    Legs  = {
            -- Wish: Marduk's Shalway [CHR+10 WindSkill+5 (Aug) MACC+3~4]
            -- Wish: Zenith Slacks +0/1 [(Aug) SongRecast-5/6] // Only if potency it not an issue
            -- Wish: Choral Cannions +1 [WindSkill+8 (Aug) SongRecast-3]
            -- Wish: Brd. Cannions +1 [CHR+8 (Aug) MACC+6]
            -- Wish: Sha'ir Seraweels +0/1 [CHR+8/9]
        { Name = "Errant Slops", Level = 72 },        -- CHR+7
        { Name = "Choral Cannions", Level = 56 },     --                    WindSkill+3
        { Name = "Custom Slacks", Level = 31 },       -- CHR+1
    },
    Feet  = {
            -- Wish: Brd. Slippers +1 [StringSkill+3 (Aug) CHR+8 StringSkill+8 SongRecast-3] // Only if potency it not an issue
        { Name = "Pursuer's Gaiters", Level = 75 },   --                                 Duration+10%
        { Name = "Raptor Ledelsens", Level = 48 },    -- CHR+4
    },
};

profile.Sets.Midcast_Ballad_Priority = {
    Range = {
        { Name = "Terpander", Level = 75 },           -- Ballad+2
    },
};
profile.Sets.Midcast_Finale_Priority = {
    Range = {
        { Name = "Military Harp", Level = 33 },       -- Finale+2
    },
};
profile.Sets.Midcast_Lullaby_Priority = {
    Range = {
        { Name = "Terpander", Level = 75 },           -- Lullaby+3
        -- { Name = "Mary's Horn", Level = 14 },
    },
};
profile.Sets.Midcast_March_Priority = {
    Range = {
        { Name = "Battle Horn +1", Level = 25 },      -- March+2
    },
};

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
}

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

-- Goal: Max FastCast 80% ; Song Spellcasting
profile.Sets.Precast_Singing_Priority = {
    Head  = {
            -- Wish: Brd. Roundlet +1 [(Aug) SongCast-5]
        { Name = "Demon Helm", Level = 72 },          --       SongCast-3
        { Name = "Entrancing Ribbon", Level = 11 },   -- FC+1
    },
    Body  = {
            -- Wish: Yigit Gomlek [SongCast-10]
            --    or Sha'ir Manteel +0/1 [SongCast-12/13]
        { Name = "Minstrel's Coat", Level = 63 },     --       SongCast-5
    },
    Legs  = {
            -- Wish: Zenith Slacks +1 [(Aug) SongCast-1~6]
    },
    Feet  = {
        { Name = "Pursuer's Gaiters", Level = 75 },   --       SongCast-3
    },
};

profile.Sets.Resting_Priority = {
    Main  = {
        { Name = "Iridal Staff", Level = 51 },        -- HMP+10
    },
    Sub   = {
        { Name = "remove", Level = 51 },              -- No shield because of staff
    },
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
    Feet  = {
        { Name = "Garrison Boots +1", Level = 20 },   -- HMP+2
    }
};

profile.Sets.WS_Default_Priority = {
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        { Name = "Bard's Jstcorps", Level = 74 },
    },
    Hands = {
        { Name = "Guerilla Gloves", Level = 13 },
    },
    Ring1 = {
        "San d'Orian Ring",
    },
    Back  = {
        { Name = "Earth Mantle", Level = 40 },
        { Name = "Lizard Mantle", Level = 17 },
    },
    Waist = {
            -- Wish: Stormlord Shawl +0/1 [STR+3/4 MND+3/4 ATK+10/15 DA+0/1]
    }
};

-- Goal: fTP & ACC & AGI & DA & TA & CRIT
profile.Sets.WS_Exenterator = {
    Head  = "Raptor Helm",                            -- AGI+4          ATK+4
    Ear2  = "Luminous Earring",                       --        ACC+3   ATK+4
    Ear2  = "Brutal Earring",                         --                        DA+1
    Neck  = "Peacock Charm",                          --        ACC+10
    Body  = "Bard's Jstcorps",                        -- AGI+8          ATK+18
    Hands = "Black Mitts",                            -- AGI+5
    Ring1 = "Kusha's Ring",                           --        ACC+6   ATK+3 (set with Lava's Ring)
    Ring2 = "Lava's Ring",                            --        ACC+6   ATK+3 (set with Kusha's Ring)
    Back  = "Bard's Cape",                            --        ACC+7
    Waist = "Virtuoso Belt",                          --        ACC+12  ATK+4
    Legs  = "Raptor Trousers",                        -- AGI+4  ACC+5
    Feet  = "Raptor Ledelsens",                       -- AGI+4
};

profile.Sets.WS_MordantRime = {};

return profile;