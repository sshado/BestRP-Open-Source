Dantom.BYOND.Linux
Last updated for release: 432

Installation procedure:

1. Unzip byond-linux.zip.  (You probably already did this.)

2. Type 'make' and follow the instructions.  Basically, you have the option
   of installing here (for your personal use alone) or on the entire system.

3. If you installed on the system and you changed the byond system location,
   be sure to add BYOND_SYSTEM to your environment settings.  You may also
   need to set LD_LIBRARY_PATH or modify /etc/ld.so.conf.  The default
   installation parameters should require no further setup.

4. If you installed for your own personal use, be sure to add the call to
   byondsetup in your profile script (.bash_profile or whatever your shell
   uses).  This configures various environment variables required by the
   software.

5. You can host games with DreamDaemon.  Just upload the .dmb, .rsc, and
   any other necessary files to a directory with the same name as the
   .dmb (like MyWorld/MyWorld.dmb) and host them with a command like this:

   DreamDaemon MyWorld <port> <options> &

   where <port> may be ANY or some fixed network port such as 1234

   and <options> may be any of the options documented in the language
   reference under /proc/startup.  The most important ones are -ultrasafe, 
   -safe, and -trusted.  If you put the .dmb into a directory with the same 
   name (known as a "safe" directory), then -safe mode will be used by 
   default.  Otherwise, -ultrasafe mode will be used, which will cause 
   run-time errors if the world needs to do any file access.  Do not use 
   -trusted mode unless you trust the author of the world, because the world 
   will be able to execute any command and access any of your files.  Even 
   if you trust the author, do not use -trusted mode unless you need it, 
   because that will give you extra protection against bugs in the .dmb code 
   opening up unnecessary security holes.

   I should mention one other very handy option: -logself.  That puts the
   output from DreamDaemon into a .log file with the same name as the
   .dmb (e.g. MyWorld.log).  Make sure you remember to look in there though!

   For further information, try 'man DreamDaemon'.

6.  You can download games (to host) by using the DreamDownload utility:

    DreamDownload byond://Author.Game

    This will install the game (or library) in the appropriate directory, and
    output the location so that you can host (or use) it at a later time.

7. If you want to run a host server, check out host/readme-unix.txt.

Visit www.byond.com to find out more about BYOND, meet the gurus, and report
bugs.

We welcome you to distribute this software.


Acknowledgement
===============
BYOND versions for BSD flavors (FreeBSD, NetBSD, OpenBSD, and Mac OS X)
contains external code from libexecinfo with the following copyright notice:

 * Copyright (c) 2003 Maxim Sobolev <sobomax@FreeBSD.org>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
