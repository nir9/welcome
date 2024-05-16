# Welcome

Useful information regarding my YouTube channel

- [Link to my .vimrc file](https://github.com/nir9/welcome/blob/master/.vimrc)

## Setup

I use Windows 10 as my primary OS and Debian Linux using WSL

On Windows I use [LightWM](https://github.com/nir9/lightwm) which is a WIP open source tiling window manager I am working on.

#### Tools I like using on Windows
- Vim (```winget install vim```)
- QEMU (```winget install qemu```)
- Windbg (```winget install Microsoft.WinDbg```)
- Cutter (```winget install Rizin.Cutter```)
- Sysinternals (```winget install "Sysinternals Suite"```)
- FASM (```winget install fasm```)
- VirtualBox (```winget install Oracle.VirtualBox```)

#### Setting up WSL Debian on Windows
```wsl --install Debian```

You can access the Windows C drive from WSL as ```/mnt/c```

#### Basic Windows Programming Setup

- Visual Studio Build Tools
- Windows SDK

#### Basic Linux Programming Setup

```apt install gcc manpage-dev vim git make```

#### Basic Linux Kernel Programming Setup

```apt install bzip2 libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools```

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
