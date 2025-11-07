# MiniSwap

_MiniSwap_ is a [LuAshitacast][] engine for those allergic to Lua.  
Its simplicity comes at a cost though, there's no fancy automatic Treasure Hunter tagging or Haste calculation.

> [!IMPORTANT]
>
> 1. I mostly play on [CatsEyeXI][], there could be some incompatibilities if you are playing on a different server.
> 2. I do not play all the jobs, so it might be missing a few key things for some jobs.
> 3. Although I did not have any issue so far, it might not be the most performant code around, both for gear processing and GUI (which use imgui, probably overkill for this use case but easier to code).

Thanks to Thorny for the amazing [LuAshitacast][], and [Jyouya][] and [avogadro-war][] for publishing their own lua and providing some inspiration.

[LuAshitacast]: https://github.com/ThornyFFXI/LuAshitacast
[CatsEyeXI]: https://www.catseyexi.com/
[Jyouya]: https://github.com/Jyouya/Ashita-Stuff/tree/master/config/addons/luashitacast
[avogadro-war]: https://github.com/avogadro-war/ashita_profiles

## Getting Started

1. Copy the `common/miniswap.lua` file to your `ashita/config/addons/LuAshitacast/common/` folder.
2. In game, use `/lac newlua` to create a profile for your job.
3. Locate the newly created file, it should be under `ashita/config/addons/LuAshitacast/YourName_00000/JOB.lua` where `00000` is your character ID and `JOB` the job you were on.
4. Replace the content of the file with the following:

```lua
local profile = gFunc.LoadFile('common/miniswap.lua');

-- Add job gear sets, aliases and bindings here.

return profile;
```

## Gear Sets

There's no fancy lua function to write to swap gear. Simply declare sets with a specific name and it will be used automatically.

How to declare a set:

```lua
profile.Sets.SetName = {
    Main  = 'Lathi',
    Sub   = 'Enki Strap',
    Ammo  = 'Staunch Tathlum +1',
    Head  = 'Befouled Crown',
    Neck  = 'Loricate Torque +1',
    Ear1  = 'Hearty Earring',
    Ear2  = 'Etiolation Earring',
    Body  = 'Amalric Doublet +1',
    Hands = 'Amalric Gages +1',
    Ring1 = 'Defending Ring',
    Ring2 = 'Shneddick Ring',
    Back  = 'Moonlight Cape',
    Waist = 'Fucho-no-Obi',
    Legs  = { Name = 'Psycloth Lappas', AugPath='D' },
    Feet  = { Name = 'Merlinic Crackows', Augment = { [1] = '"Fast Cast"+7', [2] = 'MND+10' } },
};
```

Note that:

- Each slot is optional
- As shown on the `Legs` and `Feet` slots, multiple versions of augmented gears can be distinguished with `AugPath` and `Augment`.

List of expected set names:

- **Stances**

  - `Engaged_Default`
  - `Engaged_Pet_Default`, only when a pet is charmed/summoned.
  - `Engaged_Pet_NAME`, only when a pet is charmed/summoned, where `NAME` is the name of the Pet without spaces or any special characters, for example `Cait Sith` is `CaitSith`.
  - `Idle_Default`
  - `Idle_Pet_Default`, only when a pet is charmed/summoned.
  - `Idle_Pet_NAME`, only when a pet is charmed/summoned, where `NAME` is the name of the Pet without spaces or any special characters, for example `Cait Sith` is `CaitSith`.
  - `Resting_Default`

- **Job Abilities**

  - `JA_TYPE`, where `TYPE` is one of `BloodPactRage`, `BloodPactWard`, `CorsairRoll`, `QuickDraw`, `Ready`, `RuneEnchantment`.
  - `JA_NAME`, where `NAME` is the name of the Job Ability without spaces or any special characters, for example `Curing Waltz III` is `CuringWaltzIII` and `Avatar's Favor` is `AvatarsFavor`.

