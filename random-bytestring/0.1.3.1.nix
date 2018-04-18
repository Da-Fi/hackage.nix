{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      with-pcg = true;
    } // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "random-bytestring";
          version = "0.1.3.1";
        };
        license = "MIT";
        copyright = "Copyright (c) 2017-2018 Lars Kuhtz <lakuhtz@gmail.com>";
        maintainer = "Lars Kuhtz <lakuhtz@gmail.com>";
        author = "Lars Kuhtz <lakuhtz@gmail.com>";
        homepage = "https://www.github.com/larskuhtz/random-bytestring";
        url = "";
        synopsis = "Efficient generation of random bytestrings";
        description = "Efficient generation of random bytestrings. The implementation\npopulates uninitialized memory with uniformily distributed random\n64 bit words (and 8 bit words for remaining bytes at the end of\nthe bytestring).\n\nRandom words are generated using the PRNG from\nthe [mwc-random](https://hackage.haskell.org/package/mwc-random) package\nor the [pcg-random](https://hackage.haskell.org/package/pcg-random)\npackage. It is also possible to use a custom PRNG by providing\nan instance for the 'RandomWords' type class and using the function\n'generate' from the module \"Data.ByteString.Random.Internal\".\n\nThe generated byte strings are suitable for statistical\napplications. They are /not/ suitable for cryptographic\napplications.\n\n![benchmarks](https://hackage.haskell.org/package/random-bytestring-0.1.3.1/src/benchmarks.png)\n\n![detailed benchmarks](https://hackage.haskell.org/package/random-bytestring-0.1.3.1/src/benchmarks-details.png)";
        buildType = "Simple";
      };
      components = {
        random-bytestring = {
          depends  = ([
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mwc-random
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.nats) ++ pkgs.lib.optional _flags.with-pcg hsPkgs.pcg-random;
        };
        benchmarks = {
          benchmark = {
            depends  = ([
              hsPkgs.random-bytestring
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.entropy
              hsPkgs.ghc-prim
              hsPkgs.mwc-random
              hsPkgs.primitive
              hsPkgs.random
              hsPkgs.cryptonite
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.nats) ++ pkgs.lib.optional _flags.with-pcg hsPkgs.pcg-random;
          };
          benchmark-compare = {
            depends  = ([
              hsPkgs.random-bytestring
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.entropy
              hsPkgs.ghc-prim
              hsPkgs.mwc-random
              hsPkgs.primitive
              hsPkgs.random
              hsPkgs.cryptonite
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.nats) ++ pkgs.lib.optional _flags.with-pcg hsPkgs.pcg-random;
          };
          eventlog-compare = {
            depends  = ([
              hsPkgs.random-bytestring
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.entropy
              hsPkgs.ghc-prim
              hsPkgs.mwc-random
              hsPkgs.primitive
              hsPkgs.random
              hsPkgs.cryptonite
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.nats) ++ pkgs.lib.optional _flags.with-pcg hsPkgs.pcg-random;
          };
        };
      };
    }