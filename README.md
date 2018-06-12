# Easy Chroot

Provides `arrowroot` which makes entering a chroot easier by automatically
mounting (and unmounting) API filesystems like `/proc`, `/dev`, and `/sys` and
by ensuring that `/etc/resolve.conf` is populated inside the chroot so
networking does not fail.  `arrowroot` is a fork of `arch-chroot` from the
`arch-install-scripts` at
[https://git.archlinux.org/arch-install-scripts.git](https://git.archlinux.org/arch-install-scripts.git)
that is not associated with any particular Linux distribution.

## Requirements

* GNU coreutils (>= v8.15)
* util-linux (>= 2.23)
* POSIX awk
* bash (>= 4.1)
* shellcheck (only for check target)

## License

See COPYING for details.

## Installing

To install `arrowroot` simply run:

```
$ make
# make install
```

## Usage

```
# arrowroot /path/to/chroot
```
