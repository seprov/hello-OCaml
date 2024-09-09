{ pkgs ? (import <nixpkgs> {
  config.allowUnfree = true;
}), ... }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    vscode
    gcc
    curl
    unzip
    bubblewrap
    opam
    ocaml
    vscode-extensions.ocamllabs.ocaml-platform
    ocamlPackages.ocaml-lsp
    ocamlPackages.ocamlformat
  ];
}

