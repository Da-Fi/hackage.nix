{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "system-argv0";
          version = "0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/hs-argv0/";
        url = "";
        synopsis = "Get @argv[0]@ as a FilePath.";
        description = "Get @argv[0]@ as a FilePath. This is how the program was invoked, and might\nnot correspond to any actual file.\n\nUse this instead of @System.Environment.getProgName@ if you want the full\npath, and not just the last component.";
        buildType = "Simple";
      };
      components = {
        system-argv0 = {
          depends  = [
            hsPkgs.base
            hsPkgs.system-filepath
          ];
        };
      };
    }