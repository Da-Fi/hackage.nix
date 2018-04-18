{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      mtl2 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "rvar";
          version = "0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "James Cook <james.cook@usma.edu>";
        author = "James Cook <james.cook@usma.edu>";
        homepage = "https://github.com/mokus0/random-fu";
        url = "";
        synopsis = "Random Variables";
        description = "Random number generation based on modeling random\nvariables by an abstract type ('RVar') which can be\ncomposed and manipulated monadically and sampled in\neither monadic or \\\"pure\\\" styles.\nThe primary purpose of this library is to support\ndefining and sampling a wide variety of high quality\nrandom variables.  Quality is prioritized over speed,\nbut performance is an important goal too.\nIn my testing, I have found it capable of speed\ncomparable to other Haskell libraries, but still\na fair bit slower than straight C implementations of\nthe same algorithms.";
        buildType = "Simple";
      };
      components = {
        rvar = {
          depends  = [
            hsPkgs.base
            hsPkgs.MonadPrompt
            hsPkgs.random-source
            hsPkgs.transformers
          ] ++ [ hsPkgs.mtl ];
        };
      };
    }