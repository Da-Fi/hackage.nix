{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lucid-svg";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Jeffrey Rosenbluth";
        maintainer = "jeffrey.rosenbluth@gmail.com";
        author = "Jeffrey Rosenbluth";
        homepage = "http://github.com/jeffreyrosenbluth/lucid-svg.git";
        url = "";
        synopsis = "DSL for SVG using lucid for HTML";
        description = "Easy to write SVG in the syle of lucid.";
        buildType = "Simple";
      };
      components = {
        lucid-svg = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.lucid
          ];
        };
      };
    }