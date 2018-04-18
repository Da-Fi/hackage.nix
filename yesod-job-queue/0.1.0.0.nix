{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      example = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yesod-job-queue";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Daishi Nakajima";
        maintainer = "nakaji.dayo@gmail.com";
        author = "Daishi Nakajima";
        homepage = "https://github.com/nakaji-dayo/yesod-job-queue#readme";
        url = "";
        synopsis = "Background jobs library for Yesod. contains management API and web interface. Queue backend is Redis.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        yesod-job-queue = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
            hsPkgs.hedis
            hsPkgs.uuid
            hsPkgs.aeson
            hsPkgs.cron
            hsPkgs.monad-logger
            hsPkgs.bytestring
            hsPkgs.lens
            hsPkgs.classy-prelude-yesod
            hsPkgs.api-field-json-th
            hsPkgs.yesod
            hsPkgs.file-embed
            hsPkgs.text
            hsPkgs.time
          ];
        };
        exes = {
          yesod-job-queue-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.yesod
              hsPkgs.yesod-core
              hsPkgs.yesod-job-queue
              hsPkgs.persistent-sqlite
              hsPkgs.resourcet
              hsPkgs.monad-logger
              hsPkgs.classy-prelude-yesod
            ];
          };
        };
        tests = {
          yesod-job-queue-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.yesod-job-queue
            ];
          };
        };
      };
    }