{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "jack";
          version = "0.6.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
        author = "Soenke Hahn, Henning Thielemann";
        homepage = "http://www.haskell.org/haskellwiki/JACK";
        url = "";
        synopsis = "Bindings for the JACK Audio Connection Kit";
        description = "Very basic bindings for the JACK Audio Connection Kit";
        buildType = "Simple";
      };
      components = {
        jack = {
          depends  = [
            hsPkgs.midi
            hsPkgs.bytestring
            hsPkgs.explicit-exception
            hsPkgs.transformers
            hsPkgs.enumset
            hsPkgs.array
            hsPkgs.unix
            hsPkgs.base
          ];
        };
        exes = {
          amplify = {
            libs = [ pkgs.jack ];
          };
          impulse-train = {
            libs = [ pkgs.jack ];
          };
          midimon = {
            libs = [ pkgs.jack ];
          };
        };
      };
    }