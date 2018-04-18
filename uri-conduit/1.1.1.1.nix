{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "uri-conduit";
          version = "1.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michaels@suite-sol.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/snoyberg/xml";
        url = "";
        synopsis = "Read and write URIs";
        description = "Read and write URIs";
        buildType = "Simple";
      };
      components = {
        uri-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.containers
            hsPkgs.failure
            hsPkgs.monad-control
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.deepseq
          ];
        };
      };
    }