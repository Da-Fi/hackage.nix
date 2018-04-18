{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cef3-raw";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Maksymilian.Owsianny@gmail.com";
        author = "Maksymilian Owsianny, Daniel Austin";
        homepage = "";
        url = "";
        synopsis = "Raw CEF3 bindings";
        description = "Raw bindings to <https://bitbucket.org/chromiumembedded/cef CEF3> (Chromium\nEmbedded Framework). For more info and installation instructions see the\n<https://github.com/haskell-ui/cef3-raw/blob/master/README.md README>";
        buildType = "Simple";
      };
      components = {
        cef3-raw = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ] ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
          libs = pkgs.lib.optional system.isLinux pkgs.cef ++ pkgs.lib.optional system.isWindows pkgs.libcef;
        };
      };
    }