{
  outputs = { nixpkgs, self, ... }: {
    packages = nixpkgs.lib.mapAttrs (_: pkgs: import ./default.nix {inherit pkgs;}) nixpkgs.legacyPackages;
 };
}
