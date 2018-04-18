{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "jarfind";
          version = "0.1.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "ekirpichov@gmail.com";
        author = "Eugene Kirpichov";
        homepage = "";
        url = "";
        synopsis = "Tool for searching java classes, members and fields in classfiles and JAR archives";
        description = "Search classfiles and JARs: like, all public 'close' methods in classes with 'Stream' in their name in a JAR.\nMostly for debugging NoSuchMethodError's etc. resulting from an outdated JAR and alike.";
        buildType = "Simple";
      };
      components = {
        exes = {
          jarf = {
            depends  = [
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.array
              hsPkgs.zip-archive
              hsPkgs.regex-pcre
            ] ++ [ hsPkgs.base ];
          };
        };
      };
    }