{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "path-io";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov@opmbx.org>";
        author = "Mark Karpov <markkarpov@opmbx.org>";
        homepage = "https://github.com/mrkkrp/path-io";
        url = "";
        synopsis = "Interface to ‘directory’ package for users of ‘path’";
        description = "Interface to ‘directory’ package for users of ‘path’.";
        buildType = "Simple";
      };
      components = {
        path-io = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.path
            hsPkgs.temporary
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
      };
    }