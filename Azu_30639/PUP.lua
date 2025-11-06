local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Sets.Engaged_Priority = {
    Main  = {
        { Name = "Maochinoli", Level = 75 },
            -- With: Blurred Claws? (https://www.bg-wiki.com/ffxi/CatsEyeXI_Systems/Synthesis)
            -- Wish: Nyepel (Oboro)
        { Name = "Poppet Katars", Level = 58 },
        { Name = "Persuasion", Level = 20 },
        { Name = "Strike Baghnakhs", Level = 14 },
        "Cat Baghnakhs +1",
    },
    Range = {
        { Name = "Animator", Level = 1 },
    },
    Head  = {
        -- { Name = "Emperor Hairpin", Level = 24 },     -- DEX+3 AGI+3 EVA+10
        { Name = "Entrancing Ribbon", Level = 11 },   -- PetAcc+2 PetRAcc+2
        { Name = "Cmp. Eye Circlet", Level = 9 },     -- EVA+5
        { Name = "Traveler's Hat", Level = 5 },
        "Coven Hat",
    },
    Ear1 = {
            -- Wish Lv.75 Brutal Earring [DA+5 STP+1]
        -- { Name = "Wilderness Earring", Level = 40 },  -- Acc+1 PetRAcc+1  -- STORED
        { Name = "Cassie Earring", Level = 1 },
    },
    Ear2 = {
        { Name = "Outlaw's Earring", Level = 50 },    -- DEX+2 ATK+4
        { Name = "Dodge Earring", Level = 29 },       -- EVA+3
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        { Name = "Raptor Jerkin", Level = 48 },
        { Name = "Garrison Tunica +1", Level = 20 },
        "Kingdom Aketon", 
    },
    Hands = {
        { Name = "Raptor Gloves", Level = 48 },       -- DEX+4 CHR+4 PetAtk+5 PetRAtk+5
        { Name = "Battle Gloves", Level = 14 },       -- ACC+3 EVA+3 STP+1
        { Name = "Mitts +1", Level = 8 },
        "Dream Mittens +1",
    },
    Ring1 = {
        { Name = "Kusha's Ring", Level = 55 },        -- ACC+12 ATK+6        (Set w/ Lava's Ring)
        { Name = "Ecphoria Ring", Level = 49 },
        { Name = "Archer's Ring", Level = 30 },
        "San d'Orian Ring",
    },
    Ring2 = {
        { Name = "Lava's Ring", Level = 55 },         -- ACC+12 ATK+6        (Set w/ Kusha's Ring)
        "Provenance Ring",
    },
    Back  = {
        { Name = "Exile's Cloak", Level = 50 },       -- STR+4 ATK+3
            -- Wish: Lv30 Fidelity Mantle [PetSTP+3]
        { Name = "Mist Silk Cape", Level = 10 },
    },
    Waist = {
        { Name = "Griot Belt", Level = 28 },          -- H+2
        { Name = "Heko Obi", Level = 8 },             -- AGI+3 ACC+3
    },
    Legs  = {
        { Name = "White Slacks", Level = 48 },        -- AGI+5 H+2 Regen +1
            -- Wish: Lv25 Herder's Subligar [PetAcc+5 PetRAcc+5 (Aug) DEX+3 PetAcc+3 PetRAcc+3]
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2 H+2
        { Name = "Slacks +1", Level = 8 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Raptor Ledelsens", Level = 48 },
        { Name = "Power Sandals", Level = 18},        -- VIT+3
        { Name = "Solea +1", Level = 8},
        "Dream Boots +1",
    },
};

profile.Sets.Idle_Priority = profile.MiniSwap.DeepCopy(profile.Sets.Engaged_Priority)
profile.Sets.Idle_Priority.Head = {
    { Name = "Garrison Sallet +1", Level = 20 },      -- Regen+1 while below lv.50
};

-- Goal: HHP
profile.Sets.Resting_Priority = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
};

local maneuvers = { Neck = "Buffoon's Collar" };
profile.Sets.JA_DarkManeuver = maneuvers;
profile.Sets.JA_EarthManeuver = maneuvers;
profile.Sets.JA_FireManeuver = maneuvers;
profile.Sets.JA_IceManeuver = maneuvers;
profile.Sets.JA_LightManeuver = maneuvers;
profile.Sets.JA_ThunderManeuver = maneuvers;
profile.Sets.JA_WaterManeuver = maneuvers;
profile.Sets.JA_WindManeuver = maneuvers;

-- Goal: ACC for multi-hits WS
profile.Sets.WS_Default_Priority = {
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3      -- STR+2 DEX+2
        { Name = "Pile Chain", Level = 3 },
    },
    Body = {
    },
    Hands = {
    },
    Ring1 = {
        "San d'Orian Ring",                           -- STR+1
    },
    Waist = {
        { Name = "Virtuoso Belt", Level = 54 },       -- ACC+12 ATK+4
    },
    Back  = {
        { Name = "Exile's Cloak", Level = 50 },       -- STR+1 ATK+3  (STR+4 once full augmented)
    },
    Feet  = {},
};

-- Goal: ACC (Multi-hits WS) & DEX (Mod 73%)
profile.Sets.WS_ShijinSpiral = {
    -- Ammo  = "",

    Head  = "Naga Somen",                             --              DEX+5
        -- Wish: High: Assailant's Visor [DEX+11 STR+5 (Aug) ACC+5 ATK+5 DA+2]
        -- Wish: Mid: Optical Hat [ACC+10 (Aug) DEX+3]
        -- Wish: Mid: Maat's Cap [DEX+7]

    -- Ear1  = "",
        -- Wish: Hollow Earring [DEX+2 ACC+3]

    Ear2  = "Outlaw's Earring",                       --        ATK+4 DEX+2

    Neck  = "Peacock Charm",                          -- ACC+10
        -- Wish: Ancient Torque [DEX+4 ACC+9]

    Body  = "Naga Samue",                             -- ACC+15 ATK+15
        -- Wish: High: Usukane Haramaki [DEX+8 ACC+12 (Aug) DA+3]
        -- Wish: Med: Antares Harness [DEX+8 ACC+8]

    Hands = "Shinobi Tekko",                          -- ACC+8  ATK+8
        -- Wish: Hachiryu Kote

    Ring1 = "Kusha's Ring",                           -- ACC+12 ATK+6        (Set w/ Lava's Ring)

    Ring2 = "Lava's Ring",                            -- ACC+12 ATK+6        (Set w/ Kusha's Ring)

    Back  = "Exile's Cloak",                          --        ATK+3 STR+4
        -- Wish: High: Cuchulain's Mantle [DEX+4 ACC+5] Is it even obtainable here?

    Waist = "Virtuoso Belt",                          -- ACC+12 ATK+4
        -- Wish: Warwolf Belt [DEX+5 STR+5] If enough ACC elsewhere?

    Legs  = "Garrison Hose +1",                       --              DEX+2
        -- Wish: Med: Usukane Hizayoroi [DEX+5 ATK+10 (Aug) ACC+5]
        -- Wish: Med: Acrobat's Breeches [DEX+2 TA+2 (Aug) DEX+5 ATK+5]

    -- Feet = "",
}

return profile;