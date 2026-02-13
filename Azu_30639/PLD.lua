local profile = gFunc.LoadFile('common/miniswap.lua');
local sets = {};

sets.Engaged_Default_Priority = {
    Main  = {
        { Name = "Xiutleato", Level = 75 },
        { Name = "Verdun", Level = 73 },
            -- TODO: Some swords from lv.50
        { Name = "Fealty", Level = 20 },
        { Name = "Auriga Xiphos", Level = 19 },
        { Name = "Xiphos +1", Level = 7 },
        "Wax Sword +1",
    },
    Sub   = {
            -- TODO: Some shields..
        { Name = "Clipeus", Level = 19 },
        "Kupo Shield",
    },
    Ammo = {
        { Name = "Bibiki seashell", Level = 60 },     -- VIT+4
        "Happy Egg",
    },
    Head  = {
        { Name = "Ares' Mask", Level = 75 },          -- HP+2% ACC+12 ATK+12 EVA-12 H+3 STP+3
        { Name = "Hydra Salade", Level = 70 },        -- ACC+5 Enm+7
        { Name = "Wivre Mask", Level = 65 },          -- EVA+10 ACC+5 DEX+3 STR+2
        { Name = "Heroic Hairpin", Level = 30 },      -- PDT-2 H+2 DW+3
        { Name = "Emperor Hairpin", Level = 24 },
        { Name = "Brass Cap +1", Level = 11 },
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Insomnia Earring", Level = 50 },
        { Name = "Pigeon Earring", Level = 33 },      -- HP+20 MP+15 STR+1 ATK+2
        "remove",
    },
    Ear2 = {
        { Name = "Tribal Earring", Level = 20 },
        "remove",
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Armiger's Lace", Level = 9 },
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        { Name = "Brigandine +1", Level = 45 },       -- STR+3 DEX+3 AGI+3 VIT+3 HP+10 MP+10 ATK+4
        { Name = "Eisenbrust", Level = 29 },
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Scale Mail", Level = 10 },
        { Name = "Leather Vest +1", Level = 7 },
        "Tidal Talisman",
    },
    Hands = {
        { Name = "Swift Gages", Level = 75 },         -- STP+2 Haste+4 DA+2 ATK+5
        { Name = "Hydra Moufles", Level = 70 },       -- ACC+4 Enm+6
        { Name = "Raptor Gloves", Level = 48 },
        { Name = "Eisenhentzes", Level = 29 },
        { Name = "Garrison Gloves +1", Level = 20 },  -- VIT+2
        { Name = "Guerilla Gloves", Level = 13 },
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
        { Name = "Earth Mantle", Level = 40 },        --        STR+2  VIT+1
        { Name = "Nomad's Mantle", Level = 24 },      -- EVA+3  AGI+1  DW+1
        { Name = "Traveler's Mantle", Level = 12 },   -- EVA+3
        { Name = "Rabbit Mantle", Level = 4 },
    },
    Waist = {
        { Name = "Virtuoso Belt", Level = 54 },       -- ACC+12                 ATK+4
        { Name = "Griot Belt", Level = 28 },          -- HP+5 H+2
        { Name = "Lizard Belt +1", Level = 17 },      -- HP+5 DEX+2
        { Name = "Leather Belt +1", Level = 7 },      -- HP+10 AGI+1
    },
    Legs  = {
            -- Wish: Aug: ACC+8 ATK+8 
        { Name = "Ares' Flanchard", Level = 75 },     -- HP+2% STR+6 DEX+6 DA+2
        { Name = "Raptor Trousers", Level = 48 },
        { Name = "Garrison Hose +1", Level = 20 },        -- STR+2 Haste+2
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Ares' Sollerets", Level = 75 },     -- HP+2% ACC+7 ATK+7 EVA-7 STR+4 STP+3
        { Name = "Raptor Ledelsens", Level = 48 },        -- Haste+2
        { Name = "Eisenschuhs", Level = 29 },
        { Name = "Greaves", Level = 24 },
        { Name = "Leaping Boots", Level = 7 },
        "Dream Boots +1",
    },
};

sets.Idle_Default_Priority = profile.MiniSwap.DeepCopy(sets.Engaged_Default_Priority)
sets.Idle_Default_Priority.Head = {
    { Name = "Emperor Hairpin", Level = 50 },         -- EVA+10
    { Name = "Garrison Sallet +1", Level = 20 },      -- Regen+1 under lv.50
    { Name = "Brass Cap +1", Level = 11 },
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

sets.Resting_Default_Priority = {
    Hands = {
        { Name = "Garrison Gloves +1", Level = 20 },  -- HHP+2
    },
};

-- Goal: Enmity+
sets.JA_Provoke_Priority = {
    Head  = {
        { Name = "Hydra Salade", Level = 70 },        -- Enm+7
            -- Wish: Lv.1 Cache-nez [Enm+2]
    },
    Hands = {
        { Name = "Hydra Moufles", Level = 70 },       -- Enm+6
        { Name = "Gothic Gauntlets", Level = 43 },    -- Enm+2
    },
    Ring1 = {
            -- Wish: Lv.50 Myrmeleo Ring [(Aug) Enm+3]
    },
    Ring2 = {
        { Name = "Sattva Ring", Level = 30 },         -- Enm+3
    },
    Back  = {
            -- Wish: Toreador's Cape [Enm+4]
            -- Wish: Cerberus Mantle +1  [Enm+4]
        { Name = "Ram Mantle", Level = 38 },          -- Enm+2
    },
    Legs  = {
            -- Wish: Lv.70 Hydra Brayettes [Enm+6]
    },
    Feet  = {
            -- Wish: Lv.70 Hydra Sollerets [Enm+4]
            -- Wish: Lv.43 Gothic Sabatons [Enm+2] {Behemoth's Dominion - Treasure Casket}
    },
};

sets.Midcast_Flash_Priority = sets.JA_Provoke_Priority;

sets.WS_Default_Priority = {
    Head  = {
        { Name = "Shade Tiara", Level = 25 },          -- STR+2
    },
    Neck  = {
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Pile Chain", Level = 3 },
    },
    Hands = {
        { Name = "Guerilla Gloves", Level = 13 },
    },
    Ring1 = {
        "San d'Orian Ring",
    },
    Back  = {
        { Name = "Earth Mantle", Level = 40 },
        { Name = "Lizard Mantle +1", Level = 17 },    -- STR+1
    },
    Legs  = {
        { Name = "Garrison Hose +1", Level = 20 },        -- STR+2
    },
};

profile.Sets = sets;
return profile;