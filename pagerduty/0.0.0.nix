{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pagerduty";
          version = "0.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2013-2014 Brendan Hay, 2014 Kim Altintop";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "http://github.com/brendanhay/pagerduty";
        url = "";
        synopsis = "Client library for PagerDuty Integration and REST APIs.";
        description = "PagerDuty is an alerting system for IT professionals. PagerDuty connects\nwith a variety of systems (including monitoring tools and ticketing\nsystems) and dispatches alerts via automated phone call, SMS and email.\nThis library implements the full PagerDuty Integration and REST APIs which\nare documented here:\n\n* Integration API - <http://developer.pagerduty.com/documentation/integration>\n\n* REST API - <http://developer.pagerduty.com/documentation/rest>\n\n/Warning:/ This is an experimental preview release which is still under\nheavy development and not intended for public consumption, caveat emptor!";
        buildType = "Simple";
      };
      components = {
        pagerduty = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.bytestring
            hsPkgs.bytestring-conversion
            hsPkgs.conduit
            hsPkgs.data-default-class
            hsPkgs.exceptions
            hsPkgs.generics-sop
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.mmorph
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
          ];
        };
      };
    }