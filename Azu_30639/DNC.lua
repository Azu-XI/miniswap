local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Sets.LockStyle = {
    Head  = "remove",
    Body  = "Custom Gilet +1",
    Hands = "remove",
    Legs  = "Etoile's Tights",
    Feet  = "Etoile Toe Shoes +1",
};

profile.Sets.Engaged_Default_Priority = {
    Main  = {
            -- Wish: Lv.75 Polyhymnia {Oboro}
        { Name = "Atoyac", Level = 75 },
        { Name = "Gully", Level = 72 },
        { Name = "Avis", Level = 57 },
            -- Wish: Lv.50->75 Bushwhacker +1 {Yagudo Incursions}
        { Name = "Bone Knife +1", Level = 46 },
        { Name = "Mrc.Cpt. Kukri", Level = 30 },
            -- Wish: Lv.20->50 Bushwhacker {Yagudo Incursions}
        { Name = "Mercenary's Knife", Level = 20 },
        { Name = "Knife", Level = 13 },
            -- Wish: Lv.7 Jack's Knife {Ordelle Incursion}
        "Bronze Knife",
    },
    Sub  = {
            -- Wish: Lv.75 Taming Sari {Great DI NM Gensai}
            -- Wish: Lv.75 Bushwhacker +1 {Yagudo Incursions}
        { Name = "Joyeuse", Level = 70 },
        { Name = "Bone Knife +1", Level = 57 },
            -- Wish: Lv.50->75 Mercurial Kris {Jailer of Prudence}
        { Name = "Mrc.Cpt. Kukri", Level = 50 },
        { Name = "Terrapin Traitor", Level = 20 },    -- OAT2 under lv.50
        "Kupo Shield",
    },
    Range = {
        -- Wish: Lv.75 Flamedancer Glaive {Brew+2 Coeurl} [CHR+5 StepACC+10 SambaDuration+15 {Aug} STR+4 DEX+4 ACC+2]
        { Name = "War Hoop", Level = 40 },
        { Name = "Rogetsurin", Level = 15 },
    },
    Ear1 = {
        { Name = "Brutal Earring", Level = 75 },      -- DA+5 STP+1
        { Name = "Outlaw's Earring", Level = 50 },
        { Name = "Cassie Earring", Level = 1 },
    },
    Ear2 = {
        { Name = "Luminous Earring", Level = 75 },
        { Name = "Bandit's Earring", Level = 60 },
        { Name = "Insomnia Earring", Level = 50 },
        { Name = "Dodge Earring", Level = 29 },
    },
    Head  = {
        { Name = "Rawhide Mask", Level = 75 },        -- DEX+5 ACC+10 ATK+10 DA+3
        { Name = "Wivre Mask", Level = 65 },          -- ACC+5 DEX+3
        { Name = "Storm Zucchetto", Level = 50 },     -- ACC+4
        { Name = "Emperor Hairpin", Level = 24 },
        { Name = "Cmp. Eye Circlet", Level = 9 },
        "Bronze Cap",
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        { Name = "Rawhide Vest", Level = 75 },        -- DEX+10 AGI+10 ATK+10 Haste+5% Dagger+10 Sword+30 Inquartata+2
        { Name = "Scorpion Harness", Level = 57 },    -- ACC+10 EVA+10
        { Name = "Raptor Jerkin", Level = 48 },
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Leather Vest +1", Level = 7 },
        "Hume Tunic",
    },
    Hands = {
            -- Wish: Lv.75 Swift Gages [STP+2 Haste+4 (Aug) DA+2 ATK+5] {Brjota@Dragonslaying}
            -- Wish: Lv.68 Cobra Mittens [ACC+4 STP+3 (Aug) VIT+5 PDT-2% Haste+2]
        { Name = "Raptor Gloves", Level = 48 },       --                        DEX+4
        { Name = "Battle Gloves", Level = 14 },       -- ACC+3 EVA+3 STP+1
        { Name = "Battle Gloves", Level = 14 },
        { Name = "Brass Mittens", Level = 11 },
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
            -- Wish: Lv.70 Etoile Cape [DEX+5 ACC+5 EVA+5 (Aug) ATK+9]
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
        { Name = "Skadi's Chausses", Level = 75 },    -- ACC+4 ATK+5 STP+7+3 H+2
        { Name = "Raptor Trousers", Level = 50 },
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2 Haste+2
        { Name = "Phl. Trousers", Level = 15 },
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
            -- Wish: Lv.68 Cobra Leggings [ACC+4 STP+3 (Aug) STR+4 CHR+4 Haste+2]
        { Name = "Etoile Toe Shoes +1", Level = 75 }, -- ACC+5 DEX+4
        { Name = "Raptor Ledelsens", Level = 48 },
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

profile.Sets.Idle_Default_Priority = profile.MiniSwap.DeepCopy(profile.Sets.Engaged_Default_Priority)
profile.Sets.Idle_Default_Priority.Head = {
    { Name = "Rawhide Mask", Level = 75 },
    { Name = "Emperor Hairpin", Level = 50 },         -- EVA+10
    { Name = "Garrison Sallet +1", Level = 20 },      -- Regen+1 under lv.50
    { Name = "Cmp. Eye Circlet", Level = 9 },         -- EVA+3
    "Coven Hat",
};
profile.Sets.Idle_Default_Priority.Neck = {
    { Name = "Oneiros Torque", Level = 75 },          -- EVA+5 PDT-2
    table.unpack(profile.Sets.Idle_Default_Priority.Neck),
};
profile.Sets.Idle_Default_Priority.Ring1 = {
        -- Wish: Merman's Ring (Coral Ring +1) [MDT-4
    { Name = "Coral Ring", Level = 70 },              -- MDT-3
    table.unpack(profile.Sets.Idle_Default_Priority.Ring2),
};
profile.Sets.Idle_Default_Priority.Ring2 = {
        -- Wish: Merman's Ring (Coral Ring +1) [MDT-4]
    { Name = "Coral Ring", Level = 70 },              -- MDT-3
    table.unpack(profile.Sets.Idle_Default_Priority.Ring2),
};
profile.Sets.Idle_Default_Priority.Legs = {
    { Name = "Acrobat's Breeches", Level = 75 },      -- EVA+11
    table.unpack(profile.Sets.Idle_Default_Priority.Legs),
};

profile.Sets.Resting_Default_Priority = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
};

--
-- Job Abilities
--

-- Goal: Duration
local jigs = {
    Legs  = { { Name = "Etoile Tights", Level = 74 } },       -- Duration+25% (could +1 for +35%)
    Feet  = { { Name = "Dancer's Toe Shoes", Level = 56 } },  -- Duration+25% (could +1 for +35%)
};
profile.Sets.JA_ChocoboJig_Priority = jigs;
profile.Sets.JA_ChocoboJigII_Priority = jigs;
profile.Sets.JA_SpectralJig_Priority = jigs;

-- Goal: Duration
local sambas = { Head  = { { Name = "Dancer's Tiara", Level = 54 } } };  -- Duration+30s
profile.Sets.AspirSamba_Priority = sambas;
profile.Sets.AspirSambaII_Priority = sambas;
profile.Sets.DrainSambaII_Priority = sambas;
profile.Sets.DrainSambaIII_Priority = sambas;
profile.Sets.HasteSamba_Priority = sambas;
profile.Sets.JA_DrainSamba_Priority = sambas;

-- Goal: ACC
local steps = {
    Hands = {
        { Name = "Dancer's Bangles", Level = 52 },    -- StepACC+10
    },
    Feet  = {
        { Name = "Etoile Toe Shoes +1", Level = 75 }, -- StepACC+10
    },
};
profile.Sets.JA_BoxStep_Priority = steps;
profile.Sets.JA_FeatherStep_Priority = steps;
profile.Sets.JA_Quickstep_Priority = steps;
profile.Sets.JA_StutterStep_Priority = steps;

-- Goal: Waltz Potency (Max 50%) > CHR (caster) > Waltz Potency Received (Max 30%) > VIT (target)
--> HP Cured = floor( (Waltz Potency gear + Waltz Potency Received) × floor( M × (User's CHR + Target's VIT) + B ) )
--> With M as Curing/Divine 1/2/3/4 = 0.25/0.5/0.75/1.0
--> With B as Curing 1/2/3/4 = 60/130/270/450 ; Divine 1/2 = 60/280
local waltz = {
    Ear1  = {
        { Name = "Beastly Earring", Level = 72 },     -- CHR+2
    },
    Ear2  = {
        -- Wish: Roundel Earring [WaltzPot+5%] {Suzaku@Sky2.0}
    },
    Head  = {
        { Name = "Rawhide Mask", Level = 75 },        -- WaltzPot+7%
        { Name = "Dancer's Tiara", Level = 54 },      -- CHR+4
        { Name = "Shade Tiara", Level = 25 },         -- CHR+2
    },
    Neck  = {
        { Name = "Bird Whistle", Level = 15 },        -- CHR+3
    },
    Body  = {
            -- Wish: Lv.74 Dancer's Casaque +1 [WaltzPot+10% (Aug) WaltzPot+5% WaltzDelay-5]
        { Name = "Dancer's Casaque", Level = 60 },    -- WaltzPot+10%
        { Name = "Raptor Jerkin", Level = 48 },       -- CHR+4
        { Name = "Garrison Tunica +1", Level = 20 },  -- CHR+2
    },
    Hands = {
        { Name = "Raptor Gloves", Level = 48 },       -- CHR+4
        { Name = "Garrison Gloves +1", Level = 20 },  -- VIT+2
    },
    Back  = {
            -- Wish: Lv.70 Etoile Cape [CHR+5]
        { Name = "Traveler's Mantle", Level = 28 },   -- Make sure Exile's Cloack with CHR-3 isn't equiped
    },
    Waist = {
        { Name = "Corsette +1", Level = 40 },         -- CHR+6
        { Name = "Griot Belt", Level = 28 },          -- CHR+1
    },
    Legs  = {
            -- Wish: Lv.68 Cobra Leggings [(Aug) CHR+4 WaltzPot+2%]
        { Name = "Etoile Tights", Level = 74 },       -- CHR+3
        { Name = "Raptor Trousers", Level = 48 },     -- VIT+4
    },
    -- Feet  = {},
};
profile.Sets.JA_CuringWaltz_Priority = waltz;
profile.Sets.JA_CuringWaltzII_Priority = waltz;
profile.Sets.JA_CuringWaltzIII_Priority = waltz;
profile.Sets.JA_CuringWaltzIV_Priority = waltz;
profile.Sets.JA_DivineWaltz_Priority = waltz;
profile.Sets.JA_DivineWaltzII_Priority = waltz;

--
-- Weapon Skills
--

-- Goal: ACC & DEX & AGI
profile.Sets.WS_Default_Priority = {
    Head  = {
        { Name = "Emperor Hairpin", Level = 24 },     -- DEX+3 AGI+3
    },
    Neck  = {
            -- Wish: Lv.75 Love Torque [DEX+5 Dagger+7]
        { Name = "Spike Necklace", Level = 21 },      -- DEX+3       STR+3
        { Name = "Pile Chain", Level = 3 },           --             ACC+1
    },
    Body = {
        { Name = "Rawhide Vest", Level = 75 },        -- DEX+10 AGI+10 ATK+10 Dagger+10 Sword+30
        { Name = "Scorpion Harness", Level = 57 },    -- ACC+10 EVA+10
        { Name = "Raptor Jerkin", Level = 48 },       -- DEX+4       ATK+8
        { Name = "Garrison Tunica +1", Level = 20 },  -- DEX+2
    },
    Hands = {
        { Name = "Raptor Gloves", Level = 48 },       -- DEX+4
        { Name = "Battle Gloves", Level = 48 },       --             ACC+3
    },
    Ring1 = {
        { Name = "Toreador's Ring", Level = 57 },     -- ACC+7
        { Name = "Ecphoria Ring", Level = 49 },       -- ACC+4 STP+1
        { Name = "Balance Ring", Level = 14 },        -- DEX+2
        "San d'Orian Ring",
    },
    Ring2 = {
        { Name = "Rajas Ring", Level = 30 },          -- STR+2~5 DEX+2~5
        { Name = "Balance Ring", Level = 14 },        -- DEX+2
        "Provenance Ring",
    },
    Back  = {
        {Name = "Cuchulain's Mantle", Level = 74 },   -- DEX+4       ACC+4
        {Name = "Exile's Cloak", Level = 50 },        --                     ATK+3  STR+4
        {Name = "Lizard Mantle", Level = 17 },        -- STR+1
    },
    Waist  = {
        {Name = "Virtuoso Belt", Level = 54 },        --             ACC+12  ATK+4
        {Name = "Lizard Belt", Level = 17 },          -- DEX+2
    },
    Legs  = {
        { Name = "Velvet Slops", Level = 38 },        -- DEX+2       ATK+4
    },
    Feet  = {
        { Name = "Leaping Boots", Level = 7 },        -- DEX+3 AGI+3
    },
};

-- Goal: fTP & ACC & AGI & DA & TA & CRIT
profile.Sets.WS_Exenterator = {
    Head  = "Raptor Helm",                            -- AGI+4          ATK+4
    Ear2  = "Luminous Earring",                       --        ACC+3   ATK+4
    Ear2  = "Brutal Earring",                         --                        DA+1
    Neck  = "Soil Gorget",                            -- fTP+0.1
    Body  = "Rawhide Vest",                           -- AGI+10 ATK+10 Dagger+10 Sword+30
    Hands = "Dancer's Bangles",                       -- AGI+2
        -- Wish: Swift Gages [AGI+8 (Aug) DA+2 ATK+5] {Brjota@Dragonslaying}
    Ring1 = "Kusha's Ring",                           --        ACC+6   ATK+3 (set with Lava's Ring)
    Ring2 = "Lava's Ring",                            --        ACC+6   ATK+3 (set with Kusha's Ring)
    Back  = "Cuchulain's Mantle",                     --        DEX+4              ACC+4  STR+4
    Waist = "Virtuoso Belt",                          --        ACC+12  ATK+4
    Legs  = "Acrobat's Breeches",                     -- AGI+8  DEX+2  TA+2
    Feet  = "Raptor Ledelsens",                       -- AGI+4
};

return profile;