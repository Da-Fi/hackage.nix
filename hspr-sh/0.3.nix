{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "hspr-sh";
          version = "0.3";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Niklas Broberg <nibro@cs.chalmers.se>";
        author = "Niklas Broberg";
        homepage = "http://www.cs.chalmers.se/~d00nibro/hsp/";
        url = "";
        synopsis = "Session handler for HSP";
        description = "A simple session handler for the HSP package, needed\nby the HSPR tools.";
        buildType = "Simple";
      };
      components = {
        hspr-sh = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-time
          ];
        };
      };
    }