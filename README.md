FNAIFY(1) - General Commands Manual

# NAME

**fnaify** - run FNA/XNA games on OpenBSD

# SYNOPSIS

**fnaify**
\[**-i**&nbsp;|&nbsp;**-y**]
\[**-hnsv**]
\[**-c**&nbsp;*configfile*]
\[**-D**&nbsp;*depdir*]
\[**-d**&nbsp;*gamedir*]
\[**-f**&nbsp;*frameworkfile*&nbsp;|&nbsp;**-F**&nbsp;*frameworkversion*]
\[**-m**&nbsp;*monopath*]
\[*userflags*]

# DESCRIPTION

**fnaify**
runs games based on the FNA engine with OpenBSD-native
libraries and its
mono(1)
runtime.

As of version 2.0,
**fnaify**
has been extended to attempt configuring XNA games as well.
**fnaify**
can be run in 3 basic modes regarding the addition of missing libraries:
restrictive
(default)
, interactive, and permissive.

As of version 3.0,
**fnaify**
unifies both setup and launch of supported games in one command.

All games require additional libraries from ports, like SDL2. Some of
them can be found in the fnaify-extralibs package, like libatomstb or
libfmod\_SDL.

The arguments are as follows:

**-i** | **-y**

> The mode determines how
> **fnaify**
> handles situations where compatibility problems are identified that can
> be addressed with drop-in DLL replacements, or where an option needs to
> be selected.
> With
> **-i**,
> **fnaify**
> runs in interactive mode, meaning the user will be prompted in every
> case.
> With
> **-y**,
> **fnaify**
> runs in permissive mode
> (**-y**
> for
> "yes"
> to all)
> .
> This means that any suggested drop-in DLLs will be installed,
> and if different options are possible (like picking among several .exe
> files for the launch script), the first one will be selected
> automatically.
> If neither
> **-i**
> nor
> **-y**
> is specified,
> **fnaify**
> runs in restrictive mode, that is no drop-in DLLs will be installed.

**-c** *configfile*

> Optional. Use
> *configfile*
> for the configuration of
> mono(1).
> This sets up dllmap/dllentry settings to use the correct libraries. See
> mono-config(5)
> for details. If this option is omitted,
> **fnaify**
> looks first for
> *~/.config/fnaify/fnaify.dllmap.config*
> and then for
> */usr/local/share/fnaify/fnaify.dllmap.config*.
> If neither one is found,
> **fnaify**
> creates
> *~/.config/fnaify/fnaify.dllmap.config*
> with default settings.

**-D** *depdir*

> Add
> *depdir*
> to the directories to search for native library dependencies.
> A directory specified this way will be searched
> *before*
> the default locations
> (*/usr/local/lib* etc.).

**-d** *gamedir*

> Path to the game's directory
> (defaults to the current working directory).

**-F** *frameworkversion*

> Choose a specific framework version to use.

**-f** *frameworkfile*

> Framework file to use. Typically
> *FNA.dll*
> or
> *MonoGame.Framework.dll*.
> By default will automatically identify the bundled file in the
> game's directory.

**-h**

> Prints help text.

**-m** *monopath*

> Add
> *monopath*
> to the directories the
> mono(1)
> runtime will search for DLLs.

**-n**

> Skip checks for library dependencies.

**-s**

> Force (re-)running setup.

**-V**

> Display version of
> **fnaify**.

**-v**

> Verbose mode.

*userflags*

> Optional.
> Flags that are passed to the game as arguments

# SUPPORTED GAMES

Games marked with \[!] may have errors or other significant limitations.

