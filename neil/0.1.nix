{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "neil";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Neil Mitchell 2010-2014";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "http://community.haskell.org/~ndm/";
        url = "";
        synopsis = "General tools for Neil";
        description = "General tools for Neil.";
        buildType = "Simple";
      };
      components = {
        neil = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.time
            hsPkgs.process
            hsPkgs.extra
          ];
        };
        exes = {
          neil = {
            depends  = [
              hsPkgs.containers
              hsPkgs.cmdargs
            ] ++ optionals (!_flags.small) [
              hsPkgs.json
              hsPkgs.GoogleChart
              hsPkgs.old-time
            ];
          };
        };
      };
    }