local profile = gFunc.LoadFile('common/miniswap/miniswap.lua');

profile.Sets.Engaged_Priority = {
    Main  = {
        { Name = "Radiance", Level = 20 },
        { Name = "Ash Pole", Level = 5 },
        "Ash Staff",
    },
    Sub  = {
        { Name = "remove", Level = 5 },
    },
    Neck  = {
        { Name = "Pile Chain", Level = 3 },
    },
    Hands = {
        { Name = "Battle Gloves", Level = 14 },
    },
};

profile.Sets.Idle_Priority = {
    Main  = {
        { Name = "Radiance", Level = 20 },
        { Name = "Hermit's Wand", Level = 13 },
        { Name = "Pilgrim's Wand", Level = 10 },
    },
    Sub   = {
        { Name = "Neph. Grip", Level = 20 },
        { Name = "Pelte", Level = 8 },
    },
    Ammo = {
        { Name = "Talon Tathlum", Level = 50 },
        { Name = "Morion Tathlum", Level = 25 },
        { Name = "Happy Egg", Level = 1 },
    },
    Ear1 = {
        { Name = "Outlaw's Earring", Level = 50 },
        { Name = "remove", Level = 1 },
    },
    Ear2 = {
        { Name = "Insomnia Earring", Level = 50 },
        { Name = "Dodge Earring", Level = 29 },
        { Name = "remove", Level = 1 },
    },
    Head  = {
            -- Wish: Lv.74 Evoker's Horn +1 [(Aug) Refresh+1]
        { Name = "remove", Level = 59 },              -- No head because of Vermillion Cloak
        { Name = "Entrancing Ribbon", Level = 11 },
        { Name = "Traveler's Hat", Level = 6 },
        "Dream Hat +1",
    },
    Neck  = {
        { Name = "Radiant Lantern", Level = 60 },
        { Name = "Justice Badge", Level = 7 },
    },
    Body  = {
            -- Wish: Lv.75 Chironic Doublet [Refresh+1 DT-5 PetDT-5]
            -- Wish: Lv.71 YinYang Robe [Refresh+1 (Aug) MDT-3] 
        { Name = "Vermillion Cloak", Level = 59 },       -- Refresh+1
        { Name = "Garrison Tunica +1", Level = 20 },     -- Refresh+1 while below lv.50
        { Name = "Druid's Robe", Level = 8 },
        "Kingdom Aketon", 
    },
    Hands = {
        { Name = "Carbuncle Mitts", Level = 20 },        -- MP+19 Enm-1
        { Name = "Zealot's Mitts", Level = 11 },         -- MP+5 MND+3
        { Name = "Mitts +1", Level = 8 },
        "Dream Mittens +1",
    },
    Ring1 = {
        { Name = "Astral Ring", Level = 10 },
        "Windurstian Ring",
    },
    Ring2 = {
        { Name = "Astral Ring", Level = 10 },
        "Provenance Ring",
    },
    Back  = {
        { Name = "Tundra Mantle", Level = 39 },
        { Name = "Mist Silk Cape", Level = 10 },
    },
    Waist = {
        { Name = "Silver Obi", Level = 20 },
        { Name = "Friar's Rope", Level = 14 },
    },
    Legs  = {
        { Name = "White Slacks", Level = 50 },            -- Haste+3 Regen +1
        { Name = "Custom Slacks", Level = 31 },           -- MP+32
        { Name = "Garrison Hose +1", Level = 20 },        -- Haste+2
        { Name = "Slacks +1", Level = 8 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Custom M Boots", Level = 29 },          -- MP+12       Eva+5
        { Name = "Garrison Boots +1", Level = 20 },       -- 
        { Name = "Power Sandals", Level = 18 },           -- VIT+3
        { Name = "Solea +1", Level = 8 },
        "Dream Boots +1",
    },
};

-- Goal: Perpetuation Cost ; Avatar ATK / ACC / PDT / ...
profile.Sets.Idle_Pet_Default_Priority = {
    Main  = {
            -- Wish: Lv. 51 Chatoyant Staff [PerpCost-3]
        { Name = "Iridal Staff", Level = 51 },        -- PerpCost-2
        { Name = "Radiance", Level = 20 },            --                       PetATK+10  Refresh+1
    },
    Ammo  = {
        -- { Name = "Soothing Sachet", Level = 70 },     -- PetACC+5 PetAtk+5 PetDT-3 -- TODO: Augments
    },
    Ear1 = {
        -- { Name = "Wilderness Earring", Level = 45 },  -- PetACC+1  -- STORED
    },
    Head  = {
            -- Wish: Lv.74 Evoker's Horn +1 [(Aug) PetPDT-4 Refresh+1]
            -- TODO: Sumonner's Horn +0/1 depending on Weather
        { Name = "remove", Level = 59 },              -- No head because of Vermillion Cloak
        { Name = "Entrancing Ribbon", Level = 11 },   -- PetACC+2
    },
    Body  = {
            -- TODO: Summoner's Doublet +0/1 depending on Day
            -- Wish: Lv.75 Chironic Doublet [PetDT-5 Refresh+1 DT-5]
            -- Wish: Lv.50 Penance Robe [PerpCost-2]
            -- Wish: Lv.50 Austere Robe [PerpCost-1]
    },
    Hands = {
            -- Wish: Evoker's Bracers+1 [(Aug) PetHaste+5 PetDT-5]
        { Name = "Black Mitts", Level = 50 },         -- PetAtk+6
        { Name = "Carbuncle Mitts", Level = 20 },     -- CarbyPerpCost-50% PetDEF+10
    },
    Ring2 = {
            -- Wish: Evoker's Ring [PerpCost-1]
    },
    Waist = {
        { Name = "Mujin Obi", Level = 75 },           -- PetATK+?
        { Name = "Silver Obi", Level = 20 },          -- PetATK+1
    },
    Legs  = {
            -- Wish: Lv.74 Evoker's Spats +1 [PetACC+10 (Aug) PetDA+3 PetATK+3]
        { Name = "Evoker's Spats", Level = 52 },      -- PetACC+10
    },
    Feet  = {
            -- Wish: Lv.75 Marduk's Crackows [(Aug) PetDT-4]
    },
};
profile.Sets.Engaged_Pet_Default_Priority = profile.Sets.Idle_Pet_Default_Priority;

-- Goal: Carbuncle Perpetuation Cost ; Carbuncle ATK / ACC / PDT / ...
profile.Sets.Idle_Pet_Carbuncle_Priority = {
    Hands = {
        { Name = "Carbuncle Mitts", Level = 20 },     -- CarbyPerpCost-50% PetDEF+10
    },
};
profile.Sets.Engaged_Pet_Garuda_Priority = profile.Sets.Idle_Pet_Garuda_Priority;

-- Goal: Garuda Perpetuation Cost ; Garuda ATK / ACC / PDT / ...
profile.Sets.Idle_Pet_Garuda_Priority = {
    Head  = {
        -- Wish: Lv.73 Karura Hachigane [GarudaPerfCost-2 GarudaATK+10 GarudaDEF+10]
    },
};
profile.Sets.Engaged_Pet_Garuda_Priority = profile.Sets.Idle_Pet_Garuda_Priority;

-- Goal: Blood Pact Ability Delay (Max 15 per tier) ; Blood Boon
local bloodPact = {
    Ammo  = {
        { Name = "Soothing Sachet", Level = 70 },     --       BPII-2
    },
    Head  = {
        -- Wish: Lv.75 Sumonner's Horn [BP-3]
        { Name = "Summoner's Horn", Level = 74 },     -- BP-3
        -- Wish: Lv.50 Penance Hat [BP-3]
        -- Wish: Lv.50 Austere Hat [BP-2]
    },
    Body  = {
        -- Wish: Lv.75 Smn. Doublet +1 [BP-4]
        -- Wish: Lv.74 Evk. Doublet +1 [BP-4]
        { Name = "Summoner's Dblt.", Level = 74 },    -- BP-3
        -- Wish: Lv.71 YinYang Robe [BP-5]
        -- Wish: Lv.50 Penance Robe [BP-4]
        -- Wish: Lv.50 Austere Robe [BP-3]
    },
    Hands = {
        { Name = "Smn. Bracers +1", Level = 75 },     -- BP-2
        -- Wish: Lv.50 Penance Cuffs [BP-2]
        -- Wish: Lv.50 Austere Cuffs [BP-1]
    },
    Ring1 = {
        -- Wish: Lv.75 Eidolon Ring [BPII-5]
    },
    Back  = {
        -- Wish: Lv.70 Summoner's Cape [(Aug) BP-2]
    },
    Legs  = {
        -- Wish: Chironic Hose [BP-2 BloodBoonIII]
        -- Wish: Smn. Spats +1 [(Aug) BloodBoon+8]
        { Name = "Summoner's Spats", Level = 71 },    -- BP-2
    },
    Feet  = {
        { Name = "Summoner's Pgch.", Level = 73 },    -- BP-2
    }
};
profile.Sets.JA_BloodPactRage_Priority = bloodPact;
profile.Sets.JA_BloodPactWard_Priority = bloodPact;

profile.Sets.JA_ElementalSiphon = {
    Main  = {
            -- Wish: Lv. 51 Chatoyant Staff [EleSiphon+10]
        { Name = "Iridal Staff", Level = 51 },        -- EleSiphon+5
    },
    Neck  = {
        { Name = "Radiant Lantern", Level = 60 },     -- EleSiphon+3
    },
    Feet  = {
        -- Wish: Evoker's Pigaches +1 [(Aug) EleSiphon+5]
    }
};

-- Goal: Max SIRD 102%; Max FastCast 80% ; Max Haste 25%
profile.Sets.Midcast_Default_Priority = {
    Head  = {
        { Name = "Entrancing Ribbon", Level = 11 },   --         FC+1
    },
    Ear1  = {
        { Name = "Loquac. Earring", Level = 75 },     --         FC+2          MP+30 (Balance MPs)
    },
    Neck  = {
        { Name = "Justice Badge", Level = 7 },
    },
    Body  = {
    },
    Hands = {
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
        { Name = "White Slacks", Level = 50 },        --               Haste+3
        { Name = "Garrison Hose +1", Level = 20 },    --               Haste+2
    },
    Feet  = {
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
        { Name = "Dew Silk Cape +11", Level = 75 },   -- CurePot+3  Enm-3
        { Name = "Mist Silk Cape", Level = 10 },      -- CurePot+1
    },
    Waist = {
        { Name = "Pythia Sash", Level = 75 },         --                   ConserveMP+4
    },
    Legs  = {
            -- Wish: Brd. Cannions +1 [(Aug) CurePot+5]
    },
    Feet  = {
            -- Wish: Lv.75 Smn. Pigaches+1 [(Aug) CurePot+6]
            -- Wish: Zenith Pumps+0/1 [(Aug) CurePot+5/6]
            -- Wish: Medium's Sabots [CurePot+4] {DomainInvasion}
    };
}

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
    },
    Hands = {
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
        { Name = "White Slacks", Level = 50 },        --               Haste+3
        { Name = "Garrison Hose +1", Level = 20 },    --               Haste+2
    },
    Feet  = {
    },
};
profile.Sets.Midcast_Poisona_Priority = midcastFastCast
profile.Sets.Midcast_Paralyna_Priority = midcastFastCast
profile.Sets.Midcast_Blindna_Priority = midcastFastCast
profile.Sets.Midcast_Silenana_Priority = midcastFastCast
profile.Sets.Midcast_Erase_Priority = midcastFastCast
profile.Sets.Midcast_Raise_Priority = midcastFastCast

