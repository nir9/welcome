# Windows XP Virtual Machine

## Initial Setup

Create a disk image to install Windows XP on:

```sh
qemu-img create winxp.img -f qcow2 4G
```

After inserting the Windows XP installation CD, it should be accessible at `/dev/cdrom`.

Run the following to begin the installation:
```sh
qemu-system-x86_64 -hda winxp.img -cdrom /dev/cdrom -m 1G -machine pc,accel=kvm -nic none -rtc base=2025-10-21
```

After installation, to subsequently boot the virtual machine, use `run`.
