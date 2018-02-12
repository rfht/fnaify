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
- mono (package in ports marked as BROKEN, but compiles on amd64
  if /usr/ports is mounted with wxallowed)
- game-specific libraries, like theoraplay, mojoshader, ... fnaify
  should abort and tell you which libraries need to be installed if
  some of them can't be found.

Usage:
------

`fnaify <[/path/to/]launchscript>`

Status:
-------

The following games have been reported to work with this script:

* The Adventures of Shuggy (needs libtheoraplay and a different FNA.dll than the bundled one)
* Apotheon (needs a different FNA.dll than the bundled one)
* Atom Zombie Smasher (needs [AZSNotSFML](https://github.com/flibitijibibo/AZSNotSFML))
* A Virus Named TOM (needs libtheoraplay)
* Bleed (needs libtheoraplay)
* Bleed 2 (needs libtheorafile)
* Brushwood Buddies (needs libtheoraplay and a different FNA.dll than the bundled one)
* Capsized (needs libtheoraplay)
* Curse of the Crescent Isle DX (needs libtheoraplay and different FNA.dll than the bundled one)
* Dust: An Elysian Tail (needs libtheorafile)
* Escape Goat
* Escape Goat 2
* FEZ (needs libtheoraplay)
* Gateways
* HackNet (only runs with -disableweb which is automaticall set by fnaify; needs libtheoraplay)
* Hidden In Plain Sight (needs libtheorafile)
* Hyphen (needs libtheoraplay)
* Overdriven Reloaded (needs libtheoraplay)
* Owlboy (needs libtheorafile)
* Paladin (needs libtheoraplay)
* Press X to Not Die (needs libtheorafile)
* Rex Rocket (needs a different FNA.dll than the bundled one)
* Rogue Legacy
* Shipwreck
* Skulls of the Shogun (needs libtheoraplay)
* Soulcaster 1
* Soulcaster 2
* Stardew Valley
* TowerFall: Ascension (needs libtheoraplay)
* Wyv and Keep (needs libtheorafile; needs a different FNA.dll than the bundled one)

Special Case: Axiom Verge
-------------------------

Axiom Verge's DRM-free version is the physical Collector's Edition (GameTrust/indiebox) on optical disc, but it only includes the Windows/XNA version. In order to run it on OpenBSD, [XnaToFna](https://github.com/0x0ade/XnaToFna) is needed. Instructions on how to set it up are being worked on.

DRM-free Games
--------------

Very helpful because there is no Steam client for OpenBSD:

List of DRM-free game sources [here](https://github.com/thfrwn/fnaify/blob/master/drm-free.md)

List of DRM-free XNA games [here](https://github.com/thfrwn/fnaify/blob/master/drm-free-xna.md)
