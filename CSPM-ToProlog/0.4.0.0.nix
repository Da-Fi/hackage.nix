{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "CSPM-ToProlog";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Marc Fontaine <fontaine@cs.uni-duesseldorf.de>";
        author = "2006-2011 Marc Fontaine";
        homepage = "";
        url = "";
        synopsis = "some modules specific for the ProB tool";
        description = "This package constains a translation from a CSPM AST to the representation\nused by the ProB tool.\nThis code is only interesting for ProB developers.";
        buildType = "Simple";
      };
      components = {
        CSPM-ToProlog = {
          depends  = [
            hsPkgs.CSPM-Frontend
            hsPkgs.pretty
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }