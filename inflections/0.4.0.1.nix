{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "inflections";
          version = "0.4.0.1";
        };
        license = "MIT";
        copyright = "2014–2016 Justin Leitgeb";
        maintainer = "Justin Leitgeb <justin@stackbuilders.com>";
        author = "Justin Leitgeb <justin@stackbuilders.com>";
        homepage = "https://github.com/stackbuilders/inflections-hs";
        url = "";
        synopsis = "Inflections library for Haskell";
        description = "Inflections provides methods for singularization, pluralization,\ndasherizing, etc. The library is based on Rails' inflections library.";
        buildType = "Simple";
      };
      components = {
        inflections = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.megaparsec
            hsPkgs.text
            hsPkgs.unordered-containers
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.void;
        };
        tests = {
          test = {
            depends  = ([
              hsPkgs.inflections
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.hspec-megaparsec
              hsPkgs.megaparsec
              hsPkgs.text
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.void) ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
          };
        };
      };
    }