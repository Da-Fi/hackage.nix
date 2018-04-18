{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hpaco-lib";
          version = "0.24.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tdammers@gmail.com";
        author = "Tobias Dammers";
        homepage = "https://bitbucket.org/tdammers/hpaco";
        url = "";
        synopsis = "Modular template compiler library";
        description = "Template compiler library, compiles template code into\nPHP or Javascript, or interprets it directly.";
        buildType = "Simple";
      };
      components = {
        hpaco-lib = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.transformers
            hsPkgs.strict
            hsPkgs.filepath
            hsPkgs.split
            hsPkgs.safe
            hsPkgs.file-embed
            hsPkgs.aeson
          ];
        };
      };
    }