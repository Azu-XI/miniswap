local aliases = {
    ["/off"] = "/lac disable",
    ["/on"] = "/lac enable",
    ["/llv"] = "/lac fwd locklv",
    ["/lst"] = "/lac lockstyle Lockstyle",
    ["/ltp"] = "/lac fwd locktp",
};

local bindings = {};

local sets = {};

sets.Chocobo = {
    Neck = "Chocobo Whistle",
}

sets.Crafting = {
    Main  = "Debahocho +1",
    Sub   = "Kupo Shield",
    Head  = "Midras's Helm +1",
    Body  = "Carpenter's Apron",
    Neck  = "Artisan's Torque",
    Ring1 = "Craftmaster's Ring",
    Ring2 = "Artificer's Ring",
    Back  = "Bonze Cape",
};

sets.EXP = {
    Ring1 = "Chariot Band",
};

sets.Fishing = {
    Range = "Halcyon Rod",
    Neck  = "Fisher's Torque",
    Body  = "Fsh. Tunica",
    Hands = "Fsh. Gloves",
    Ring1 = "Venture Ring",
    Legs  = "Fisherman's Hose",
    Feet  = "Fisherman's Boots",
};

sets.HELM = {
    Head  = "Lumberjack's Beret",  -- Surveyor +1 will work for all HELM
    Neck  = "Field Torque",
    Body  = "Plain Tunica",
    Hands = "Plain Gloves +1",
    Ring1 = "Venture Ring",
    Waist = "Field Rope",
    Legs  = "Plain Hose +1",
    Feet  = "Plain Boots +1",
};

-- Default low level lockstyle for jobs that don't define one.
sets.LockStyle = {
    Head  = "remove",
    Body  = "Rambler's Cloak",
    Hands = "Black Mitts",
    Legs  = "Lth. Trousers +1",
    Feet  = "Leaping Boots",
};

sets.Midcast_Stoneskin_Priority = {
    Neck  = {
        { Name = "Stone Gorget", Level = 39 },        -- StoneskinAbsorbHP+30
    }
};

sets.Provenance = {
    Ring2 = "Provenance Ring",
};

sets.Town_SandOria = {
    Body = "Kingdom Aketon",
};

sets.Warp = {
    Ring1 = "Warp Ring",
};

local profile = { Aliases = aliases, Bindings = bindings, Sets = sets };
return profile;