{
  description = "Class for things that are indexable";

  inputs = {
    nixpkgs.url       = "github:nixos/nixpkgs/be44bf67"; # nixos-22.05 2022-10-15
    build-utils.url   = "github:sixears/flake-build-utils/r1.0.0.4";

    base0.url         = "github:sixears/base0/r0.0.4.1";
    has-callstack.url = "github:sixears/has-callstack/r1.0.1.6";
    index.url         = "github:sixears/index/r1.0.1.5";
    monaderror-io.url = "github:sixears/monaderror-io/r1.2.5.5";
    more-unicode.url  = "github:sixears/more-unicode/r0.0.17.3";
    tfmt.url          = "github:sixears/tfmt/r0.2.7.5";

  };

  outputs = { self, nixpkgs, flake-utils, build-utils
            , base0, has-callstack, index, monaderror-io, more-unicode, tfmt }:
    build-utils.lib.hOutputs self nixpkgs "base1" {
      deps = {
        inherit base0 has-callstack index monaderror-io more-unicode tfmt;
      };
      ghc = p: p.ghc8107; # for tfmt
    };
}
