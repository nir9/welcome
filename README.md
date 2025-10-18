# Welcome

Useful information regarding my YouTube channel

Here you can find the following

- Many of the PoC projects I wrote in my videos (notice that they are only for fun and are NOT suitable for production)
- Information about my setup
- Suggested learning resources
- Vim programming navigation tips
- Common questions
- My .vimrc file

# Setups

- On my laptop I use Alpine Linux with Sway
- On my small on the go laptop I use OpenBSD

## Alpine Linux Setup (x86_64)
```sh
export BROWSER=chromium
setup-desktop sway
```

Restart, login to your user, and then run `sway` to start the compositor.

### Sound Setup
In order to get the sound working I followed the ALSA guide from the Alpine Linux wiki: https://wiki.alpinelinux.org/wiki/ALSA

### Installations
- Man - `apk add man-db man-db-doc`
- Sudo - `apk add sudo`
  * Afterwards use `visudo` and uncomment the line giving permission to members of the `wheel` group.
  * Add your user to `wheel` - `addgroup <user> wheel`
- Sway Man Pages - `apk add sway-doc`
- Vim - `apk add vim`
- Git - `apk add git`
- Foot Man Pages (The default Sway terminal) - `apk add foot-doc`
- Krita (Graphics Editor) - `apk add krita`
- Audacity (Audio Editor) - `apk add audacity`
- Kdenlive (Video Editor) - `apk add kdenlive`
- QEMU with GTK UI (PC Emulator) - `apk add qemu-system-x86_64 qemu-doc qemu-ui-gtk`
  * Add you user to the `qemu` and `kvm` groups using `addgroup`
- GNU Make - `apk add make`
- GNU Compiler Collection - `apk add gcc`
- Musl Header Files (libc) - `apk add musl-dev`
- Linux Man Pages - `apk add man-pages`

### Linux Kernel Development Setup
- Ncurses Header Files - `apk add ncurses-dev`
- Flex - `apk add flex`
- GNU Bison - `apk add bison`
- Linux Header Files - `apk add linux-headers`
- GNU Diff Utilities - `apk add diffutils`
- Elf Utils Header Files - `apk add elfutils-dev`

## Windows Setup

