{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "urlencoded";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "philip.weaver@gmail.com";
        author = "Josh Hoyt, Philip Weaver";
        homepage = "https://github.com/pheaver/urlencoded";
        url = "";
        synopsis = "Generate or process x-www-urlencoded data";
        description = "Generate or process x-www-urlencoded data as it\nappears in HTTP or HTTPS URIs and HTTP POSTs. See\n<http://www.w3.org/TR/html401/interact/forms.html#h-17.13.4.1>";
        buildType = "Custom";
      };
      components = {
        urlencoded = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.split
          ];
        };
        exes = {
          test = {
            depends  = pkgs.lib.optional _flags.test hsPkgs.QuickCheck;
          };
        };
      };
    }