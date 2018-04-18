{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "project-template";
          version = "0.1.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "michael@fpcomplete.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/fpco/haskell-ide";
        url = "";
        synopsis = "Specify Haskell project templates and generate files";
        description = "See initial blog post for explanation: <http://www.yesodweb.com/blog/2012/09/project-templates>";
        buildType = "Simple";
      };
      components = {
        project-template = {
          depends  = [
            hsPkgs.base
            hsPkgs.basic-prelude
            hsPkgs.base64-bytestring
            hsPkgs.base64-conduit
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.conduit
            hsPkgs.resourcet
            hsPkgs.containers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.project-template
              hsPkgs.basic-prelude
              hsPkgs.hspec
              hsPkgs.transformers
              hsPkgs.QuickCheck
              hsPkgs.base64-bytestring
              hsPkgs.conduit
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.system-filepath
            ];
          };
        };
      };
    }