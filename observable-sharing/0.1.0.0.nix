{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "observable-sharing";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mararon@chalmers.se";
        author = "Atze van Der Ploeg <atzeus@gmail.com>,\nMarkus Aronsson <mararon@chalmers.se>";
        homepage = "";
        url = "";
        synopsis = "Simple observable sharing";
        description = "";
        buildType = "Simple";
      };
      components = {
        observable-sharing = {
          depends  = [ hsPkgs.base ];
        };
      };
    }