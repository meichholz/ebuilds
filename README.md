# The Bugslayer's Gentoo Overlay

This is my Gentoo overlay. For now it just carries a plain old `rdist` port, since I use that software still.

## Usage

The new drop-in mechanism needs portage-2.2.17 or later and ist **much**
simpler that the layman loop jumping (for me). Probably You have to upgrade
(see below).

The older `emerge` reads the config, but appears to be not able to check the
repo out initially. Probably it can sync it later, but I did not check that.

* Drop in the `bugslayer.conf` file here into `/etc/portage/repos.conf/bugslayer.conf`.

* Pull the repo in with `emaint sync -r Bugslayer`.

* `eix-update` and test with `eix rdist`.

Now You can use the ebuilds like the upstream ones.

## Transition to portage 2.2.17

1. `package.keywords` needs `=sys-apps/portage-2.2.17`
1. `package.use` needs `sys-apps/portage git`
1. Put `SYNC=""` into Your `make.conf` if it is defaulted otherwise.
1. Check the mirror, now given in `/etc/portage/repos.conf/gentoo.conf`.
1. `emerge -1 portage`
1. remove obsolete layman config from `make.conf`
1. remove obsolete `PORTDIR_OVERLAY` definitions

Try a `emerge --sync` and resolve any remaining issues.

You'd like to puppetize these steps, if You have several gentoo hosts.

## LICENSE

[MIT](LICENSE).

