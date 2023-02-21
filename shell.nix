{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  name = "Math104-shell";
  packages = with (import ./default.nix {inherit pkgs;}); [rEnv];
}
