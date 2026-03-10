local profile = gFunc.LoadFile('common/miniswap.lua');
local sets = {};

sets.LockStyle = {
    Main  = "Baqil Staff",
    Head  = "Smn. Horn +1",
    Body  = "Otokogimi Yukata",  -- Try Mariner's Tunica {Fishing Ventures}
    Hands = "Smn. Bracers +1",
    Legs  = "Smn. Spats +1",
    Feet  = "Smn. Pigaches +1",
};

sets.Idle_Default_Priority = {
    Main  = {
        { Name = "Radiance", Level = 20 },
        { Name = "Ash Pole +1", Level = 5 },
        "Maple Wand +1",
    },
    Sub   = {
        { Name = "Neph. Grip", Level = 8 },
        { Name = "remove", Level = 5 },               -- No shield with staff
        "Kupo Shield",
    },
    Ammo = {
            -- Wish: [(Aug) Pet: Acc+5 Atk+5 PDT-3]
        { Name = "Soothing Sachet", Level = 70 },     -- MP+40  MND+4  Enm-4  BPII-2
        { Name = "Rimestone", Level = 60 },           -- MP+35  MACC+3  INT+3  MND+1  Emn-5
        { Name = "Talon Tathlum", Level = 50 },
        { Name = "Morion Tathlum", Level = 25 },
        "Happy Egg",
    },
    Head  = {
        { Name = "Evk. Horn +1", Level = 74 },        -- Refresh+1
        { Name = "remove", Level = 59 },              -- No head because of Vermillion Cloak
        { Name = "Entrancing Ribbon", Level = 11 },
        { Name = "Cmp. Eye Circlet", Level = 9 },     -- EVA+5
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Loquac. Earring", Level = 75 },
        { Name = "Outlaw's Earring", Level = 50 },
        { Name = "Pigeon Earring", Level = 33 },      -- HP+20 MP+15 STR+1 ATK+2
        "remove",
    },
    Ear2 = {
        { Name = "Insomnia Earring", Level = 50 },
        { Name = "Tribal Earring", Level = 20 },
        "remove",
    },
    Neck  = {
        { Name = "Radiant Lantern", Level = 60 },
        { Name = "Justice Badge", Level = 7 },
    },
    Body  = {
        { Name = "Chironic Doublet", Level = 75 },    -- Refresh+1  DT-5  PetDT-5
            -- Wish: Lv.71 YinYang Robe [Refresh+1 (Aug) MDT-3] 
        { Name = "Vermillion Cloak", Level = 59 },    -- Refresh+1
        { Name = "Garrison Tunica +1", Level = 20 },  -- Refresh+1 while below lv.50
        { Name = "Druid's Robe", Level = 8 },
        "Tidal Talisman",
    },
    Hands = {
        { Name = "Smn. Bracers +1", Level = 75 },
        { Name = "Carbuncle Mitts", Level = 20 },     -- MP+19 Enm-1
        { Name = "Zealot's Mitts", Level = 11 },       -- MP+5 MND+3
        { Name = "Mitts +1", Level = 8 },
        "Dream Mittens +1",
    },
    Ring1 = {
        { Name = "Defending Ring", Level = 70 },      -- DT-10
        { Name = "Astral Ring", Level = 10 },
        "Windurstian Ring",
    },
    Ring2 = {
            -- Wish: Merman's Ring (Coral Ring +1) [MDT-4]
        { Name = "Coral Ring", Level = 70 },          -- MDT-3
        { Name = "Astral Ring", Level = 10 },
        "Provenance Ring",
    },
    Back  = {
            -- Wish: Lv.68 Umbra Cape [PDT-6]
        { Name = "Cheviot Cape", Level = 68 },        -- PDT-5 Dark+13
        { Name = "Tundra Mantle", Level = 39 },
        { Name = "Mist Silk Cape", Level = 10 },
    },
    Waist = {
        { Name = "Pythia Sash", Level = 75 },
        { Name = "Silver Obi", Level = 20 },
        { Name = "Friar's Rope", Level = 14 },
    },
    Legs  = {
        { Name = "Zenith Slacks +1", Level = 73 },
        { Name = "White Slacks", Level = 50 },        -- Haste+3 Regen +1
        { Name = "Custom Slacks", Level = 31 },       -- MP+32
        { Name = "Garrison Hose +1", Level = 20 },    -- Haste+2
        { Name = "Slacks +1", Level = 8 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Smn. Pigaches +1", Level = 75 },
        { Name = "Custom M Boots", Level = 29 },      -- MP+12       Eva+5
        { Name = "Garrison Boots +1", Level = 20 },   -- INT+2 MND+2
        { Name = "Power Sandals", Level = 18 },       -- VIT+3
        { Name = "Solea +1", Level = 8 },
        "Dream Boots +1",
    },
};

-- Goal: Perpetuation Cost ; Avatar ATK / ACC / PDT / ...
local petDefaultPriority = {
    Main  = {
        { Name = "Chatoyant Staff", Level = 51 },        -- PerpCost-3
        { Name = "Radiance", Level = 20 },            --                       PetATK+10  Refresh+1
    },
    Ammo  = {
        { Name = "Soothing Sachet", Level = 70 },     -- PetACC+5 PetAtk+5 PetDT-3
    },
    Head  = {
            -- Wish: Lv.74 Smn. Horn +1 [(Aug) PetPDT-4 Refresh+1]
        { Name = "Smn. Horn +1", Level = 75 },
        { Name = "remove", Level = 59 },              -- No head because of Vermillion Cloak
        { Name = "Entrancing Ribbon", Level = 11 },   -- PetACC+2
    },
    Ear1 = {
        -- { Name = "Wilderness Earring", Level = 45 },  -- PetACC+1  -- STORED
    },
    Body  = {
        { Name = "Chironic Doublet", Level = 75 },    -- PetDT-5  Refresh+1  DT-5
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
    Back  = {
            -- Wish: Lv.75 Aife's Mantle [PetAtk+10]
            -- Wish: Lv.30 Fidelity Mantle [PetSTP+3]
    },
    Waist = {
            -- Wish: Lv.70 Covenant Belt [PetACC+10] {DI}
        { Name = "Silver Obi", Level = 20 },          -- PetATK+1
    },
    Legs  = {
        { Name = "Evk. Spats +1", Level = 52 },       -- PetACC+10 PetDA+3 PetATK+3
            -- TODO: Re-obtain NQ AF for lv sync { Name = "Evoker's Spats", Level = 52 },      -- PetACC+10
            -- Wish: Lv.25 Herder's Subligar [(Aug) PetAtk+3]
    },
    Feet  = {
        { Name = "Smn. Pigaches +1", Level = 75 },    -- PetATK+7 PetDA+3 PetCrit+3
    },
};
sets.Idle_Pet_Default_Priority = petDefaultPriority;
sets.Engaged_Pet_Default_Priority = petDefaultPriority;

-- Goal: Carbuncle Perpetuation Cost ; Carbuncle ATK / ACC / PDT / ...
local petCarbunclePriority  = {
    Hands = {
        { Name = "Carbuncle Mitts", Level = 20 },     -- CarbyPerpCost-50% PetDEF+10
    },
};
sets.Idle_Pet_Carbuncle_Priority = petCarbunclePriority;
sets.Engaged_Pet_Garuda_Priority = petCarbunclePriority;

-- Goal: Garuda Perpetuation Cost ; Garuda ATK / ACC / PDT / ...
local petGarudaPriority = {
    Head  = {
        -- Wish: Lv.73 Karura Hachigane [GarudaPerfCost-2 GarudaATK+10 GarudaDEF+10]
    },
};
sets.Idle_Pet_Garuda_Priority = petGarudaPriority;
sets.Engaged_Pet_Garuda_Priority = petGarudaPriority;

local petMatchesDayPriority = {
    Body  = {
        { Name = "Summoner's Dblt.", Level = 74 },    -- PerpCost-3
    },
};
sets.Idle_Pet_Day_Priority = petMatchesDayPriority;
sets.Engaged_Pet_Day_Priority = petMatchesDayPriority;

local petMatchesWeatherPriority = {
    Head  = {
        { Name = "Smn. Horn +1", Level = 75 },     -- PerpCost-3
    },
};
sets.Idle_Pet_Weather_Priority = petMatchesWeatherPriority;
sets.Engaged_Pet_Weather_Priority = petMatchesWeatherPriority;

-- Goal: Blood Pact Ability Delay (Max 15 per tier) ; Blood Boon
local bloodPact = {
    Ammo  = {
        { Name = "Soothing Sachet", Level = 70 },     --       BPII-2
    },
    Head  = {
        { Name = "Smn. Horn +1", Level = 75 },        -- BP-3
            -- Wish: Lv.50 Penance Hat [BP-3]
            -- Wish: Lv.50 Austere Hat [BP-2]
    },
    Body  = {
            -- Wish: Lv.75 Smn. Doublet +1 [BP-4]
        { Name = "Summoner's Dblt.", Level = 74 },    -- BP-3
            -- Wish: Lv.71 YinYang Robe [BP-5]
            -- Wish: Lv.50 Penance Robe [BP-4]
            -- Wish: Lv.50 Austere Robe [BP-3]
    },
    Hands = {
            -- Wish: Nashira Gages [(Aug) BPII-3 BloodBoon+5]
        { Name = "Smn. Bracers +1", Level = 75 },     -- BP-2
            -- Wish: Lv.50 Penance Cuffs [BP-2]
            -- Wish: Lv.50 Austere Cuffs [BP-1]
    },
    Ring1 = {
            -- Wish: Lv.75 Eidolon Ring [BPII-5]
    },
    Back  = {
        { Name = "Summoner's Cape", Level = 75 },     -- BP-2
    },
    Waist = {
            -- Wish: Lv.70 Covenant Belt [BloodBoon+3 (Aug) BP-2] {DI}
    },
    Legs  = {
            -- Wish: Lv.75 Smn. Spats +1 [BP-2 (Aug) BloodBoon+8]
        { Name = "Chironic Hose", Level = 75 },       -- BP-2 BloodBoon+3
    },
    Feet  = {
        { Name = "Smn. Pigaches +1", Level = 75 },    -- BP-2
    }
};
sets.JA_BloodPactRage_Priority = bloodPact;
sets.JA_BloodPactWard_Priority = bloodPact;

sets.JA_ElementalSiphon = {
    Main  = {
        { Name = "Chatoyant Staff", Level = 51 },        -- EleSiphon+10
    },
    Neck  = {
        { Name = "Radiant Lantern", Level = 60 },     -- EleSiphon+3
    },
    Feet  = {
        -- Wish: Evoker's Pigaches +1 [(Aug) EleSiphon+5]
    }
};

-- Goal: Max SIRD 102%; Max FastCast 80% ; Max Haste 25%
sets.Midcast_Default_Priority = {
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
    Back  = {
        { Name = "Dew Silk Cape +1", Level = 75 },    -- CurePot+3  Enm-3
        { Name = "Mist Silk Cape", Level = 10 },      -- CurePot+1
    },
    Waist = {
        { Name = "Pythia Sash", Level = 75 },         --                   ConserveMP+4
    },
    Feet  = {
        { Name = "Smn. Pigaches +1", Level = 75 },    -- CurePot+6
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
sets.Midcast_Poisona_Priority = midcastFastCast
sets.Midcast_Paralyna_Priority = midcastFastCast
sets.Midcast_Blindna_Priority = midcastFastCast
sets.Midcast_Silenana_Priority = midcastFastCast
sets.Midcast_Erase_Priority = midcastFastCast
sets.Midcast_Raise_Priority = midcastFastCast

-- TODO: Midcast Avatar BP, need to update miniswap ; Goal: ATK / ACC / SMNSkill (or is SMNSkill in JA?)
-- Head Lv.75 Chironic Doublet [BPDmg+3]
-- Body Lv.75 Smn. Doublet+1 [(Aug) BPDmg+4]
-- Hands Lv.75 Smn. Bracers+1 [(Aug) BPDmg+3]
-- Grip Lv.75 Norn's Grip +0/1 [BPDmg+2/3]

-- Goal: Max FastCast 80%
sets.Precast_Default_Priority = {
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
        { Name = "Smn. Pigaches +1", Level = 75 },    -- FC+5
    },
}

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
        { Name = "remove", Level = 51 },              -- No shield because of staff
        { Name = "Pelte", Level = 8 },                -- HMP+2
    },
    Head  = {
        { Name = "Evk. Horn +1", Level = 74 },        -- HMP+4 Refresh+1
    },
        -- Ear1: Wish: Lv.75 Darkness/Pluto's Earring [HMP+2/3]
        -- Ear2: Wish: Lv.75 Darkness/Pluto's Earring [HMP+2/3]
        -- Neck: Wish: Lv.50 Beak Necklace +1 [HMP+2]
    Body  = {
            -- Wish: Lv.74 Evoker's Doublet +1 [HMP+5 (Aug) HMP+3]
            -- Wish: Lv.72 Mahatma Houppelande [HMP+6]
    },
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
            -- Wish: Lv.70 Numerist Pumps [HMP+3]
        { Name = "Garrison Boots +1", Level = 20 },   -- HMP+2
    }
};

