# Welcome

Useful information regarding my YouTube channel

Here you can find the following

- Many of the PoC projects I wrote in my videos (notice that they are only for fun and are NOT suitable for production)
- Information about my setup
- Common questions
- Suggested learning resources
- My .vimrc file

## Setup

- On my main laptop I use Windows 10 and Debian Linux using WSL
- On my small on the go laptop I use OpenBSD

On Windows I use [LightWM](https://github.com/nir9/lightwm) which is a WIP open source tiling window manager I am working on.

#### Tools I like using on Windows
- Vim (```winget install vim```)
- QEMU (```winget install qemu```)
- Windbg (```winget install Microsoft.WinDbg```)
- Cutter (```winget install Rizin.Cutter```)
- Sysinternals (```winget install "Sysinternals Suite"```)
- VirtualBox (```winget install Oracle.VirtualBox```)

#### Setting up WSL Debian on Windows
```wsl --install Debian```

You can access the Windows C drive from WSL as ```/mnt/c```

#### Basic Windows Programming Setup

- Visual Studio Build Tools
- Windows SDK

#### Tools I like using on Linux
- QEMU (```apt install qemu-system-x86```)
- GCC (```apt install gcc```)

#### Basic Linux Programming Setup

```apt install gcc manpage-dev vim git make```

#### Basic Linux Kernel Programming Setup

```apt install bzip2 libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools```

I also like using QEMU to try out the built kernel: ```apt install qemu-system-x86```

#### Grabbing the Linux Kernel source

You can grab it from torvalds mirror on Github ```https://github.com/torvalds/linux``` or from the Linux kernel website ```https://kernel.org```

When cloning the kernel, I recommend using the depth flag like so ```git clone --depth 1``` so it will not bring over the entire history of the kernel, but only the last commit (this will speed up the cloning process and save disk space)

I highly recommend checking out the Linux kernel documentation ```https://docs.kernel.org/```, you can also build it locally on your computer by following the instructions in the kernel source code README.

## Common Questions

- Why I prefer using Windows over a Linux Distro as my main desktop OS? There are a couple of reasons:
  - I find it more comfortable
  - I like the fact that it has wide support for old/new software and games
  - I am interested in both Windows programming and Linux programming
 
- Why I prefer using Vim over other IDEs/Editors
  - I have some videos about this topic but to summarize:
    - Vim contains way more advanced, useful and awesome features than other IDEs and Editors and also exposes those features in a much more harmonic way as compared to IDEs which map advanced features to awkward keyboard chords. On my playlist "Vim Tips" I talk about some of those features I like and a lot of them cannot be found in other IDEs/Editors.

- Why I prefer using the command line build tools over graphical IDE buttons for building code
  - I prefer compiling and building in the command line instead of through IDE buttons since it lets me see and control exactly what is going on without the IDE abstractions, and it encourages me to understand how the compilation and linking works more deeply.
 
## Suggested Learning Resources

### Unix
- The book "UNIX: A History and a Memoir" by Brian W. Kernighan - Really enjoyed reading this one, I am generally a fan of history related to computers, and this book tells very well how the early days of Unix were and how things came to be what they are today
- The lecture "A Narrative History of BSD" by Dr. Kirk McKusick - Very interesting lecture, you can find online
- GDB - This tool comes in very handy when you want to dive in deeper, and also in general to debug the programs you write. It has a great help system, check out the ```help``` and ```apropos``` commands.
- The man pages and info pages - Many of the documentation of Unix like systems can be found in the man pages using the ```man``` command, this includes docs about commands, system calls and more. GNU utilities like GDB for example tend to have more extensive documentation in the info pages which can be accessed through the ```info``` command.

### Linux
- [Linux Docs](https://docs.kernel.org/) - Great source of information to learn about all things Linux, goes from Admin related stuff like configuring kernel command-line parameters and until low level subsystems in the kernel. I would recommend reading the docs in conjunction with reading the source code
- Robert Landley's talk about making a minimal Linux system (you can find on Youtube)

### Windows
- The book "Inside Windows NT" by Helen Custer - This book was written in conjunction with the preperation of the release of the first version of Windows NT in 1993, though this book is old and contains a lot of outdated information, I found it very interesting and fun to read to understand how things came to be how they are today on Windows. Also since the basic architecture of the Windows NT kernel has pretty much remained the same as it was designed in the original Windows NT, I did get a much better understanding of internals after reading this book. I have also recently started reading "Windows Internals" which is the modern version of "Inside Window NT" but I will say that "Windows Internals" is much more technical and harder to read as compared to "Inside Windows NT" which is more focused on the high level and general design of Windows.
- The book "Windows Internals" - A very interesting (but technical) book about how Windows works under the hood, includes great practical exercises to demonstrate the theory discussed in the chapters. It is hard to read it from beginning to end, so I would recommend focusing each time on a different chapter you are interested in.
- [SysInternals](https://learn.microsoft.com/en-us/sysinternals/) - Great tools for learning what happens under the hood on Windows.
- [WinDbg](https://learn.microsoft.com/en-us/windows-hardware/drivers/debugger/) - The Windows Debugger, most important command - ```.hh``` :)
- [Win32 API](https://learn.microsoft.com/en-us/windows/win32/) - The Offical Windows API Documentation

### C Programming
- The book "Writing Solid Code" by Steve Maguire - I read the original book but I think there is a newer edition, I enjoyed reading this one a lot, it is also quite old and contains some outdated info but still talks about a lot of tips which are relevant until today when programming C.

### Computer History
- The Computer Chronicles - A great show that was broadcast from the 80s until the early 2000s and is a great time capsule of many major events that happened in the world of computing, very interesting and all the episodes are available to watch free online.
