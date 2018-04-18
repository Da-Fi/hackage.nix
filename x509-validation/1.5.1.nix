{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "x509-validation";
          version = "1.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-certificate";
        url = "";
        synopsis = "X.509 Certificate and CRL validation";
        description = "X.509 Certificate and CRL validation";
        buildType = "Simple";
      };
      components = {
        x509-validation = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.byteable
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.hourglass
            hsPkgs.data-default-class
            hsPkgs.pem
            hsPkgs.asn1-types
            hsPkgs.asn1-encoding
            hsPkgs.x509
            hsPkgs.x509-store
            hsPkgs.crypto-pubkey
            hsPkgs.crypto-pubkey-types
            hsPkgs.cryptohash
          ];
        };
      };
    }