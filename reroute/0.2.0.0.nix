{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "reroute";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "(c) 2014 Alexander Thiemann <mail@agrafix.net>, Tim Baumann <tim@timbaumann.info>";
        maintainer = "mail@agrafix.net";
        author = "Alexander Thiemann <mail@agrafix.net>, Tim Baumann <tim@timbaumann.info>";
        homepage = "http://github.com/agrafix/reroute";
        url = "";
        synopsis = "abstract implementation of typed and untyped web routing";
        description = "abstraction over how urls with/without parameters are mapped to their corresponding handlers";
        buildType = "Simple";
      };
      components = {
        reroute = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.regex-compat
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.path-pieces
            hsPkgs.hspec2
            hsPkgs.vector
            hsPkgs.deepseq
            hsPkgs.graph-core
          ];
        };
        tests = {
          reroutetest = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.text
              hsPkgs.unordered-containers
              hsPkgs.regex-compat
              hsPkgs.hashable
              hsPkgs.mtl
              hsPkgs.path-pieces
              hsPkgs.hspec2
              hsPkgs.vector
              hsPkgs.deepseq
              hsPkgs.graph-core
            ];
          };
        };
      };
    }