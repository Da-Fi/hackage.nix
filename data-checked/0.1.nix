{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "data-checked";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        homepage = "https://github.com/mvv/data-checked";
        url = "";
        synopsis = "Type-indexed runtime-checked properties";
        description = "This package provides a (phantom) type-indexed newtype evidence-wrapper for\nvalues that are checked to satisfy the property associated with the type.";
        buildType = "Simple";
      };
      components = {
        data-checked = {
          depends  = [ hsPkgs.base ];
        };
      };
    }