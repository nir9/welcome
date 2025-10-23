# Windows Setup

- Window Manager: I use [LightWM](https://github.com/nir9/lightwm) which is an open source tiling window manager I am working on.
- Terminal: Windows Terminal

### Installations
See `setup.cmd` script.

### Setting up WSL Debian on Windows
`wsl --install Debian`

You can access the Windows C drive from WSL as `/mnt/c`

### Basic Windows Programming Setup

- Visual Studio Build Tools
- Windows SDK

### Debian WSL Setup

#### Tools I like using on Debian
- QEMU (`apt install qemu-system-x86`)
- GCC (`apt install gcc`)
- strace (`apt install strace`)
- ltrace (`apt install ltrace`)
- xtrace (`apt install xtrace`)

#### Basic Debian Programming Setup

`apt install gcc manpages-dev vim git make`

#### Basic Linux Kernel Programming Setup

`apt install bzip2 libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools`

I also like using QEMU to try out the built kernel with the `-kernel` flag.