local petToElement = {
    ["Air Spirit"] = "Wind",
    Alexander = "Light",
    Atomos = "Light",
    ["Cait Sith"] = "Light",
    Carbuncle = "Light",
    ["Dark Spirit"] = "Dark",
    Diabolos = "Dark",
    ["Earth Spirit"] = "Earth",
    Fenrir = "Dark",
    ["Fire Spirit"] = "Fire",
    Garuda = "Wind",
    Ifrit = "Fire",
    ["Ice Spirit"] = "Ice",
    Leviathan = "Water",
    ["Light Spirit"] = "Light",
    Odin = "Dark",
    Ramuh = "Thunder",
    Shiva = "Ice",
    Siren = "Wind",
    Titan = "Earth",
    ["Thunder Spirit"] = "Thunder",
    ["Water Spirit"] = "Water",
}


profile.HandleDefault = function()
    -- Default behavior
    profile.MiniSwap.HandleDefault();

    -- Match pet with day/weather
    local pet = gData.GetPet();
    if (pet == nil) then return end

    local player = gData.GetPlayer();
    if (not player.Status:any('Engaged', 'Idle')) then return end

    local petName = profile.MiniSwap.Slugify(pet.Name);
    local petElement = petToElement[petName];
    if (petElement == nil) then return end

    local environment = gData.GetEnvironment();

    if (environment.DayElement == petElement) then
        profile.MiniSwap.TryEquipSet(player.Status .. "_Pet_Day");
    end

    if (environment.WeatherElement == petElement) then
        profile.MiniSwap.TryEquipSet(player.Status .. "_Pet_Weather");
    end
end

profile.Sets = sets;
return profile;