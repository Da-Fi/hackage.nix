{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cookbook";
          version = "0.1.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nathanpisarski@gmail.com";
        author = "Nate Pisarski";
        homepage = "";
        url = "";
        synopsis = "An independent library of common haskell operations.";
        description = "";
        buildType = "Simple";
      };
      components = {
        cookbook = {
          depends  = [ hsPkgs.base ];
        };
      };
    }