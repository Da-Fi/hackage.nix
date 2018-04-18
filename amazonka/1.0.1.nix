{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka";
          version = "1.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2015 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Comprehensive Amazon Web Services SDK";
        description = "This client library contains request and response logic to communicate\nwith Amazon Web Service compatible APIs using the types supplied by the\nvarious @amazonka-*@ service libraries. See the <http://hackage.haskell.org/packages/#cat:AWS AWS>\ncategory on Hackage for supported services.\n\nTo get started, import the desired @amazonka-*@ library (such as\n<http://hackage.haskell.org/package/amazonka-ml/docs/Network-AWS-MachineLearning.html Network.AWS.MachineLearning>)\nand one of the following:\n\n* \"Control.Monad.Trans.AWS\": The 'AWST' transformer and generalised operations.\n\n* \"Network.AWS\": The 'AWS' monad and 'MonadAWS' type class for automatically\nlifting operations when embedded as a layer in a transformer stack.\n\nBoth 'Control.Monad.Trans.AWS.AWST' and 'Network.AWS.AWS' provide functions\nthat are built upon a 'MonadFree' 'Command' DSL defined in\n\"Network.AWS.Free\". This allows writing a custom interpreter (say, for\nmocking purposes) and defining your own AWS logic if desired.\n\nGHC 7.8.4 and higher is officially supported.";
        buildType = "Simple";
      };
      components = {
        amazonka = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.conduit-extra
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.free
            hsPkgs.http-client
            hsPkgs.http-conduit
            hsPkgs.ini
            hsPkgs.lens
            hsPkgs.mmorph
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.resourcet
            hsPkgs.retry
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.transformers-compat
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.amazonka
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }