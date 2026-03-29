local profile = gFunc.LoadFile('common/miniswap.lua');
local sets = {};

sets.Engaged_Default_Priority = {
    Main  = {
            -- Wish: Ohtas [RepairPot+10% PetACC+8 PetRACC+8 PetDA+3] {Oboro}
        { Name = "Maochinoli", Level = 75 },
        { Name = "Poppet Katars", Level = 58 },
        { Name = "Persuasion", Level = 20 },
        { Name = "Strike Baghnakhs", Level = 14 },
        "Cat Baghnakhs +1",
    },
    Range = {
        { Name = "Animator +1", Level = 71 },         -- DEX+4 PetHP+45~60 PetMP+0~60
        -- { Name = "Turbo Animator", Level = 40 },      -- DEX+2  -- STORED
        { Name = "Animator", Level = 1 },
    },
    Head  = {
        { Name = "Usukane Somen", Level = 75 },       -- STR+3 AGI+3 ACC+7 EVA+7 H+3 Counter+4 DT-4
        { Name = "Heroic Hairpin", Level = 30 },      -- PDT-2 H+2 DW+3
        { Name = "Emperor Hairpin", Level = 24 },     -- EVA+10
        { Name = "Entrancing Ribbon", Level = 11 },   -- PetACC+2 PetRACC+2
        { Name = "Cmp. Eye Circlet", Level = 9 },     -- EVA+5
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Brutal Earring", Level = 75 },      -- DA+5 STP+1
        { Name = "Wilder. Earring +1", Level = 45 },  -- ACC+2 PetACC+2
        { Name = "Pigeon Earring", Level = 33 },      -- HP+20 MP+15 STR+1 ATK+2
        "remove",
    },
    Ear2 = {
        { Name = "Luminous Earring", Level = 75 },    --                 ACC+3  ATK+4
        { Name = "Outlaw's Earring", Level = 50 },    -- DEX+2 ATK+4
        { Name = "Tribal Earring", Level = 20 },
        "remove",
    },
    Neck  = {
        { Name = "Faith Torque", Level = 73 },        -- H2HSkill+7
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
            -- Wish: Usukane Haramaki [STR+8 DEX+8 ACC+12 EVA+12 STP+6 (Aug) DA+3]
        { Name = "Garrison Tunica +1", Level = 20 },
        "Tidal Talisman",
    },
    Hands = {
            -- Wish: Thurandaut Gloves [ACC+6 ATK+6 H+3 Pet:H+5]
        { Name = "Raptor Gloves", Level = 48 },       -- DEX+4 CHR+4 PetAtk+5 PetRAtk+5
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
        { Name = "Virtuoso Belt", Level = 54 },       -- ACC+12                 ATK+4
        { Name = "Griot Belt", Level = 28 },          -- HP+5 H+2
        { Name = "Heko Obi", Level = 8 },             -- AGI+3 ACC+3
    },
    Legs  = {
        { Name = "Acrobat's Breeches", Level = 70 },  --                     H+2 TA+2 EVA+11
        { Name = "White Slacks", Level = 48 },        -- AGI+5 H+3 Regen +1
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2 H+2
        { Name = "Slacks +1", Level = 8 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Usukane Sune-Ate", Level = 75 },    -- ACC+7 ATK+7 STP+7 H+2
        { Name = "Raptor Ledelsens", Level = 48 },    -- H+2
        { Name = "Power Sandals", Level = 18},        -- VIT+3
        { Name = "Solea +1", Level = 8},
        "Dream Boots +1",
    },
};

sets.Idle_Default_Priority = profile.MiniSwap.DeepCopy(sets.Engaged_Default_Priority)
sets.Idle_Default_Priority.Head = {
    { Name = "Usukane Somen", Level = 75 },           -- EVA+7 DT-4
    { Name = "Emperor Hairpin", Level = 50 },         -- EVA+10
    { Name = "Garrison Sallet +1", Level = 20 },      -- Regen+1 under lv.50
    table.unpack(sets.Idle_Default_Priority.Head),
};
sets.Idle_Default_Priority.Neck = {
    { Name = "Oneiros Torque", Level = 75 },          -- EVA+5 PDT-2
    table.unpack(sets.Idle_Default_Priority.Neck),
};
sets.Idle_Default_Priority.Ring1 = {
    { Name = "Defending Ring", Level = 70 },          -- DT-10
    table.unpack(sets.Idle_Default_Priority.Ring1),
};
sets.Idle_Default_Priority.Ring2 = {
        -- Wish: Merman's Ring (Coral Ring +1) [MDT-4]
    { Name = "Coral Ring", Level = 70 },              -- MDT-3
    table.unpack(sets.Idle_Default_Priority.Ring2),
};
sets.Idle_Default_Priority.Back = {
            -- Wish: Lv.68 Umbra Cape [PDT-6]
    { Name = "Cheviot Cape", Level = 68 },            -- PDT-5 Dark+13
     table.unpack(sets.Idle_Default_Priority.Back),
};

-- Goal: -- TODO: Use modes or check packets to know the automaton head/frame
local petDefaultPriority = {
    Head  = {
            -- Wish: Khthonios Helm [PetATK+9 PetACC+9] {Beaucedine 2.0}
            -- Wish: Pantin Taj +1 [PetRegen+1 (Aug) PetDA+3]
        { Name = "Entrancing Ribbon", Level = 11 },   -- PetACC+2 PetRACC+2
    },
    Ear1 = {
        { Name = "Wilder. Earring +1", Level = 45 },  -- PetACC+2
    },
    Body  = {
            -- Wish: Thurandaut Tabard [PetDT-5 PetHP+50 PetEnm+5]
        { Name = "Aega's Doublet", Level = 32 },       -- PetACC+3 PetATK+3
    },
    Hands = {
            -- Wish: Avesta Bangles [AutomatonMagicSkill+9] {Beaucedine 2.0}
            -- Wish: Thurandaut Gloves [PetH+5]
        { Name = "Raptor Gloves", Level = 48 },       -- PetATK+5 PetRATK+5
    },
    Back  = {
            -- Wish: Pantin Cape [PetAtk+15 (Aug) PetDA+5 PetCritRate+5]
        { Name = "Aife's Mantle", Level = 75 },       -- PetATK+10          ACC+4 STP+2
        { Name = "Fidelity Mantle", Level = 30 },     -- PetSTP+3
    },
    Waist = {
            -- Wish: Lv.73 Companion Belt +0/1 [PetACC+8/12 PetRACC+8/12 PetDA+0/1%]
            -- Wish: Lv.70 Bolt Stone [PetDEX+5 PetH+3 (Aug) PetATK+3 PetH+3]
    },
    Legs  = {
            -- Wish: Lv.75 Pantin Churidars +1 [PetMACC+7 (Aug) PetMagicSkill+6 PetMND+10]
            -- Wish: Lv.75 Thurandaut Tights [PetMACC+5]
            -- Wish: Lv.74 Puppetry Churidars +1 [PetCurePot+5% (Aug) PetDA+4 PetCritRate+4]
            -- Wish: Lv.25 Herder's Subligar [PetACC+5 PetRACC+5 (Aug) DEX+3 PetACC+3 PetRACC+3]
    },
    Feet  = {
        -- { Name = "Aife's Pumps", Level = 75 },        -- PetCurePot+4%  -- STORED
            -- Wish: Lv.75 Ryuga Sune-Ate [AutomatonSkill+5] {Beaucedine 2.0}
            -- Wish: Lv.75 Thurandaut Boots [PetMAB+5]
            -- Wish: Lv.74 Puppetry Babouches +1 [(Aug) PetRegen+3]
        { Name = "Mettle Leggings", Level = 19 },     -- PetATK+2 PetRATK+2
    },
};
sets.Idle_Pet_Default_Priority = petDefaultPriority;
sets.Engaged_Pet_Default_Priority = petDefaultPriority;

-- Goal: HHP
sets.Resting_Default_Priority = {
        -- Ear1: Wish: Lv.75 Darkness/Pluto's Earring [HMP+2/3]
        -- Ear2: Wish: Lv.75 Darkness/Pluto's Earring [HMP+2/3]
        -- Neck: Wish: Lv.50 Beak Necklace +1 [HMP+2]
        -- Body: Wish: Lv.72 Mahatma Houppelande [HMP+6]
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
        -- Ring1: Wish: Lv.75 Fenrir Ring +0/1 [HMP+3/5]
        -- Ring2: Wish: Lv.75 Fenrir Ring +0/1 [HMP+3/5]
        -- Back: Wish: Lv.68 Blue Cape [(Aug) HMP+2]
        -- Waist: Wish: Lv.40 Qiqirn Sash +1 [HMP+3]
    Feet  = {
            -- Wish: Lv.70 Numerist Pumps [HMP+3]
        { Name = "Garrison Boots +1", Level = 20 },   -- HMP+2
    }
};

local maneuvers = {
    Neck  = { { Name = "Buffoon's Collar", Level = 5 }, },
    -- Hands = { { Name = "Puppetry Dastanas", Level = 56 }, }
};
sets.JA_DarkManeuver_Priority = maneuvers;
sets.JA_EarthManeuver_Priority = maneuvers;
sets.JA_FireManeuver_Priority = maneuvers;
sets.JA_IceManeuver_Priority = maneuvers;
sets.JA_LightManeuver_Priority = maneuvers;
sets.JA_ThunderManeuver_Priority = maneuvers;
sets.JA_WaterManeuver_Priority = maneuvers;
sets.JA_WindManeuver_Priority = maneuvers;

sets.JA_Repair_Priority = {
    Ear1  = {
        { Name = "Guignol Earring", Level = 69 },     -- RepairRegenPot+20%
    },
    Feet  = {
        -- Wish: Lv.74 Puppetry Babouches [Removes 1 Debuff (Aug) RepairPotency+3%]
        -- { Name = "Puppetry Babouches", Level = 54 },  -- Removes 1 Debuff
    },
};

-- Goal: ACC (Multi-hits WS) & STR (Generic Mod)
sets.WS_Default_Priority = {
    Head  = {},
    Ear1 = {
        { Name = "Brutal Earring", Level = 75 },      -- DA+5 STP+1
        { Name = "Pigeon Earring", Level = 33 },      -- STR+1 ATK+2
        "remove",
    },
    Ear2 = {
        { Name = "Luminous Earring", Level = 75 },    --                 ACC+3  ATK+4
        { Name = "Outlaw's Earring", Level = 50 },    -- DEX+2 ATK+4
        "remove",
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Body = {
    },
    Hands = {
    },
    Ring1 = {
        { Name = "Strigoi Ring", Level = 75 },        -- STR+6           ATK+3
        { Name = "Toreador's Ring", Level = 57 },     --                 ACC+7
        { Name = "Ecphoria Ring", Level = 49 },       --                 ACC+4
        { Name = "Balance Ring", Level = 14 },        -- DEX+2
        "San d'Orian Ring",
    },
    Ring2 = {
        { Name = "Rajas Ring", Level = 30 },          -- STR+2~5
        { Name = "Balance Ring", Level = 14 },        -- DEX+2
    },
    Back  = {
        { Name = "Exile's Cloak", Level = 50 },       -- STR+4 ATK+3
    },
    Waist = {
        { Name = "Virtuoso Belt", Level = 54 },       -- ACC+12 ATK+4
    },
    Legs  = {

    },
    Feet  = {
        { Name = "Marine M Boots", Level = 62},       -- STR+3 DEX+3
    },
};

-- Goal: ACC (Multi-hits WS) & DEX (Mod 73%)
sets.WS_ShijinSpiral = {
    -- Ammo  = "",
    Head  = "Assailant's Visor",                      --              DEX+11 STR+5
        -- Wish: Augment to ACC+5 ATK+5 DA+2
    -- Ear1  = "",
        -- Wish: Hollow Earring [DEX+2 ACC+3]
    Ear2  = "Outlaw's Earring",                       --        ATK+4 DEX+2
    Neck  = "Peacock Charm",                          -- ACC+10
        -- Wish: Flame/Light/Fotia Gorget [WSAcc+10 WSD+10%]
    Body  = "Thurandaut Tabard",                      -- DEX+10 DA+3 STR+10
        -- Wish: High: Usukane Haramaki [DEX+8 ACC+12 (Aug) DA+3]
    Hands = "Thurandaut Gloves",                      -- ACC+6  ATK+6
    Ring1 = "Kusha's Ring",                           -- ACC+12 ATK+6        (Set w/ Lava's Ring)
    Ring2 = "Lava's Ring",                            -- ACC+12 ATK+6        (Set w/ Kusha's Ring)
    Back  = "Cuchulain's Mantle",                     -- ACC+5        DEX+4
    Waist = "Virtuoso Belt",                          -- ACC+12 ATK+4
        -- Wish: Warwolf Belt [DEX+5 STR+5] If enough ACC elsewhere?
    Legs  = "Acrobat's Breeches",                     --              DEX+2  TA+2
        -- Wish: Aug: DEX+5 ATK+5
    Feet = "Usukane Sune-Ate",                        -- ACC+7 ATK+7
}

profile.Sets = sets;
return profile;