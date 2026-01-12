local profile = gFunc.LoadFile('common/miniswap.lua');
local sets = {};

sets.Engaged_Default_Priority = {
    Main  = {
        { Name = "Surviver", Level = 6 },
        "Rusty Greatsword",
    },
    Sub   = {
            -- Wish: Lv.74 Gatta Strap +0/1 [STR+3/4 DEX+3/4 ATK+3/4] {Leathercraft GuildNM}
        { Name = "Mythril Grip +1", Level = 55 },     -- STR+2 VIT+2 ACC+2
        { Name = "Tigris Grip", Level = 40 },         -- STP+2 DEX+3 ATK+2
            -- Wish: Lv.20 Orcish Axegrip [HP+15 PDT-2 (Aug) DEF+4 ACC+3 Enm+2]
    },
    Ammo = {
        { Name = "Bibiki seashell", Level = 60 },     -- VIT+4
        "Happy Egg",
    },
    Head  = {
        { Name = "Wivre Mask", Level = 65 },          -- EVA+10 ACC+5 DEX+3 STR+2
        { Name = "Heroic Hairpin", Level = 30 },      -- PDT-2 H+2 DW+3
        { Name = "Brass Cap +1", Level = 11 },
        "Coven Hat",
    },
    Ear1 = {
        { Name = "Insomnia Earring", Level = 50 },
        { Name = "Cassie Earring", Level = 1 },
    },
    Ear2 = {
        { Name = "Outlaw's Earring", Level = 50 },    -- DEX+2 ATK+4
        { Name = "Dodge Earring", Level = 29 },       -- EVA+3
    },
    Neck  = {
        { Name = "Peacock Charm", Level = 33 },       -- ACC+10
        { Name = "Spike Necklace", Level = 21 },      -- STR+3 DEX+3
        { Name = "Armiger's Lace", Level = 9 },
        { Name = "Pile Chain", Level = 3 },
    },
    Body  = {
        { Name = "Brigandine +1", Level = 45 },       -- STR+3 DEX+3 AGI+3 VIT+3 HP+10 MP+10 ATK+4
        { Name = "Garrison Tunica +1", Level = 20 },
        { Name = "Scale Mail", Level = 10 },
        { Name = "Leather Vest +1", Level = 7 },
        "Tidal Talisman",
    },
    Hands = {
        { Name = "Raptor Gloves", Level = 48 },
        { Name = "Garrison Gloves +1", Level = 20 },     -- VIT+2
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
        { Name = "Raptor Trousers", Level = 48 },
        { Name = "Garrison Hose +1", Level = 20 },        -- STR+2 Haste+2
        { Name = "Lth. Trousers +1", Level = 7 },
        "Dream Trousers +1",
    },
    Feet  = {
        { Name = "Raptor Ledelsens", Level = 48 },        -- Haste+2
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

sets.WS_Default_Priority = {
    Head  = {
        { Name = "Shade Tiara", Level = 25 },         -- STR+2
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
        { Name = "Lizard Mantle +1", Level = 17 },    -- STR+1
    },
    Legs  = {
        { Name = "Garrison Hose +1", Level = 20 },    -- STR+2
    },
};

profile.Sets = sets;
return profile;