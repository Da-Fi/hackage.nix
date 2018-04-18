{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "TypeNat";
          version = "0.2.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "aovieth@gmail.com";
        author = "Alexander Vieth";
        homepage = "https://github.com/avieth/TypeNat";
        url = "";
        synopsis = "Some Nat-indexed types for GHC";
        description = "";
        buildType = "Simple";
      };
      components = {
        TypeNat = {
          depends  = [ hsPkgs.base ];
        };
      };
    }