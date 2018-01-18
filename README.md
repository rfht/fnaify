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

* A Virus Named TOM (needs libtheoraplay)
* Capsized (needs libtheoraplay)
* Dust: An Elysian Tail (needs libtheorafile)
* Escape Goat
* Escape Goat 2
* HackNet (only runs with -disableweb which is automaticall set by fnaify; needs libtheoraplay)
* Owlboy (needs libtheorafile and libXNAFileDialog)
* Paladin (needs libtheoraplay)
* Stardew Valley
* Skulls of the Shogun (needs libtheoraplay)
* TowerFall: Ascension (needs libtheoraplay and libXNAFileDialog)
