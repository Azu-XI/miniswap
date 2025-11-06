local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Sets.LockStyle = {
    Main  = "Maochinoli",
    Head  = "Naga Somen",
    Body  = "Naga Samue",
    Hands = "Melee Gloves",
    Legs  = "Naga Hakama",
    Feet  = "Naga Kyahan",
};

profile.Sets.Engaged_Priority = {
    Main  = {
        { Name = "Maochinoli", Level = 75 },
            -- With: Blurred Claws? (https://www.bg-wiki.com/ffxi/CatsEyeXI_Systems/Synthesis)
            -- Wish: Nyepel (Oboro)
        { Name = "Poppet Katars", Level = 58 },
        { Name = "Persuasion", Level = 20 },
        { Name = "Strike Baghnakhs", Level = 14 },
        { Name = "Brass Knuckles", Level = 9 },
        "Cat Baghnakhs +1",
    },
    Ammo = {
        { Name = "Bibiki seashell", Level = 60 },     -- VIT+4
        { Name = "Happy Egg", Level = 1 },
    },
    Head  = {
        { Name = "Naga Somen", Level = 75 },          -- DEX+5 H+5
            -- Wish: Lv.75 Melee Crown +1 [STR+6 SB+6 (Aug) ACC+8 EVA+10 Crit+4] !! Watch out for lack of Haste
            -- Wish: Lv.70 Optical Hat [ACC+10 EVA+10 (Aug) DEX+3 AGI+3 H+3]
        { Name = "Wivre Mask", Level = 65 },          -- ACC+5 DEX+3
        { Name = "Shinobi Hachigane", Level = 49 },   -- ATK+2 H+2 Counter+3
            -- Wish: Lv.41 Voyager Sallet [STR+3 DEX+4 (Aug) VIT+4 ATK+2]
        { Name = "Emperor Hairpin", Level = 24 },     -- DEX+3 AGI+3 EVA+10
        { Name = "Cmp. Eye Circlet", Level = 9 },     -- EVA+5
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Brutal Earring", Level = 75 },      --                   DA+5 STP+1
        { Name = "Insomnia Earring", Level = 50 },
        { Name = "Cassie Earring", Level = 1 },
    },
    Ear2 = {
        { Name = "Luminous Earring", Level = 75 },    --       ATK+3 ACC+3             SB+2
        { Name = "Outlaw's Earring", Level = 50 },    -- DEX+2 ATK+4
        { Name = "Dodge Earring", Level = 29 },       -- EVA+3
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       --             ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        { Name = "Naga Samue", Level = 75 },          -- ACC+15 ATK+15 Regen+1 DT-5
            -- Wish: Lv.75 Usukane Haramaki [STR+8 DEX+8 ACC+12 EVA+12 STP+6 (Aug) DA+3 MDB+3 (Set) H+3~9]
        { Name = "Shinobi Gi", Level = 49 },          -- ACC+8 ATK+8 MDT-2
            -- Wish: Lv.40 Jujitsu Gi [ACC+4 (Aug) STR+2 AGI+2 STP+1]
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Power Gi", Level = 13 },
        { Name = "Kenpogi", Level = 8 },
        "Kingdom Aketon", 
    },
    Hands = {
        -- { Name = "Naga Tekko", Level = 75 },          -- ACC+6 Counter+3 DEX+3 AGI+3
        { Name = "Melee Gloves", Level = 73 },        -- ATK+16 SB+4 
            -- Wish: Melee Gloves +1 [Atk+18 SB+5 (Aug) STR+6 VIT+6 ACC+6 ATK+6 CTP+6]
        { Name = "Shinobi Tekko", Level = 49 },       -- ACC+8 ATK+8 STP+2
            -- Wish: Lv.34 Ochimusha Kote [ATK+20 EVA-5]
        { Name = "Battle Gloves", Level = 14 },       -- ACC+3 EVA+3 STP+1
        { Name = "Brass Mittens", Level = 11 },
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
            -- Wish: Lv. 61 Amemet Mantle +1 [STR+2 ATK+15]
        { Name = "Exile's Cloak", Level = 50 },       -- STR+4 ATK+3
        { Name = "Nomad's Mantle", Level = 24 },      -- EVA+3  AGI+1  DW+1
        { Name = "Traveler's Mantle", Level = 12 },   -- EVA+3
        { Name = "Rabbit Mantle", Level = 4 },
    },
    Waist = {
            -- Wish: Lv.75 Black Belt [STR+5 SB+5 H+12 PDT-5]
        {Name = "Brown Belt", Level = 40},            -- STR+5 H+8
        {Name = "Purple Belt", Level = 18},           -- STR+3 H+5
        "White Belt",                                 -- STR+1
    },
    Legs  = {
        { Name = "Naga Hakama", Level = 75 },         -- H+5
            -- Wish: Lv.75 Usukane Hizayoroi [STR+5 DEX+5 ATK+10 H+3 (Aug) ACC+5 KA+3 (Set) H+3~9]
            -- Wish: Lv.75 Melee Hose +1 [KA+5 SB+5 (Aug) MartialArts+6 KA+5 PDT+4]
        { Name = "Shinobi Hakama", Level = 49 },
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2 H+2
        { Name = "Slacks +1", Level = 8 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Naga Kyahan", Level = 75 },         -- ACC+6 ATK+6 H+3
            -- Wish: Lv.75 Usukane Sune-Ate [ACC+7 ATK+7 STP+7 H+2 (Aug) DEX+3 AGI+3 (Set) H+3~9]
        { Name = "Shinobi Kyahan", Level = 49 },      -- ACC+8 H+2 MDT-3
            -- Wish: Lv.39 Sarutobi Kyahan [H+3]
        { Name = "Power Sandals", Level = 18},        -- VIT+3
        "Dream Boots +1",
    },
};

profile.Sets.Idle_Priority = profile.MiniSwap.DeepCopy(profile.Sets.Engaged_Priority)
profile.Sets.Idle_Priority.Head = {
    { Name = "Naga Somen", Level = 75 },
    { Name = "Shinobi Hachigane", Level = 50 },
    { Name = "Garrison Sallet +1", Level = 20 },      -- Regen+1 while below lv.50
};

-- Goal: HHP
profile.Sets.Resting_Priority = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
};


profile.Sets.JA_Boost_Priority = {
    Hands = {
        { Name = "Temple Gloves", Level = 54 },
    },
};

-- Goal: VIT
profile.Sets.JA_Chakra_Priority = {
    Head  = {
            -- Wish: Genbu's Kabuto [VIT+15]
        { Name = "Tiger Mask", Level = 75 },          -- VIT+5
    },
    Body  = {
        { Name = "Temple Cyclas", Level = 58 },       -- VIT+3
        { Name = "Custom Tunic", Level = 33 },        -- VIT+3
    },
    Hands = {
        { Name = "Melee Gloves", Level = 72 },        -- Chakra II
    },
    Back  = {
        { Name = "Meele Cape", Level = 70 },          -- VIT+5
    },
    -- Legs = {},
        -- Wish: Temple Hose +1 [(Aug) VIT+9~11]
    Feet  = {
        { Name = "Power Sandals", Level = 18},        -- VIT+3
    },
};

--Goal: MND
profile.Sets.JA_ChiBlast_Priority = {
    Head  = {
        { Name = "Temple Crown", Level = 56 },        -- MND+5
        { Name = "Garrison Sallet +1", Level = 20 },  -- MND+2
    },
    Neck  = {
        { Name = "Justice Badge", Level = 7 },        -- MND+3
    },
    -- Body  = {},
        -- Wish: Kirin's Osode [MND+10]
    Hands = {
        { Name = "Temple Gloves", Level = 54 },       -- Enhance Boost Effect (Shouldn't be needed here no?)
        { Name = "Zealot's Mitts", Level = 54 },      -- MND+3
    },
    Back  = {
        { Name = "Meele Cape", Level = 70 },          -- MND+5
    },
    Waist  = {
        { Name = "Friar's Rope", Level = 14 },        -- MND+1
    },
    Feet  = {
        { Name = "Suzaku's Sune-Ate", Level = 75 },   -- MND+15
        { Name = "Garrison Boots +1", Level = 54 },   -- MND+2
    },
};

profile.Sets.JA_Counterstance_Priority = {
    Feet  = {
        { Name = "Melee Gaiters", Level = 71 },
    },
};

profile.Sets.JA_Dodge_Priority = {
    Feet  = {
        { Name = "Temple Gaiters", Level = 52 },
    },
};

profile.Sets.JA_Focus_Priority = {
    Head  = {
        { Name = "Temple Crown", Level = 56 },
    },
};

-- Goal: ACC (Multi-hits WS) & STR (Generic Mod)
profile.Sets.WS_Default_Priority = {
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3      -- STR+2 DEX+2
        { Name = "Pile Chain", Level = 3 },
    },
    Body = {
        { Name = "Naga Samue", Level = 75 },          -- ACC+15 ATK+15
    },
    Hands = {
        { Name = "Shinobi Tekko", Level = 49 },       -- ATK+8 ACC+8
        { Name = "Cotton Tekko", Level = 18 },        -- STR+2 ATK+4
    },
    Ring1 = {
        "San d'Orian Ring",                           -- STR+1
    },
    Waist = {
        { Name = "Virtuoso Belt", Level = 54 },       -- ACC+12 ATK+4
    },
    Back  = {
        { Name = "Exile's Cloak", Level = 50 },       -- STR+1 ATK+3  (STR+4 once full augmented)
        { Name = "Lizard Mantle", Level = 17 },       -- STR+1
    },
    Feet  = {
        { Name = "Naga Kyahan", Level = 75 },         -- ACC+6 ATK+6
    },
};

-- Goal: ACC (Multi-hits WS) & DEX (Mod 73%)
profile.Sets.WS_ShijinSpiral = {
    -- Ammo  = "",

    Head  = "Assailant's Visor",                      --              DEX+11 STR+5
        -- Wish: Augment to ACC+5 ATK+5 DA+2

    -- Ear1  = "",
        -- Wish: Hollow Earring [DEX+2 ACC+3]

    Ear2  = "Outlaw's Earring",                       --        ATK+4 DEX+2

    Neck  = "Peacock Charm",                          -- ACC+10
        -- Wish: Fotia Gorget [WSAcc+10 WSD+10%]
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
        -- Wish: Mid: Amemet Mantle +1 [STR+2 ATK+15]

    Waist = "Virtuoso Belt",                          -- ACC+12 ATK+4
        -- Wish: Fotia Belt [WSAcc+10 WSD+10%]
        -- Wish: Warwolf Belt [DEX+5 STR+5] If enough ACC elsewhere?

    Legs  = "Garrison Hose +1",                       --              DEX+2
        -- Wish: High: Byakko's Haidate [DEX+15]
        -- Wish: Med: Usukane Hizayoroi [DEX+5 ATK+10 (Aug) ACC+5]
        -- Wish: Med: Acrobat's Breeches [DEX+2 TA+2 (Aug) DEX+5 ATK+5]

    Feet  = "Melee Gaiters",                           --             DEX+4
        -- Wish: Melee Gaiters +1 [DEX+5 (Aug) ACC+8]
}

return profile;