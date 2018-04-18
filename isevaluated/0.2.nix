{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "isevaluated";
          version = "0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "svein.ove@aas.no";
        author = "Svein Ove Aas";
        homepage = "";
        url = "";
        synopsis = "Check whether a value has been evaluated";
        description = "An IO action to check whether some value has been evaluated.\n\nIf isEvaluated returns True, evaluating it to weak-head\nnormal form won't throw exceptions or take time.";
        buildType = "Simple";
      };
      components = {
        isevaluated = {
          depends  = [
            hsPkgs.base
            hsPkgs.vacuum
          ];
        };
      };
    }