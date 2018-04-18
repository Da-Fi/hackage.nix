{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "testPkg";
          version = "0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "";
        author = "Stephen E. A. Britton";
        homepage = "";
        url = "";
        synopsis = "Small test package";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          testPkg = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }