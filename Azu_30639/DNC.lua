local profile = gFunc.LoadFile('common/miniswap.lua');

profile.Sets.Engaged_Priority = {
    Main  = {
            -- Wish: Lv.75 Polyhymnia {Oboro}
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
        { Name = "Atoyac", Level = 75 },
        { Name = "Bone Knife +1", Level = 57 },
            -- Wish: Lv.50->75 Mercurial Kris {Jailer of Prudence}
        { Name = "Mrc.Cpt. Kukri", Level = 50 },
        { Name = "Terrapin Traitor", Level = 20 },    -- OAT2 under lv.50
        "Kupo Shield",
    },
    Range = {
        -- Wish: Lv.75 Flamedancer Glaive {Brew+2 Coeurl} [CHR+5 StepACC+10 SambaDuration+15 {Aug} STR+4 DEX+4 ACC+2]
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
        { Name = "Rog. Bonnet +1", Level = 74 },      -- Haste+5  CritRate+3  EVA+10
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
        { Name = "Scorpion Harness", Level = 57 },    -- ACC+10 EVA+10
        { Name = "Raptor Jerkin", Level = 48 },
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Leather Vest +1", Level = 7 },
        "Hume Tunic",
    },
    Hands = {
        { Name = "Raptor Gloves", Level = 48 },       --                        DEX+4
        { Name = "Battle Gloves", Level = 14 },       -- ACC+3 EVA+3 STP+1
        { Name = "Battle Gloves", Level = 14 },
        { Name = "Brass Mittens", Level = 11 },
        "Dream Mittens +1",
    },
    Ring1 = {
            -- Wish: Zilant Ring [DEX+6 ACC+3] {Dyna Bubu Boss}
            -- Use: Toreador's Ring Lv.57 [ACC+7] instead of Kusha when using Rajas
        { Name = "Kusha's Ring", Level = 55 },
        { Name = "Archer's Ring", Level = 30 },
        "San d'Orian Ring",
    },
    Ring2 = {
        { Name = "Lava's Ring", Level = 55 },
            -- Wish: Lv.30~75 Rajas Ring [STR+2~5 DEX+2~5 STP+5 SB+5]
        "Provenance Ring",
    },
    Back  = {
        { Name = "Exile's Cloak", Level = 50 },
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
        { Name = "Skadi's Chausses", Level = 75 },    -- ACC+4 ATK+5 STP+7 H+2 (Wish Aug: STP+3)
        { Name = "Raptor Trousers", Level = 50 },
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2 Haste+2
        { Name = "Phl. Trousers", Level = 15 },
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Adhemar Gamashes", Level = 75 },
        { Name = "Raptor Ledelsens", Level = 48 },
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

profile.Sets.Idle_Priority = profile.DeepCopy(profile.Sets.Engaged_Priority)
profile.Sets.Idle_Priority.Head = {
    { Name = "Emperor Hairpin", Level = 50 },         -- EVA+10
    { Name = "Garrison Sallet +1", Level = 20 },      -- Regen+1 while below lv.50
    { Name = "Cmp. Eye Circlet", Level = 9 },         -- EVA+3
};
profile.Sets.Idle_Priority.Ring1 = {
        -- Wish: Merman's Ring (Coral Ring +1) [MDT-4
    { Name = "Coral Ring", Level = 70 },              -- MDT-3
    { Name = "Kusha's Ring", Level = 55 },
    { Name = "Archer's Ring", Level = 30 },
    "San d'Orian Ring",
};
profile.Sets.Idle_Priority.Ring2 = {
        -- Wish: Merman's Ring (Coral Ring +1) [MDT-4]
    { Name = "Coral Ring", Level = 70 },              -- MDT-3
    { Name = "Lava's Ring", Level = 55 },
    "Provenance Ring",
};

profile.Sets.Resting_Priority = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
};

-- Goal: Waltz Potency > CHR (caster) & VIT (target)
profile.Sets.JA_CuringWaltz_Priority = {
    Head  = {
        { Name = "Shade Tiara", Level = 25 },         -- CHR+2
    },
    Neck  = {
        { Name = "Bird Whistle", Level = 15 },        -- CHR+3
    },
    Body  = {
        { Name = "Raptor Jerkin", Level = 48 },       -- CHR+4
        { Name = "Garrison Tunica +1", Level = 20 },  -- CHR+2
    },
    Hands = {
        { Name = "Raptor Gloves", Level = 48 },       -- CHR+4
        { Name = "Garrison Gloves +1", Level = 20 },  -- VIT+2
    },
    Back  = {
        { Name = "Traveler's Mantle", Level = 28 },   -- Make sure Exile's Cloack with CHR-3 isn't equiped
    },
    Waist = {
        { Name = "Corsette +1", Level = 40 },         -- CHR+6
        { Name = "Griot Belt", Level = 28 },          -- CHR+1
    },
    Legs  = {
        { Name = "Raptor Trousers", Level = 48 },     -- VIT+4
    },
}
profile.Sets.JA_CuringWaltzII_Priority = profile.Sets.JA_CuringWaltz_Priority
profile.Sets.JA_DivineWaltz_Priority = profile.Sets.JA_CuringWaltz_Priority

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
        { Name = "Raptor Jerkin", Level = 48 },       -- DEX+4       ATK+8
        { Name = "Garrison Tunica +1", Level = 20 },  -- DEX+2
    },
    Hands = {
        { Name = "Raptor Gloves", Level = 48 },       -- DEX+4
        { Name = "Battle Gloves", Level = 48 },       --             ACC+3
    },
    Ring1 = {
        { Name = "Kusha's Ring", Level = 55 },
        "San d'Orian Ring",
    },
    Ring2 = {
        { Name = "Lava's Ring", Level = 55 },
        { Name = "Archer's Ring", Level = 30 },
    },
    Back  = {
        {Name = "Exile's Cloak", Level = 50 },        --            STR+2 ATK+3
        {Name = "Lizard Mantle", Level = 17 },
    },
    Waist  = {
        {Name = "Virtuoso Belt", Level = 54 },        --             ACC+12 ATK+4
    },
    Legs  = {
        { Name = "Velvet Slops", Level = 38 },        -- DEX+2       ATK+4
    },
    Feet  = {
        { Name = "Leaping Boots", Level = 7 },        -- DEX+3 AGI+3
    },
};

return profile;