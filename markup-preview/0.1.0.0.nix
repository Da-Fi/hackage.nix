{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "markup-preview";
          version = "0.1.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "mhitza@gmail.com";
        author = "Marius Ghita";
        homepage = "";
        url = "";
        synopsis = "A simple markup document preview (markdown, textile, reStructuredText)";
        description = "A GUI application that renders the markup documents (markdown, textile, reStructuredText) into\nHTML and presents them into a web view. It also reloads the content automatically when the source\nfile changes.";
        buildType = "Simple";
      };
      components = {
        exes = {
          markup-preview = {
            depends  = [
              hsPkgs.base
              hsPkgs.gtk
              hsPkgs.webkit
              hsPkgs.pandoc
              hsPkgs.directory
              hsPkgs.temporary
              hsPkgs.transformers
              hsPkgs.mtl
            ];
          };
        };
      };
    }