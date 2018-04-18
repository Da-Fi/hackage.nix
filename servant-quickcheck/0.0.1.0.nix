{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      long-tests = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-quickcheck";
          version = "0.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jkarni@gmail.com";
        author = "Julian K. Arni";
        homepage = "";
        url = "";
        synopsis = "QuickCheck entire APIs";
        description = "This packages provides QuickCheck properties that are tested across an entire\nAPI.";
        buildType = "Simple";
      };
      components = {
        servant-quickcheck = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.QuickCheck
            hsPkgs.bytestring
            hsPkgs.aeson
            hsPkgs.mtl
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.http-media
            hsPkgs.servant-client
            hsPkgs.servant-server
            hsPkgs.string-conversions
            hsPkgs.data-default-class
            hsPkgs.servant
            hsPkgs.warp
            hsPkgs.process
            hsPkgs.temporary
            hsPkgs.split
            hsPkgs.case-insensitive
            hsPkgs.hspec
            hsPkgs.text
            hsPkgs.pretty
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.bifunctors;
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-compat
              hsPkgs.servant-quickcheck
              hsPkgs.hspec
              hsPkgs.hspec-core
              hsPkgs.http-client
              hsPkgs.warp
              hsPkgs.servant-server
              hsPkgs.servant-client
              hsPkgs.servant
              hsPkgs.transformers
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-io
            ];
          };
        };
      };
    }