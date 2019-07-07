fnaify 2.0-beta
===============

created 2017-12-27 by Thomas Frohwein (thfr)
FreeBSD fixes 2018 by Mariusz Zaborski (oshogbo@)

Script to get FNA-based games ready to run on OpenBSD

FNA is a reimplementation of the Microsoft XNA Game Studio 4.0 Refresh
libraries. Thanks to the great work by Ethan Lee (flibitijibibo) games
using FNA are highly portable and can even run on OpenBSD. 
Please refer to https://fna-xna.github.io/ for more information about
FNA.

Support for XNA games was added in June 2019 by using FNA and its XNA ABI
bridge.

Requirements:
-------------

- SDL_GetPlatform to recognize OS. OpenBSD's SDL2 upgrade to 2.0.7
  achieves this by returning "Linux" until FNA patches to recognize
  *BSD platforms have been rolled out.
  You can check with [sdl2plat](https://github.com/thfrwn/sdl2plat)
  which platform is returned by SDL_GetPlatform.
- mono (can be obtained via packages)
- game-specific libraries, like theoraplay, mojoshader, ... fnaify
  should abort and tell you which libraries need to be installed if
  some of them can't be found.
- XNA games and games using FNA more recent than October 2018 need
  [FAudio](https://github.com/FNA-XNA/FAudio).

Usage:
------

`fnaify [-vh] [-d <dependency dirs>] [<gamedir>]`

`-d`:	replace directories for finding dependencies
	NOTE: separate multiple entries with ':' (default:
	/usr/local/share/fnaify-libs:/usr/local/lib:/usr/X11R6/lib)
`-m`:	add directories to MONO_PATH (automatically adds
	/usr/local/share/steamstubs if present)
`-h`:	display usage information
`-v`:	enable verbose output
`-i`:	interactive mode (prompt for missing deps)
`-y`:	non-interactive; answer yes to all prompts

<gamedir> is optional and defaults to $PWD if not specified.

Compatibility:
--------------

List of games known to work with fnaify. Main testing done on OpenBSD.

### FNA

* The Adventures of Shuggy
* Apotheon (buggy, unfortunately)
* Bleed
* Bleed 2
* Brushwood Buddies
* Capsized
* Chasm
* CometStriker
* Cryptark
* Curse of the Crescent Isle DX
* Dust: An Elysian Tail
* Escape Goat
* Escape Goat 2
* FEZ
* Fist Puncher
* Flinthook
* Gateways
* HackNet
* Hyphen
* Jon Shafer's At the Gates
* Mercenary Kings
* MidBoss (needs [SDL_image_compact](https://github.com/FNA-XNA/SDL_image_compact))
* Overdriven Reloaded
* Owlboy
* Paladin
* Press X to Not Die
* Rex Rocket
* Rogue Legacy
* Salt and Sanctuary
* Shipwreck
* Skulls of the Shogun
* Soulcaster 1 & 2
* SpeedRunners
* Super Rad Raygun
* Timespinner
* TowerFall: Ascension
* A Virus Named TOM (bug on saving)
* Wizorb
* Wyv and Keep

### XNA

* Breath of Death VII
* Chaos Heart
* Cthulhu Saves the World
* LaserCat
* Ninja Warrior
* One Finger Death Punch (needs libCSteamworks.so stub)
* Penny Arcade's On the Rain-Slick Precipice of Darkness 3
* Penny Arcade's On the Rain-Slick Precipice of Darkness 4
* Super Amazing Wagon Adventure
* Unholy Heights (bug: no audio)
* The Useful Dead

### MonoGame

* Dad Quest
* Stardew Valley

### Other

* Atom Zombie Smasher (needs
  [AZSNotSFML](https://github.com/flibitijibibo/AZSNotSFML))

Caveats
-------

* It is recommended to obtain copies of the FNA games that are DRM-free
  and can run without the Steam client.
  [Steamworks-nosteam](https://github.com/rfht/Steamworks.NET-nosteam)
  can sometimes be used to work around a missing Steam client.
* Some FNA games use non-free libraries like FMOD/FMODStudio that are
  not available on OpenBSD. Such games are generally not listed in the
  compatibility list above.

Release History
---------------

```
1.3:	Add prompt to download and replace FNA.dll if incompatible version is found.
	Detect `/usr/local/share/steamstubs` directory and use Steamworks.NET.dll
	stub if present.
1.2:	FreeBSD portability fixes, account for more special cases (MidBoss, Adventures of
	Shuggy, Atom Zombie Smasher), add directory path to plug in additional libraries
1.1:	fix bug selecting .exe by separating input variables
1.0:	initial release
```