The Adventures of Shuggy  
Akane the Kunoichi  
Amazing Princess Sarah \[!]  
Apotheon  
Apple Jack 1&2  
Atom Zombie Smasher  
A Virus Named TOM \[!]  
Before the Echo \[!]  
Bird Assassin  
Bleed  
Bleed 2  
Blossom Tales II: The Minotaur Prince  
Breath of Death VII  
Brushwood Buddies  
Camera Obscura  
Capsized  
Capsule Force  
Celeste (no audio)  
Chaos Heart \[!]  
Charlie Murder  
Chasm  
CometStriker  
Cryptark  
Crystal Project  
Cthulhu Saves the World  
Curse of the Crescent Isle DX  
Dad Quest  
Dead Pixels \[!]  
Dead Pixels II (Early Access)  
Diehard Dungeon  
The Dishwasher: Vampire Smile  
Draw a Stickman: EPIC  
Dust: An Elysian Tail  
DwarfCorp  
Eagle Island \[!]  
Eliza  
Escape Goat  
Escape Goat 2  
EXAPUNKS  
FEZ \[!]  
Fist Puncher  
Flinthook  
Flotilla  
Gateways  
Glitchangels  
Grand Class Melee 2 \[!]  
Growing Pains  
HackNet  
Hidden in Plain Sight  
Hive  
Hyphen  
Jon Shafer's At the Gates  
LaserCat  
Last Call BBS  
Little Racers STREET  
Mercenary Kings  
Miasma: Citizens of Free Thought  
Miasma 2: Freedom Uprising \[!]  
MidBoss  
Mobius Front '83 \[!]  
Molek-Syntez  
Mount Your Friends  
NeuroVoider \[!]  
Ninja Warrior  
One Finger Death Punch  
Opus Magnum  
Overdriven Reloaded  
Owlboy  
Paladin  
Penny Arcade's On the Rain-Slick Precipice of Darkness 3  
Penny Arcade's On the Rain-Slick Precipice of Darkness 4  
Phoenix Force \[!]  
PlanetFriend  
Press X to Not Die  
Rex Rocket  
Rogue Legacy  
Ruggnar  
Salt and Sanctuary  
Session Seven  
Shenzhen I/O  
Shipwreck \[!]  
Signs of Life  
Skulls of the Shogun  
Soulcaster 1 & 2  
SpaceChem  
SpeedRunners  
Stardew Valley \[!]  
Steel Assault  
Sumico  
Super Amazing Wagon Adventure  
Super Bernie World  
Super Blood Hockey  
Super Rad Raygun  
Sword of the Stars: The Pit \[!]  
Terraria  
Timespinner  
TowerFall: Ascension  
Ultra Hat Dimension  
Unexplored  
Unholy Heights  
The Useful Dead  
Weapon of Choice \[!]  
Wizorb \[!]  
Wyv and Keep

# FILES

*/usr/local/share/fnaify/fnaify.dllmap.config*

> Default configuration file to map DLLs to native libraries.

*~/.config/fnaify/fnaify.dllmap.config*

> User directory configuration file. Takes precedence if it exists.
> Make sure to keep it up-to-date!

# EXIT STATUS

**fnaify**
returns 1 if an error occurred, otherwise 0.

# EXAMPLES

Run in permissive mode, suitable to set up most supported games
automatically.

	$ fnaify -y -d path/to/game/directory

Run in interactive mode.
**fnaify**
will prompt the user if any additional DLLs are recommended, or if a
file needs to be selected for the launch script.

	$ fnaify -i

# SEE ALSO

mono(1),
mono-config(5)

# HISTORY

The
**fnaify**
utility was originally created in December 2017 by
Thomas Frohwein &lt;[thfr@openbsd.org](mailto:thfr@openbsd.org)&gt;.

# RELEASE HISTORY

3\.1

> Stop removing Steamworks.NET.dll. Instead, rely on other lower level
> native libraries (CSteamworks, libsteam\_api). Add flag
> **-n**
> to skip library checks.

3\.0

> Stop creating launch script. Instead use fnaify for both
> setup and launch.
> Support for several Zachtronics games. Add libstubborn use to dllmap.
> Symlinking for MonoGame, e.g. NeuroVoider.
> Preferential use of installed FNA.dll over bundled one.

2\.2

> Fix config for mono 6. Add support for libcestub.

2\.1

> Support for additional XNA games. Add MONO\_FORCE\_COMPAT quirk.

2\.0

> Add support for XNA games.
> Introduce interactivity flags
> **-i** | **-y**
> to facilitate adding in needed assemblies/libraries.

1\.3

> Add prompt to download and replace
> *FNA.dll*
> if incompatible version is found.
> Detect steamstubs directory and use Steamworks stubs if present.

1\.2

> FreeBSD portability fixes, account for more special cases (MidBoss,
> Adventures of Shuggy, Atom Zombie Smasher), add directory path to plug
> in additional libraries.

1\.1

> Fix bug selecting .exe by separating input variables.

1\.0

> Initial release.

# AUTHORS

Thomas Frohwein &lt;[thfr@openbsd.org](mailto:thfr@openbsd.org)&gt;
Mariusz Zaborski

OpenBSD 7.2 - September 4, 2022