- **Precast**

  - `Precast_Default`
  - `Precast_TYPE`, where `TYPE` is one of `BlueMagic`, `DarkMagic`, `DivineMagic`, `ElementalMagic`, `EnfeeblingMagic`, `EnhancingMagic`, `Geomancy`, `HealingMagic`, `Ninjutsu`, `Singing`, `Summoning`.
  - `Precast_GROUP`, where group is one of:

    <details>
    <summary>see group names</summary>

    https://github.com/Azu-XI/miniswap/blob/b324d12dcb476e3c5e8ebcbee708fd51d400208b/common/miniswap.lua#L330-L881

    </details>

  - `Precast_NAME`, where `NAME` is the name of the Spell without spaces or any special characters, for example `Indi-Regen` is `IndiRegen` and `Cure IV` is `CureIV`.

- **Midcast**

  - Same as precast, but replace the `Precast_` prefix by `Midcast_`.

- **Preshot**

  - `Preshot_Default`

- **Midshot**

  - `Midshot_Default`

- **Weapon Skills**

  - `WS_Default`
  - `WS_NAME`, where `NAME` is the name of the Weapon Skill without spaces or any special characters, for example `King's Justice` is `KingsJustice` and `Tachi: Kaiten` is `TachiKaiten`.

- **Items**

  - `ITEM_NAME`, where `NAME` is the name of the Item without spaces or any special characters, for example `B.E.W. Pitaru` is `BEWPitaru`.

- **Special**

  - `Town` equipped when in town.
  - `Town_NAME`, where `NAME` is one of `Adoulin`, `Bastok`, `Jeuno`, `SandOria`, `Windurst`.

> [!TIP]
>
> Sets are cumulatives. Any slot from a previous set which isn't overwritten by a later set will remain.
>
> For example, when casting `Cure IV`, _MiniSwap_ will try to equip in this order `Midcast_Default`, `Midcast_HealingMagic`, `Midcast_Cure`, `Midcast_CureIV`.  
> So if `Midcast_Default` equips the `Chatoyant Staff` and `Crow Bracers`, and `Midcast_HealingMagic` equips the `Healer's Mitts`, then the midcast action as a whole will equip the `Chatoyant Staff` and `Healer's Mitts`.

## Modes

There isn't any modes just yet, I'm not too sure how I want it to fit with the rest.

For weapons though, you can `/lac fwd locktp on` to disable `main/sub/range/ammo` slots (minus `range` for BRD) so you can manually equip something. Use `/lac fwd locktp off` to enable those slots again.

## Aliases

On your profile, add aliases like so:

```lua
profile.Aliases["/locklv"] = "/lac fwd locklv";
```

## Bindings

On your profile, add aliases like so:

```lua
profile.Aliases["^y"] = "/poke";
```

## Shared Configuration

1. Create a `shared.lua` file in your `ashita/config/addons/LuAshitacast/YourName_00000/` folder.
2. Copy the following template into it

```lua
local profile = { Aliases = {}, Bindings = {}, Sets = {} };

-- Add shared gear sets, aliases and bindings here.

return profile;
```

## LockStyle

Define a set called `LockStyle` for automatic lock styling when switching jobs.

> [!TIP]
>
> It waits for 5 seconds before applying the lock style so it works a bit better when also changing subjob, but it's not perfect.  
> If it failed, it can be reapplied with `/lac lockstyle Lockstyle`.

## Level Sync

_MiniSwap_ can automatically equip level appropriate gear when leveling, or syncing in parties and BCNMs.

To do so, set names need to be suffixed with `_Priority` and then gear for each level needs to be defined for each slots, for example:

```lua
profile.Sets.Engaged_Default_Priority = {
    Main  = {
        { Name = "Mandau", Level = 75 },
        { Name = "Hornetneedle", Level = 48 },
        { Name = "Beestringer", Level = 7 },
        "Bronze Knife",
    },
};
```

> [!TIP]
>
> Before engaging in level synced content, or to verify that everything is setup properly, use `/lac fwd locklv 00`, where `00` is the target level.  
> Use `/lac fwd locklv` without a level to disable the lock.

## Further Customization

Want to push it further?

It's still a regular LuAshitacast profile, so you can overwrite any of the lifecycle function (see the [LuAshitacast documentation](https://thornyffxi.github.io/LuAshitacast/) for a full list). If you want to call _MiniSwap_ default function, you can do so with `profile.MiniSwap.HandleXxx`. For example:

```lua
profile.HandleDefault = function()
      -- Do something before MiniSwap
    myCustomStuff();

      -- Call MiniSwap function
    profile.MiniSwap.HandleDefault();

      -- Do something after MiniSwap
    myOtherCustomStuff();
end
```
