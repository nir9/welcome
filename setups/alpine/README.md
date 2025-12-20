## Alpine Linux Setup (x86_64)
Boot into the installation image and run the `setup-alpine` script, make sure to create a user.

Shutdown the computer and remove the installation media, then boot and run the following:

```sh
export BROWSER=chromium
setup-desktop sway
```

Now restart, login to your user, and then run `sway` to start the compositor.

### Installations
- See `setup` script for general installations.
- See `setup-dev-env` script for setting up a development environment.
- See `setup-kernel-dev` script for setting up a kernel dev environment.

After `setup`:
- Use `visudo` and uncomment the line giving permission to members of the `wheel` group.
- Add your user to `wheel` - `addgroup <user> wheel`
- Add you user to the `qemu`, `kvm` and `audio` groups using `addgroup`
- Add `root` to the `audio` group.
- Change your default shell to Bash (see `chsh` command)
- See the `.vimrc` and `.bashrc` files for my configurations

### Sound Setup
The `setup` script above installs the ALSA utils package.

Run `alsamixer` and make sure your master volume is up and that it's not muted (use `M` to toggle the mute).

For additional troubleshooting refer to the article on the Alpine wiki: https://wiki.alpinelinux.org/wiki/ALSA
