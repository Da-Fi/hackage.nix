{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pipes-postgresql-simple";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Oliver Charles 2013";
        maintainer = "ollie@ocharles.org.uk";
        author = "Oliver Charles";
        homepage = "";
        url = "";
        synopsis = "Convert various postgresql-simple calls to work with pipes";
        description = "This library provides a few Producers and Consumers that allow\n@postgresql-simple@ calls to be made within the @pipes@ framework. Currently,\nthere is support for:\n\n* Streaming queries\n\n* Streaming entire tables to and from a @ByteString@.";
        buildType = "Simple";
      };
      components = {
        pipes-postgresql-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.pipes
            hsPkgs.postgresql-simple
            hsPkgs.pipes-concurrency
            hsPkgs.transformers
            hsPkgs.stm
          ];
        };
      };
    }