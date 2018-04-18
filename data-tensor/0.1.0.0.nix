{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-tensor";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2015";
        maintainer = "tdammers@gmail.com";
        author = "Tobias Dammers";
        homepage = "https://bitbucket.org/tdammers/data-tensor";
        url = "";
        synopsis = "Tensor and Group typeclasses";
        description = "Typeclasses for Groups (Monoids with an 'invert'\noperation) and Tensors.";
        buildType = "Simple";
      };
      components = {
        data-tensor = {
          depends  = [ hsPkgs.base ];
        };
      };
    }