- Window Manager: I use [LightWM](https://github.com/nir9/lightwm) which is an open source tiling window manager I am working on.
- Terminal: Windows Terminal

### Tools I like using on Windows
- Vim (```winget install vim```)
- QEMU (```winget install qemu```)
- Windbg (```winget install Microsoft.WinDbg```)
- Rizin (```winget install Rizin.Rizin```)
- Sysinternals (```winget install "Sysinternals Suite"```)
- VirtualBox (```winget install Oracle.VirtualBox```)
- WinDirStat (```winget install WinDirStat.WinDirStat```)
- Bochs (```winget install Bochs.Bochs```)
- 86Box (```winget install 86Box.86Box```)

### Setting up WSL Debian on Windows
```wsl --install Debian```

You can access the Windows C drive from WSL as ```/mnt/c```

### Basic Windows Programming Setup

- Visual Studio Build Tools
- Windows SDK

### Debian WSL Setup

#### Tools I like using on Debian
- QEMU (```apt install qemu-system-x86```)
- GCC (```apt install gcc```)
- strace (```apt install strace```)
- ltrace (```apt install ltrace```)
- xtrace (```apt install xtrace```)

#### Basic Debian Programming Setup

```apt install gcc manpages-dev vim git make```

#### Basic Linux Kernel Programming Setup

```apt install bzip2 libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools```

I also like using QEMU to try out the built kernel with the ```-kernel``` flag.

#### Grabbing the Linux Kernel source

You can grab it from torvalds official Linux git repository ```git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git``` 

When cloning the kernel, I recommend using the depth flag like so ```git clone --depth 1``` so it will not bring over the entire history of the kernel, but only the last commit (this will speed up the cloning process and save disk space)

I highly recommend checking out the Linux kernel documentation ```https://docs.kernel.org/```, you can also build it locally on your computer by following the instructions in the kernel source code README.

# Suggested Learning Resources

## Unix
- The book "UNIX: A History and a Memoir" by Brian W. Kernighan - Really enjoyed reading this one, I am generally a fan of history related to computers, and this book tells very well how the early days of Unix were and how things came to be what they are today
- The lecture "A Narrative History of BSD" by Dr. Kirk McKusick - Very interesting lecture, you can find online
- GDB - This tool comes in very handy when you want to dive in deeper, and also in general to debug the programs you write. It has a great help system, check out the ```help``` and ```apropos``` commands.
- The man pages and info pages - Many of the documentation of Unix like systems can be found in the man pages using the ```man``` command, this includes docs about commands, system calls and more. GNU utilities like GDB for example tend to have more extensive documentation in the info pages which can be accessed through the ```info``` command.

## Linux
- [Linux Docs](https://docs.kernel.org/) - Great source of information to learn about all things Linux, goes from Admin related stuff like configuring kernel command-line parameters and until low level subsystems in the kernel. I would recommend reading the docs in conjunction with reading the source code
- Robert Landley's talk about making a minimal Linux system (you can find on Youtube)
- Playlist on YouTube: "Greybeard Qualification - Linux Internals" - nice and helpful videos about Linux internals, they are somewhat dated, but still contain a lot of information that is relavent today
- The book "Understanding the Linux Kernel", great companion for researching the kernel, it is quite dated so beware of some outdated information, but still valuable since a lot of the basic core mechanisms and archictecture is still relevant for today

## Windows
> ⚠ Note that looking at the leaked Windows XP source code could impose some contribution restrictions on certain open source projects related to Windows, for example ReactOS & WINE contribution guidelines prohibit contributions from people who have seen the Windows source code

> ⚠ WINE contribution guidelines are in particular very strict and even have requirements such as not looking at ReactOS code or debug symbols for Microsoft code. If you contribute to any of these kinds of projects, make sure you understand their clean room guidelines.

- The book "Inside Windows NT" by Helen Custer - This book was written in conjunction with the preperation of the release of the first version of Windows NT in 1993, though this book is old and contains a lot of outdated information, I found it very interesting and fun to read to understand how things came to be how they are today on Windows. Also since the basic architecture of the Windows NT kernel has pretty much remained the same as it was designed in the original Windows NT, I did get a much better understanding of internals after reading this book. I have also recently started reading "Windows Internals" which is the modern version of "Inside Window NT" but I will say that "Windows Internals" is much more technical and harder to read as compared to "Inside Windows NT" which is more focused on the high level and general design of Windows.
- The books of "Windows Internals" (part 1 and part 2) - Very interesting books about how Windows works under the hood, they include great practical exercises to demonstrate the theory discussed in the chapters.
- [SysInternals](https://learn.microsoft.com/en-us/sysinternals/) - Great tools for learning what happens under the hood on Windows.
- [Win32 API](https://learn.microsoft.com/en-us/windows/win32/) - The Offical Windows API Documentation
- [WinDbg](https://learn.microsoft.com/en-us/windows-hardware/drivers/debugger/) - The Windows Debugger, it comes with a great help system built-in which can be opened using the command ```.hh```
- "Windows Debugging and Troubleshooting" lecture (you can find on YT) - Great lecture with cool WinDbg tricks
- "Kernel_Debugging_Tutorial.doc" - a great WinDbg kernel debugging guide that comes with Windows SDK
- The Old New Thing - a great blog written by Raymond Chen with all kinds of interesting stories about Windows
- Lectures/Videos by Mark Russinovich - you can find them on YouTube, very interesting source of information about Windows internals
- ReactOS - this is an interesting open source project that is attempting to clone Windows

## C Programming
- The book "Writing Solid Code" by Steve Maguire - I read the original book but I think there is a newer edition, I enjoyed reading this one a lot, it is also quite old and contains some outdated info but still talks about a lot of tips which are relevant until today when programming C.

## Assembly
- [Intel SDM](https://www.intel.com/content/www/us/en/developer/articles/technical/intel-sdm.html) - The official Intel references for x86/x64 architectures, you can use them to find for example documentation for specific instructions.

## Computer History
- The Computer Chronicles - A great show that was broadcast from the 80s until the early 2000s and is a great time capsule of many major events that happened in the world of computing, very interesting and all the episodes are available to watch free online.

# How I Navigate Source Code with Vim

The following tips come along side my playlist "Vim Tips" on my channel, some of the following tips are covered in those videos.

Regarding the ctags program, I use "Universal Ctags". I would recommend making sure you don't use a version of ctags that is too outdated, you can check by running ```ctags --help```

- I always like setting the working directory to my current project: ```cd ~/cloned/project```
- Configure Vim to use ```git grep``` as the ```:grep``` engine, this is extremely handy to quickly search text across a Git repository while in Vim, the search results come up directly inside Vim. I have a video about setting this up, or you can checkout the ```set gp``` line in my .vimrc
- Tags: I have a video summarizing this on my playlist, but tags are very handy for navigating code quickly and efficiently. To make life easier I would recommend making a script in your project like ```build_tags``` for example and inserting over there the ```ctags``` generation command with all the paths, then you can configure a mapping in your vimrc to run the script when pressing ```F11``` for example
- Double star: When you only remember part of a file name for example and you want to recursively list matches, you can utilize the double star wildcard for example: ```:e web/**/*page.js``` and the press ```TAB``` will expand with all the options, checkout the ```set wildmenu``` and the ```wildoptions``` parts from my vimrc for a nicer expansion menu.
- Goto first occurence: The ```[I``` (opening square bracket and capital I) command is very handy for finding the first occurence of a certain word on the current file. It can even interpret the ```#include``` and search the first occurence also in the included header files.
- The path option (```:help path```): Very useful for telling Vim about directories to search for when use a bunch of commands related to opening different files (like the ```[I``` command above)
- The built-in file explorer plugin (netrw): Handy when you want to visually navigate, you can start it on a certain path just by running ```:e src/plugins``` for example.
- The built-in autocomplete: CTRL+N for general auto complete and the CTRL+X following a type of completion (for instance CTRL+X and then [ for completion based on tags or CTRL+X and then f for completion based on files, and much more in the Vim help).

# Common Questions

- Why I also use Windows as one of my main desktop OSes? There are a couple of reasons:
  - It has wide support for old/new software and games.
  - I am also interested in Windows programming and research.
 
- Why I prefer using Vim over other IDEs/Editors
  - I have some videos about this topic but to summarize:
    - Vim contains way more advanced, useful and awesome features than other IDEs and Editors and also exposes those features in a much more harmonic way as compared to IDEs which map advanced features to awkward keyboard chords. On my playlist "Vim Tips" I talk about some of those features I like and a lot of them cannot be found in other IDEs/Editors.

- Why I prefer using the command line build tools over graphical IDE buttons for building code
  - I prefer compiling and building in the command line instead of through IDE buttons since it lets me see and control exactly what is going on without the IDE abstractions, and it encourages me to understand how the compilation and linking works more deeply.
