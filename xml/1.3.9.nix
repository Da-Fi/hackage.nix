{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "xml";
          version = "1.3.9";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2007-2008 Galois Inc.";
        maintainer = "diatchki@galois.com";
        author = "Galois Inc.";
        homepage = "http://code.galois.com";
        url = "";
        synopsis = "A simple XML library.";
        description = "A simple XML library.";
        buildType = "Simple";
      };
      components = {
        xml = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }