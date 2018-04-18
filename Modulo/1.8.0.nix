{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "modulo";
          version = "1.8.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Hans Hoglund <hans@hanshoglund.se>";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Modular C code generator";
        description = "Modulo is a tool that generates modular, standard C interfaces based on a high-level\ndescription language. The idea is to specify functionality in the module language\nand implement it in any language that supports C-style calling conventions.\nThis package include generators for C and Common Lisp (JavaScript and Haskell on the way).";
        buildType = "Simple";
      };
      components = {
        modulo = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.semigroups
            hsPkgs.nats
            hsPkgs.data-default
            hsPkgs.text
            hsPkgs.parsec
            hsPkgs.prettify
            hsPkgs.language-c
            hsPkgs.haskell-src
            hsPkgs.atto-lisp
            hsPkgs.pandoc-types
            hsPkgs.process
            hsPkgs.directory
          ];
        };
        exes = { modulo = {}; };
      };
    }