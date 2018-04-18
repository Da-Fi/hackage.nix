{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "diff3";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ollie@ocharles.org.uk";
        author = "Oliver Charles";
        homepage = "http://github.com/ocharles/diff3.git";
        url = "";
        synopsis = "Perform a 3-way difference of documents";
        description = "";
        buildType = "Simple";
      };
      components = {
        diff3 = {
          depends  = [
            hsPkgs.base
            hsPkgs.Diff
          ];
        };
      };
    }