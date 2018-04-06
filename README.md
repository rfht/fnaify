NOTE: beta version

fnaify
======

created 2017-12-27
by Thomas Frohwein (thfr)

Script to get FNA-based games ready to run on OpenBSD

FNA is a reimplementation of the Microsoft XNA Game Studio 4.0 Refresh libraries.
Thanks to the great work by Ethan Lee (flibitijibibo) games using FNA are
highly portable and can even run on OpenBSD. 
Please refer to https://fna-xna.github.io/ for more information about FNA

Requirements:
-------------

- SDL_GetPlatform to recognize OS. OpenBSD's SDL2 upgrade to 2.0.7
  achieves this by returning "Linux" until FNA patches to recognize
  *BSD platforms have been rolled out.
  You can check with [sdl2plat](https://github.com/thfrwn/sdl2plat)
  which platform is returned by SDL_GetPlatform.
- mono: package available for -current, but not for 6.2 or 6.3. However, a
  version of mono with a few bugs can likely be built from the ports tree, by
  removing the line starting with `BROKEN`
- game-specific libraries, like theoraplay, mojoshader, ... fnaify
  should abort and tell you which libraries need to be installed if
  some of them can't be found.

Usage:
------

`sh /path/to/fnaify <[/path/to/]launchscript>`

For verbose output, set the environment variable FNAIFY_DEBUG to anything.

Status:
-------

The following games have been reported to work with this script:

* The Adventures of Shuggy (needs different FNA.dll than the bundled one)
* Apotheon (needs a different FNA.dll than the bundled one)
* Atom Zombie Smasher (needs [AZSNotSFML](https://github.com/flibitijibibo/AZSNotSFML))
* A Virus Named TOM
* Bleed
* Bleed 2
* Brushwood Buddies (needs a different FNA.dll than the bundled one)
* Capsized
* Curse of the Crescent Isle DX (needs different FNA.dll than the bundled one)
* Dust: An Elysian Tail
* Escape Goat
* Escape Goat 2
* FEZ - **currently with game-breaking bugs, under investigation**
* Gateways
* HackNet (only runs with -disableweb which is automaticall set by fnaify)
* Hidden In Plain Sight
* Hyphen
* Overdriven Reloaded
* Owlboy
* Paladin
* Press X to Not Die
* Rex Rocket (needs a different FNA.dll than the bundled one) - **currently not launching, under investigation**
* Rogue Legacy
* Shipwreck
* Skulls of the Shogun
* Soulcaster 1
* Soulcaster 2
* Stardew Valley (recommend data size limit of 2G)
* TowerFall: Ascension
* Wizorb (needs a different FNA.dll than the bundled one)
* Wyv and Keep (needs a different FNA.dll than the bundled one)

Special Case: Axiom Verge
-------------------------

Axiom Verge's DRM-free version is the physical Collector's Edition
(GameTrust/indiebox) on optical disc, but it only includes the Windows/XNA
version. In order to run it on OpenBSD,
[XnaToFna](https://github.com/0x0ade/XnaToFna) is needed. Instructions on how to
set it up are being worked on.

DRM-free Games
--------------

Very helpful because there is no Steam client for OpenBSD:

List of DRM-free FNA games (and related) [here](https://github.com/thfrwn/fnaify/blob/master/drm-free.md)

List of DRM-free XNA games [here](https://github.com/thfrwn/fnaify/blob/master/drm-free-xna.md)
