{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hruby";
          version = "0.3.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bartavelle@gmail.com";
        author = "Simon Marechal";
        homepage = "";
        url = "";
        synopsis = "Embed a Ruby intepreter in your Haskell program !";
        description = "This doesn't work with Ruby 1.9. Everything you need should be in Foreign.Ruby.Safe.";
        buildType = "Custom";
      };
      components = {
        hruby = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.attoparsec
            hsPkgs.vector
            hsPkgs.unordered-containers
            hsPkgs.stm
            hsPkgs.scientific
          ];
          libs = [ pkgs.ruby ];
        };
        tests = {
          test-roundtrip = {
            depends  = [
              hsPkgs.base
              hsPkgs.hruby
              hsPkgs.aeson
              hsPkgs.QuickCheck
              hsPkgs.text
              hsPkgs.attoparsec
              hsPkgs.vector
            ];
          };
        };
      };
    }