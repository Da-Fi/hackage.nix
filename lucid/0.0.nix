{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "lucid";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Clear to write, read and edit DSL for HTML";
        description = "Clear to write, read and edit DSL for HTML. See the 'Lucid' module\nfor description and documentation.";
        buildType = "Simple";
      };
      components = {
        lucid = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }