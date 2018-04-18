{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "haskore-vintage";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diatchki@galois.com";
        author = "Paul Hudak";
        homepage = "http://haskell.org/haskore/";
        url = "";
        synopsis = "The February 2000 version of Haskore.";
        description = "";
        buildType = "Simple";
      };
      components = {
        haskore-vintage = {
          depends  = [ hsPkgs.base ];
        };
      };
    }