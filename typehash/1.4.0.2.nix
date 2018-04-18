{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "typehash";
          version = "1.4.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Lennart Augustsson";
        author = "Lennart Augustsson";
        homepage = "";
        url = "";
        synopsis = "Create a unique hash value for a type.";
        description = "Produce a hash for a type that is unique for that type.\nThe hash takes both actual type names and type structure into account.\nThis is useful for checking the type of persisted values.";
        buildType = "Simple";
      };
      components = {
        typehash = {
          depends  = [
            hsPkgs.base
            hsPkgs.syb
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.pureMD5
            hsPkgs.binary
          ];
        };
      };
    }