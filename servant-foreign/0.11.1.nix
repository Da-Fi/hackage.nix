{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-foreign";
          version = "0.11.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2016 Servant Contributors";
        maintainer = "haskell-servant-maintainers@googlegroups.com";
        author = "Servant Contributors";
        homepage = "";
        url = "";
        synopsis = "Helpers for generating clients for servant APIs in any programming language";
        description = "Helper types and functions for generating client functions for servant APIs in any programming language\n\nThis package provides types and functions that collect all the data needed to generate client functions in the programming language of your choice. This effectively means you only have to write the code that \"pretty-prints\" this data as some code in your target language.\n\nSee the servant-js package for an example\n\n<https://github.com/haskell-servant/servant/blob/master/servant-foreign/CHANGELOG.md CHANGELOG>";
        buildType = "Simple";
      };
      components = {
        servant-foreign = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.servant
            hsPkgs.base-compat
            hsPkgs.lens
            hsPkgs.http-types
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.servant
              hsPkgs.servant-foreign
              hsPkgs.hspec
            ];
          };
        };
      };
    }