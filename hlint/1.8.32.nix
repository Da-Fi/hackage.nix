{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      threaded = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hlint";
          version = "1.8.32";
        };
        license = "LicenseRef-GPL";
        copyright = "Neil Mitchell 2006-2012";
        maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
        author = "Neil Mitchell <ndmitchell@gmail.com>";
        homepage = "http://community.haskell.org/~ndm/hlint/";
        url = "";
        synopsis = "Source code suggestions";
        description = "HLint gives suggestions on how to improve your source code.";
        buildType = "Simple";
      };
      components = {
        hlint = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.hscolour
            hsPkgs.cpphs
            hsPkgs.haskell-src-exts
            hsPkgs.uniplate
          ];
        };
        exes = {
          hlint = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }