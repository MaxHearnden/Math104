{ pkgs ? import <nixpkgs> {} }: rec {
  default = pkgs.rPackages.buildRPackage {
    name = "Math104";
    version = "1.0";
    src = ./Math104_1.0.tar.gz;
    propogatedBuildInputs = with pkgs.rPackages; [maps mapproj];
    nativeBuildInputs = with pkgs.rPackages; [maps mapproj pkgs.R];
  };
  rEnv = pkgs.rWrapper.override {
    packages = [ default ];
  };
  rstudioEnv = pkgs.rstudioWrapper.override {
    packages = [ default ];
  };
}
