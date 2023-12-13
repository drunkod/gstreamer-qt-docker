https://nixos.wiki/wiki/Cross_Compiling

install nix:
$ curl -L https://nixos.org/nix/install | sh

nix-shell crossShell.nix
or download

. /home/alex/.nix-profile/etc/profile.d/nix.sh

nix-env -i /nix/store/kzy31dc4sk6pzhdzbadazl9y28bjvxji-libunwind-1.6.2-dev --option binary-caches https://cache.nixos.org

on site: https://hydra.nixos.org/job/nixos/trunk-combined/nixpkgs.libunwind.aarch64-linux