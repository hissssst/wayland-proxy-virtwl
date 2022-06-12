{
  inputs = {
    nixpkgs.url = github:nixos/nixpkgs/nixos-22.05;
    opam2nix.url = github:timbertson/opam2nix;
    opam2nix.flake = false;
  };

  outputs = { self, nixpkgs, opam2nix }:
  let pkgs = nixpkgs.legacyPackages.x86_64-linux; in
  {
      packages.x86_64-linux.default = pkgs.callPackage ./default.nix {
        inherit pkgs;
        opam2nix = pkgs.callPackage "${opam2nix}/default.nix" { };
      };
  };
}
