{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      interrupt = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "gf";
          version = "3.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "";
        author = "";
        homepage = "http://www.grammaticalframework.org";
        url = "";
        synopsis = "Grammatical Framework";
        description = "GF, Grammatical Framework, is a programming language for multilingual grammar applications";
        buildType = "Custom";
      };
      components = {
        gf = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.random
            hsPkgs.pretty
            hsPkgs.mtl
          ];
        };
        exes = {
          gf = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.process
              hsPkgs.pretty
              hsPkgs.mtl
              hsPkgs.haskeline
            ] ++ (if system.isWindows
              then [ hsPkgs.Win32 ]
              else [ hsPkgs.unix ]);
          };
        };
      };
    }