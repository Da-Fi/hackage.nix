{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "xmlbf";
          version = "0.4.1";
        };
        license = "Apache-2.0";
        copyright = "Copyright 2017-2018 Renzo Carbonara";
        maintainer = "ren§ren*zone";
        author = "Renzo Carbonara";
        homepage = "https://gitlab.com/k0001/xmlbf";
        url = "";
        synopsis = "XML back and forth! Parser, renderer, ToXml, FromXml, fixpoints.";
        description = "XML back and forth! Parser, renderer, ToXml, FromXml, fixpoints.";
        buildType = "Simple";
      };
      components = {
        xmlbf = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.xmlbf
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }