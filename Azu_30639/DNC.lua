local profile = gFunc.LoadFile('common/miniswap.lua');
local sets = {};

sets.LockStyle = {
    Main  = "Atoyac",
    Sub   = "Mercurial Kris",
    Head  = "Dancer's Tiara",
    Body  = "Freya's Jerkin",
    Hands = "Switft Gages",
    Legs  = "Sipahi Zerehs",
    -- Legs  = "Barone Cosciales", ???
    -- Legs  = "Pahluwan Seraweels", ???
    Feet  = "Suzaku's Sune-Ate",
    -- Feet  = "Barone Gambieras", ???
    -- Feet  = "Pahluwan Crackows", ???
};

sets.Engaged_Default_Priority = {
    Main  = {
        { Name = "Polyhymnia", Level = 75 },
        { Name = "Gully", Level = 72 },
        { Name = "Avis", Level = 57 },
            -- Wish: Lv.50->75 Bushwhacker +1 {Yagudo Incursions}
        -- { Name = "Bone Knife +1", Level = 46 },
        -- { Name = "Mrc.Cpt. Kukri", Level = 30 },
        -- { Name = "Mercenary's Knife", Level = 20 },
        { Name = "Bushwhacker", Level = 20 },
        { Name = "Knife +1", Level = 13 },
            -- Wish: Lv.7 Jack's Knife {Ordelle Incursion}
        "Cat Baghnakhs +1",
    },
    Sub  = {
            -- Wish: Lv.75 Taming Sari {Great DI NM Gensai}
        { Name = "Mercurial Kris", Level = 50 },      -- OAT2~3
        { Name = "Terrapin Traitor", Level = 20 },    -- OAT2 under lv.50
        { Name = "Kupo Shield", Level = 7 },
    },
    Range = {
            -- Wish: Aug max for added: STR+1 DEX+1 ACC+2
        { Name = "Flamedancer Glaive", Level = 75 },  -- CHR+5 STR+3 DEX+3 StepACC+10 SambaDuration+15
        { Name = "War Hoop", Level = 40 },
        { Name = "Rogetsurin", Level = 15 },
    },
    Ammo  = {
        { Name = "remove", Level = 15 },
        "Happy Egg",
    },
    Head  = {
        { Name = "Rawhide Mask", Level = 75 },        -- DEX+5 ACC+10 ATK+10 DA+3
        { Name = "Wivre Mask", Level = 65 },          -- EVA+10 ACC+5 DEX+3 STR+2
        { Name = "Heroic Hairpin", Level = 30 },      -- PDT-2 H+2 DW+3
        { Name = "Cmp. Eye Circlet", Level = 9 },     -- EVA+5
        "Bronze Cap",
    },
    Ear1 = {
        { Name = "Suppanomimi", Level = 72 },         -- DW+5 Sword+5
        { Name = "Outlaw's Earring", Level = 50 },
        { Name = "Cassie Earring", Level = 1 },
    },
    Ear2 = {
        { Name = "Brutal Earring", Level = 75 },      -- DA+5 STP+1
        { Name = "Pigeon Earring", Level = 33 },      -- HP+20 MP+15 STR+1 ATK+2
        { Name = "Tribal Earring", Level = 20 },
        "remove"
    },
    Neck  = {
        { Name = "Love Torque", Level = 73 },         -- DaggerSkill+7
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        { Name = "Rawhide Vest", Level = 75 },        -- DEX+10 AGI+10 ATK+10 Haste+5% Dagger+10 Sword+30 Inquartata+2
        { Name = "Scorpion Harness", Level = 57 },    -- ACC+10 EVA+10
        { Name = "Brigandine +1", Level = 45 },       -- STR+3 DEX+3 AGI+3 VIT+3 HP+10 MP+10 ATK+4
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Leather Vest +1", Level = 7 },
        "Tidal Talisman",
    },
    Hands = {
        { Name = "Swift Gages", Level = 75 },         -- STP+2 Haste+4 DA+2 ATK+5
            -- Wish: Lv.68 Cobra Mittens [ACC+4 STP+3 (Aug) VIT+5 PDT-2% Haste+2]
        { Name = "Dino Gloves", Level = 48 },         --                        DEX+4
        { Name = "Battle Gloves", Level = 14 },       -- ACC+3 EVA+3 STP+1
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
        { Name = "Etoile Cape", Level = 70 },         -- DEX+5         ATK+9  ACC+5  EVA+5
        { Name = "Exile's Cloak", Level = 50 },       --        STR+4  ATK+3
        { Name = "Nomad's Mantle", Level = 24 },      -- EVA+3  AGI+1  DW+1
        { Name = "Traveler's Mantle", Level = 12 },   -- EVA+3
        { Name = "Rabbit Mantle", Level = 4 },
    },
    Waist = {
        { Name = "Oneiros Cest", Level = 75 },        -- ACC+9  STP+3        H+3
        { Name = "Virtuoso Belt", Level = 54 },       -- ACC+12                 ATK+4
        { Name = "Griot Belt", Level = 28 },
        { Name = "Lizard Belt +1", Level = 17 },      -- HP+5 DEX+2
        { Name = "Leather Belt +1", Level = 7 },      -- HP+10 AGI+1
    },
    Legs  = {
        { Name = "Skadi's Chausses", Level = 75 },    -- ACC+4 ATK+5 STP+7+3 H+2
        { Name = "Acrobat's Breeches", Level = 70 },  --                     H+2 TA+2 EVA+11
        { Name = "Dino Trousers", Level = 50 },       -- ACC+5
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2 H+2
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
            -- Wish: Lv.68 Cobra Leggings [ACC+4 STP+3 (Aug) STR+4 CHR+4 Haste+2]
        { Name = "Etoile Toe Shoes +1", Level = 75 }, -- STR+7 DEX+4 ATK+12 ACC+5
        { Name = "Dino Ledelsens", Level = 48 },
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

sets.Idle_Default_Priority = profile.MiniSwap.DeepCopy(sets.Engaged_Default_Priority)
sets.Idle_Default_Priority.Head = {
    { Name = "Rawhide Mask", Level = 75 },
    { Name = "Wivre Mask", Level = 65 },              -- EVA+10
    { Name = "Emperor Hairpin", Level = 50 },         -- EVA+10
    { Name = "Garrison Sallet +1", Level = 20 },      -- Regen+1 under lv.50
    { Name = "Cmp. Eye Circlet", Level = 9 },         -- EVA+5         -- EVA+3
    "Coven Hat",
};
sets.Idle_Default_Priority.Neck = {
    { Name = "Oneiros Torque", Level = 75 },          -- EVA+5 PDT-2
    table.unpack(sets.Idle_Default_Priority.Neck),
};
sets.Idle_Default_Priority.Ring1 = {
    { Name = "Defending Ring", Level = 70 },      -- DT-10
    table.unpack(sets.Idle_Default_Priority.Ring1),
};
sets.Idle_Default_Priority.Ring2 = {
        -- Wish: Merman's Ring (Coral Ring +1) [MDT-4]
    { Name = "Coral Ring", Level = 70 },              -- MDT-3
    table.unpack(sets.Idle_Default_Priority.Ring2),
};
sets.Idle_Default_Priority.Legs = {
    { Name = "Acrobat's Breeches", Level = 75 },      -- EVA+11
    table.unpack(sets.Idle_Default_Priority.Legs),
};
sets.Idle_Default_Priority.Feet = {
    { Name = "Skadi's Jambeaux", Level = 75 },        -- MVT+19
    table.unpack(sets.Idle_Default_Priority.Feet),
};

sets.Resting_Default_Priority = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
};

-- Goal: RACC, RATK, STP, Crit, Recycle, Etc
sets.Midshot_Default = {
    Ring1 = {
            -- Wish: Merman's Ring (Coral Ring +1) [RACC+10]
        { Name = "Coral Ring", Level = 70 },          -- RACC+9
    },
    Ring2 = {
            -- Wish: Merman's Ring (Coral Ring +1) [RACC+10]
        { Name = "Coral Ring", Level = 70 },          -- RACC+9
    },
    Legs  = {
        { Name = "Skadi's Chausses", Level = 75 },    -- RACC+4 RATK+5 STP+7 (Wish Aug: STP+3)
    },
    Feet  = {
        { Name = "Skadi's Jambeaux", Level = 75 },    -- RACC+5
    }
};

--
-- Job Abilities
--

-- Goal: Duration
local jigs = {
    Legs  = { { Name = "Etoile Tights", Level = 74 } },       -- Duration+25%
    Feet  = { { Name = "Dancer's Toe Shoes", Level = 56 } },  -- Duration+25%
};
sets.JA_ChocoboJig_Priority = jigs;
sets.JA_ChocoboJigII_Priority = jigs;
sets.JA_SpectralJig_Priority = jigs;

-- Goal: Duration
local sambas = { Head  = { { Name = "Dancer's Tiara", Level = 54 } } };  -- Duration+30s
sets.AspirSamba_Priority = sambas;
sets.AspirSambaII_Priority = sambas;
sets.DrainSambaII_Priority = sambas;
sets.DrainSambaIII_Priority = sambas;
sets.HasteSamba_Priority = sambas;
sets.JA_DrainSamba_Priority = sambas;

-- Goal: ACC ; MaxFinishingMove+
local steps = {
    Head  = {
        { Name = "Rawhide Mask", Level = 75 },        -- ACC+10
        { Name = "Wivre Mask", Level = 65 },          -- ACC+5
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Pile Chain", Level = 3 },           -- ACC+1
    },
    Body  = {
        { Name = "Scorpion Harness", Level = 57 },    -- ACC+10
    },
    Hands = {
        { Name = "Dancer's Bangles", Level = 52 },    -- StepACC+10
    },
    Ring1 = {
        { Name = "Toreador's Ring", Level = 57 },     -- ACC+7
        { Name = "Ecphoria Ring", Level = 49 },       -- ACC+4
    },
    Back  = {
        { Name = "Cuchulain's Mantle", Level = 74 },  -- ACC+4
    },
    Waist = {
        { Name = "Virtuoso Belt", Level = 54 },       -- ACC+12 ATK+4
    },
    Legs  = {
        { Name = "Skadi's Chausses", Level = 75 },    -- ACC+4
        { Name = "Dino Trousers", Level = 50 },       -- ACC+5
    },
    Feet  = {
        { Name = "Rawhide Boots", Level = 75 },       -- MaxFinishingMove+1
    },
};
sets.JA_BoxStep_Priority = steps;
sets.JA_FeatherStep_Priority = steps;
sets.JA_Quickstep_Priority = steps;
sets.JA_StutterStep_Priority = steps;

sets.JA_NoFootRise_Priority = {
    Feet  = {
        { Name = "Rawhide Boots", Level = 75 },       -- MaxFinishingMove+1
    },
};

-- Goal: Waltz Potency (Max 50%) > CHR (caster) > Waltz Potency Received (Max 30%) > VIT (target)
--> HP Cured = floor( (Waltz Potency gear + Waltz Potency Received) × floor( M × (User's CHR + Target's VIT) + B ) )
--> With M as Curing/Divine 1/2/3/4 = 0.25/0.5/0.75/1.0
--> With B as Curing 1/2/3/4 = 60/130/270/450 ; Divine 1/2 = 60/280
local waltz = {
    Head  = {
        { Name = "Rawhide Mask", Level = 75 },        -- WaltzPot+7%
        { Name = "Dancer's Tiara", Level = 54 },      -- CHR+4
        { Name = "Shade Tiara", Level = 25 },         -- CHR+2
    },
    Ear1  = {
        { Name = "Beastly Earring", Level = 72 },     -- CHR+2
    },
    Ear2  = {
        { Name = "Roundel Earring", Level = 73 },     -- WaltzPot+5%
    },
    Neck  = {
            -- Wish: Temp. Torque [CHR+5]
        { Name = "Bird Whistle", Level = 15 },        -- CHR+3
    },
    Body  = {
        { Name = "Dnc. Casaque +1", Level = 74 },    -- WaltzPot+10+5%  WaltzDelay-5
            -- Wish: Redo: { Name = "Dancer's Casaque", Level = 60 },    -- WaltzPot+10%
        { Name = "Garrison Tunica +1", Level = 20 },  -- CHR+2
    },
    Hands = {
            -- Wish: Lv.75 Apex Kote [(Aug) WaltzPot+5%] {Stronghold}
        { Name = "Dino Gloves", Level = 48 },         -- CHR+4
        { Name = "Garrison Gloves +1", Level = 20 },  -- VIT+2
    },
    Ring1 = {
            -- Wish: Lv.75 Carbuncle Ring +1 [CHR+6/8] {Goldsmithing Guild NM}
        { Name = "Veela Ring", Level = 75 },          -- CHR+6
    },
    Ring2 = {
            -- Wish: Lv.75 Veela Ring [CHR+6 Enm-2] {Cirrate Christelle@Dynamis Valkurm}
        { Name = "Light Ring", Level = 74 },          -- CHR+5
    },
    Back  = {
        { Name = "Etoile Cape", Level = 70 },         -- CHR+5
        { Name = "Nomad's Mantle", Level = 50 },      -- Make sure Exile's Cloack with CHR-3 isn't equiped
    },
    Waist = {
        { Name = "Corsette +1", Level = 40 },         -- CHR+6
        { Name = "Griot Belt", Level = 28 },          -- CHR+1
    },
    Legs  = {
        { Name = "Dancer's Tights", Level = 74 },     -- CHR+5
        { Name = "Dino Trousers", Level = 48 },       -- VIT+4
    },
    Feet  = {
            -- Wish: Lv.68 Cobra Leggings [(Aug) CHR+4 WaltzPot+2%] {Campaign}
    },
};
sets.JA_CuringWaltz_Priority = waltz;
sets.JA_CuringWaltzII_Priority = waltz;
sets.JA_CuringWaltzIII_Priority = waltz;
sets.JA_CuringWaltzIV_Priority = waltz;
sets.JA_DivineWaltz_Priority = waltz;
sets.JA_DivineWaltzII_Priority = waltz;

-- Goal: MACC
sets.JA_ViolentFlourish_Priority = {
    Body  = {
        { Name = "Etoile Casaque", Level = 75 },      -- Enhances "Violent Flourish" effect
    },
    Waist = {
        { Name = "Salire Belt", Level = 75 },         -- MACC+4
    },
};

--
-- Weapon Skills
--

-- Goal: ACC & DEX & AGI
sets.WS_Default_Priority = {
    Head  = {
        { Name = "Assailant's Visor", Level = 70 },   -- DEX+11                         STR+5
        { Name = "Emperor Hairpin", Level = 24 },     -- DEX+3   AGI+3
    },
    Ear1 = {
        { Name = "Luminous Earring", Level = 75 },    --                 ACC+3  ATK+4
        { Name = "Outlaw's Earring", Level = 50 },    -- DEX+2
    },
    Ear2 = {
        { Name = "Brutal Earring", Level = 75 },      --                                           DA+5
    },
    Neck  = {
        { Name = "Love Torque", Level = 73 },         -- DEX+5 DaggerSkill+7
        { Name = "Spike Necklace", Level = 21 },      -- DEX+3                           STR+3
        { Name = "Pile Chain", Level = 3 },           --                 ACC+1
    },
    Body = {
        { Name = "Rawhide Vest", Level = 75 },        -- DEX+10  AGI+10          ATK+10  Dagger+10  Sword+30
        { Name = "Scorpion Harness", Level = 57 },    --                 ACC+10
        { Name = "Brigandine +1", Level = 45 },       -- DEX+3   AGI+3
        { Name = "Garrison Tunica +1", Level = 20 },  -- DEX+2
    },
    Hands = {
        { Name = "Swift Gages", Level = 75 },         -- DEX+5   AGI+8           ATK+5              DA+2      
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
        "Provenance Ring",
    },
    Back  = {
        {Name = "Cuchulain's Mantle", Level = 74 },   -- DEX+4           ACC+4
        {Name = "Exile's Cloak", Level = 50 },        --                         ATK+3  STR+4
--STORED{Name = "Lizard Mantle +1", Level = 17 },     -- STR+1
    },
    Waist = {
        {Name = "Fatality Belt", Level = 75 },        -- DEX+4           ACC+4
        {Name = "Virtuoso Belt", Level = 54 },        --                 ACC+12  ATK+4
        {Name = "Lizard Belt +1", Level = 17 },       -- DEX+2
    },
    Legs  = {
        { Name = "Dancer's Tights +1", Level = 74 },  -- DEX+11  STR+11 ACC+5   ATK+5
    },
    Feet  = {
        { Name = "Etoile Toe Shoes +1", Level = 75 }, -- DEX+4   STR+7  ACC+5   ATK+12          ConserveTP+10
        { Name = "Leaping Boots", Level = 7 },        -- DEX+3 AGI+3
    },
};

-- Goal: fTP & ACC & AGI & DA & TA & CRIT
sets.WS_Exenterator = {
    -- Head  = "Maat's Cap",
    Ear1  = "Luminous Earring",                       --        ACC+3   ATK+4
    Ear2  = "Brutal Earring",                         --                        DA+1
    Neck  = "Soil Gorget",                            -- fTP+0.1
    Body  = "Rawhide Vest",                           -- AGI+10         ATK+10        Dagger+10 Sword+30
    Hands = "Swift Gages",                            -- AGI+8          ATK+5   DA+2
    Ring1 = "Kusha's Ring",                           --        ACC+6   ATK+3 (set with Lava's Ring)
    Ring2 = "Lava's Ring",                            --        ACC+6   ATK+3 (set with Kusha's Ring)
    Back  = "Cuchulain's Mantle",                     --        ACC+4                 DEX+4 STR+4
    Waist = "Virtuoso Belt",                          --        ACC+12  ATK+4
    Legs  = "Acrobat's Breeches",                     -- AGI+8                   TA+2 DEX+2
    Feet  = "Etoile Toe Shoes +1",                    --        ACC+5   ATK+12                    ConserveTP+10
};

-- Goal: fTP & ACC & DEX & STR & DA & TA & CRIT
sets.WS_PyrrhicKleos = {
    Head  = "Assailant's Visor",                      -- DEX+11  STR+5
        -- Wish: Aug: ATK+5 ACC+5 DA+2
    Ear1  = "Luminous Earring",                       --                ACC+3   ATK+4
    Ear2  = "Brutal Earring",                         --                                DA+1
    Neck  = "Soil Gorget",                            -- fTP+0.1
    Body  = "Rawhide Vest",                           -- DEX+10                 ATK+10         Dagger+10
    Hands = "Swift Gages",                            -- DEX+5                  ATK+5   DA+2
    Ring1 = "Zilant Ring",                            -- DEX+6          ACC+3
    Ring2 = "Rajas Ring",                             -- DEX+5   STR+5
    Back  = "Etoile Cape",                            -- DEX+5          ACC+5   ATK+9          SCDmg+3
    Waist = "Virtuoso Belt",                          --                ACC+12  ATK+4
        -- Wish: Warwolf Belt? STR+5 DEX+5
        -- Wish: Warwolf Belt+1? STR+6 DEX+6 ATK+10
    Legs  = "Dancer's Tights +1",                     -- DEX+11  STR+11 ACC+5   ATK+5
    Feet  = "Etoile Toe Shoes +1",                    -- DEX+4   STR+7  ACC+5   ATK+12          ConserveTP+10
};

profile.Sets = sets;
return profile;