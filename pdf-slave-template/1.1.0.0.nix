{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pdf-slave-template";
          version = "1.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Anton Gushcha 2016";
        maintainer = "ncrashed@gmail.com";
        author = "Anton Gushcha";
        homepage = "https://github.com/ncrashed/pdf-slave#readme";
        url = "";
        synopsis = "Template format definition for pdf-slave tool";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        pdf-slave-template = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
          ];
        };
      };
    }