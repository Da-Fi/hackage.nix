{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "type-aligned";
          version = "0.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "atzeus@gmail.com";
        author = "Atze van der Ploeg";
        homepage = "https://github.com/atzeus/type-aligned";
        url = "";
        synopsis = "Various type-aligned sequence data structures.";
        description = "Various data structures for type aligned sequences: heterogeneous sequences where the types enforce the element order.";
        buildType = "Simple";
      };
      components = {
        type-aligned = {
          depends  = [ hsPkgs.base ];
        };
      };
    }