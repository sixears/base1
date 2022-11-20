{
  description = "Class for things that are indexable";

  inputs = {
    nixpkgs.url       = github:nixos/nixpkgs/be44bf67; # nixos-22.05 2022-10-15
    build-utils.url   = github:sixears/flake-build-utils/r1.0.0.13;

    base0.url         = github:sixears/base0/r0.0.4.11;
    has-callstack.url = github:sixears/has-callstack/r1.0.1.18;
    index.url         = github:sixears/index/r1.0.1.25;
    monaderror-io.url = github:sixears/monaderror-io/r1.2.5.19;
    more-unicode.url  = github:sixears/more-unicode/r0.0.17.12;
    tfmt.url          = github:sixears/tfmt/r0.2.7.24;

  };

  outputs = { self, nixpkgs, build-utils
            , base0, has-callstack, index, monaderror-io, more-unicode, tfmt }:
    build-utils.lib.hOutputs self nixpkgs "base1" {
      ghc = p: p.ghc8107; # for tfmt
      callPackage = { mkDerivation, lib, mapPkg, system }:
        let
          pkg = build-utils.lib.flake-def-pkg system;
        in
          mkDerivation {
            pname = "base1";
            version = "0.0.9.33";
            src = ./.;
            libraryHaskellDepends = map (p: pkg p) [
              base0 has-callstack index monaderror-io more-unicode tfmt
            ];
            description = "Prelude replacement, incl. first-level local packages";
            license = lib.licenses.mit;
          };
    };
}
