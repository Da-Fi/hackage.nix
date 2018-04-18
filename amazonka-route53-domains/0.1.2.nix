{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "amazonka-route53-domains";
          version = "0.1.2";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/amazonka";
        url = "";
        synopsis = "Amazon Route 53 Domains SDK.";
        description = "Pending\n\n/See:/ <http://docs.aws.amazon.com/Route53/latest/APIReference/actions-on-domain-registrations.html AWS API Reference>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        amazonka-route53-domains = {
          depends  = [
            hsPkgs.amazonka-core
            hsPkgs.base
          ];
        };
      };
    }