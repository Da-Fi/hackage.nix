{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "compact-string";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Twan van Laarhoven <twanvl@gmail.com>";
        author = "Twan van Laarhoven";
        homepage = "http://twan.home.fmf.nl/compact-string/";
        url = "";
        synopsis = "Fast, packed and strict strings with Unicode support, based on bytestrings.";
        description = "Fast, packed, strict strings with a list interface.\nBased on \"Data.ByteString\".\nMultiple encodings are supported.";
        buildType = "Simple";
      };
      components = {
        compact-string = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
      };
    }