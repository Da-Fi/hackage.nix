{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "spir-v";
          version = "0.0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "haskell@monoid.al";
        author = "Joe Hermaszewski";
        homepage = "https://github.com/expipiplus1/spir-v";
        url = "";
        synopsis = "Some utilities for reading and writing SPIR-V files";
        description = "This package exposes information scraped from the SPIR-V spec found here: https://www.khronos.org/registry/spir-v/specs/1.0/SPIRV.html\nThis is a very early version, it's not quite ready to be used";
        buildType = "Simple";
      };
      components = {
        spir-v = {
          depends  = [ hsPkgs.base ];
        };
      };
    }