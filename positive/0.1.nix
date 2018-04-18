{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "positive";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund <hans@hanshoglund.se>";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Positive numbers.";
        description = "To be written.";
        buildType = "Simple";
      };
      components = {
        positive = {
          depends  = [
            hsPkgs.base
            hsPkgs.nats
          ];
        };
      };
    }