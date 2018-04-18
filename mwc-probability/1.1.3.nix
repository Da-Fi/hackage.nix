{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mwc-probability";
          version = "1.1.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jared@jtobin.ca";
        author = "Jared Tobin";
        homepage = "http://github.com/jtobin/mwc-probability";
        url = "";
        synopsis = "Sampling function-based probability distributions.";
        description = "A simple probability distribution type, where distributions are characterized\nby sampling functions.\n\nThis implementation is a thin layer over @mwc-random@, which handles RNG\nstate-passing automatically by using a @PrimMonad@ like @IO@ or @ST s@ under\nthe hood.\n\nIncludes Functor, Applicative, Monad, and MonadTrans instances.\n\n/Examples/\n\nTransform a distribution's support while leaving its density structure\ninvariant:\n\n> -- uniform over [0, 1] to uniform over [1, 2]\n> succ <\$> uniform\n\nSequence distributions together using bind:\n\n> -- a beta-binomial conjugate distribution\n> beta 1 10 >>= binomial 10\n\nUse do-notation to build complex joint distributions from composable,\nlocal conditionals:\n\n> hierarchicalModel = do\n>   [c, d, e, f] <- replicateM 4 \$ uniformR (1, 10)\n>   a <- gamma c d\n>   b <- gamma e f\n>   p <- beta a b\n>   n <- uniformR (5, 10)\n>   binomial n p";
        buildType = "Simple";
      };
      components = {
        mwc-probability = {
          depends  = [
            hsPkgs.base
            hsPkgs.mwc-random
            hsPkgs.primitive
            hsPkgs.transformers
          ];
        };
      };
    }