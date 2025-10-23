## Alpine Linux Setup (x86_64)
Boot into the installation image and run the `setup-alpine` script, make sure to create a user.

Shutdown the computer and remove the installation media, then boot and run the following:

```sh
export BROWSER=chromium
setup-desktop sway
```

Now restart, login to your user, and then run `sway` to start the compositor.

### Sound Setup
In order to get the sound working I followed the ALSA guide from the Alpine Linux wiki: https://wiki.alpinelinux.org/wiki/ALSA

### Installations
See `setup` script.

After `setup`:
- Use `visudo` and uncomment the line giving permission to members of the `wheel` group.
- Add your user to `wheel` - `addgroup <user> wheel`
- Add you user to the `qemu` and `kvm` groups using `addgroup`
