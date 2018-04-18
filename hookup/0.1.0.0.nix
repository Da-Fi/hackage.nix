{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hookup";
          version = "0.1.0.0";
        };
        license = "ISC";
        copyright = "2016 Eric Mertens";
        maintainer = "emertens@gmail.com";
        author = "Eric Mertens";
        homepage = "https://github.com/glguy/irc-core";
        url = "";
        synopsis = "Abstraction over creating network connections with SOCKS5 and TLS";
        description = "This package provides an abstraction for communicating with line-oriented\nnetwork services while abstracting over the use of SOCKS5 and TLS (via OpenSSL)";
        buildType = "Simple";
      };
      components = {
        hookup = {
          depends  = [
            hsPkgs.base
            hsPkgs.socks
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.HsOpenSSL
            hsPkgs.HsOpenSSL-x509-system
            hsPkgs.template-haskell
          ];
          libs = [ pkgs.ssl ];
        };
      };
    }