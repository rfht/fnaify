NOTE: beta version. Likely still with bugs in many use cases

fnaify
======

created 2017-12-27
by Thomas Frohwein (thfr)

Script to get FNA-based games
ready to run on OpenBSD

Requirements:

- SDL2 library that identifies as 'Linux' rather than 'OpenBSD'
  (needs to be compiled this way; patch to recognize OpenBSD in
  progress upstream)
- mono (package in ports marked as BROKEN, but compiles on amd64
  if /usr/ports is mounted with wxallowed)

Usage:

fnaify \<launch script\>
