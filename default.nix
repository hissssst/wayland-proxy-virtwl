{ pkgs, opam2nix, ... }:
let
  ocaml = pkgs.ocaml-ng.ocamlPackages_4_12.ocaml;
  selection = opam2nix.build {
    inherit ocaml;
    selection = ./nix/opam-selection.nix;
    src = ./.;
  };
in
selection.wayland-proxy-virtwl