-- TODO: Midcast Avatar BP, need to update miniswap ; Goal: ATK / ACC / SMNSkill (or is SMNSkill in JA?)
-- Head Lv.75 Chironic Doublet [BPDmg+3]
-- Body Lv.75 Smn. Doublet+1 [(Aug) BPDmg+4]
-- Hands Lv.75 Smn. Bracers+1 [(Aug) BPDmg+3]
-- Grip Lv.75 Norn's Grip +0/1 [BPDmg+2/3]

-- Goal: Max FastCast 80%
profile.Sets.Precast_Default_Priority = {
    Head  = {
        { Name = "Entrancing Ribbon", Level = 11 },   -- FC+1
    },
    Ear1  = {
        { Name = "Loquac. Earring", Level = 75 },     -- FC+2
    },
    Body  = {
            -- Wish: Smn. Doublet+1 [(Aug) FC+3]
            -- Wish: Dalmatica +0/1 [(Aug) FC+4] // Carreful with Occ. Quickens Spellcasting!!
            -- Wish: Vermillion Cloak [(Aug) FC+3]
    },
    Ring1 = {
        { Name = "Hibernal Ring", Level = 75 },       -- FC+2
    },
    Back  = {
            -- Wish: Hierarch's Mantle [(Aug) FC+2]
    },
    Feet  = {
            -- Wish: Lv.75 Smn. Pigaches [(Aug) FC+5]
    },
}

profile.Sets.Resting_Priority = {
    Main  = {
        { Name = "Pilgrim's Wand", Level = 10 },      -- MMP+3
    },
    Sub   = {
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