local profile = { Aliases = {}, Bindings = {}, Sets = {} };

profile.Aliases["/off"] = "/lac disable";
profile.Aliases["/on"] = "/lac enable";
profile.Aliases["/llv"] = "/lac fwd locklv";
profile.Aliases["/lst"] = "/lac lockstyle Lockstyle";
profile.Aliases["/ltp"] = "/lac fwd locktp";

profile.Sets.Chocobo = {
    Neck = "Chocobo Whistle",
}

profile.Sets.Crafting = {
    Sub   = "Kupo Shield",
    Head  = "Midras's Helm +1",
    Body = "Carpenter's Apron",
    Neck  = "Artisan's Torque",
    Ring1 = "Craftmaster's Ring",
    Ring2 = "Artificer's Ring",
};

profile.Sets.EXP = {
    Ring1 = "Chariot Band",
};

profile.Sets.Fishing = {
    Range = "Halcyon Rod",
    Neck  = "Fisher's Torque",
    Body  = "Fsh. Tunica",
    Hands = "Fsh. Gloves",
    Ring1 = "Venture Ring",
    Legs  = "Fisherman's Hose",
    Feet  = "Fisherman's Boots",
};

profile.Sets.HELM = {
    Head  = "Lumberjack's Beret",  -- Surveyor +1 will work for all HELM
    Neck  = "Field Torque",
    Body  = "Plain Tunica",
    Hands = "Plain Gloves +1",
    Ring1 = "Venture Ring",
    Waist = "Field Rope",
    Legs  = "Plain Hose +1",
    Feet  = "Plain Boots +1",
};

profile.Sets.Provenance = {
    Ring1 = "Provenance Ring",
};

profile.Sets.Town_SandOria = {
    Body = "Kingdom Aketon",
};

profile.Sets.Warp = {
    Ring1 = "Warp Ring",
};

return profile;