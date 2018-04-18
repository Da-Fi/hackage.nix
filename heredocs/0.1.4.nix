{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "heredocs";
          version = "0.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cutsea110@gmail.com";
        author = "cutsea110";
        homepage = "http://github.com/cutsea110/heredoc.git";
        url = "";
        synopsis = "heredocument";
        description = "heredocument";
        buildType = "Simple";
      };
      components = {
        heredocs = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.doctest
            hsPkgs.parsec
            hsPkgs.template-haskell
            hsPkgs.text
          ];
        };
        tests = {
          doctest = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.doctest
              hsPkgs.heredocs
              hsPkgs.text
            ];
          };
        };
      };
    }