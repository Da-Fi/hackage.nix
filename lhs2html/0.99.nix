{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lhs2html";
          version = "0.99";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "julian.fleischer@warhog.net";
        author = "Julian Fleischer";
        homepage = "";
        url = "";
        synopsis = "Compile lhs in bird style to md, html, hs.";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          lhs2html = {
            depends  = [
              hsPkgs.base
              hsPkgs.nicify
            ];
          };
        };
      };
    }