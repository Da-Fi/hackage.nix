{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "semigroupoids";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/semigroupoids";
        url = "";
        synopsis = "Haskell 98: Semigroupoids: Categories sans id, Applicative sans pure, Monad sans return, Alternative sans empty";
        description = "Provides a wide array of semigroupoids and operations for working with semigroupds.\n\nA Semigroupoid is a Category without the requirement of identity arrows for every object in the category.\n\nWhen working with comonads you often have the @\\<*\\>@ portion of an @Applicative@, but\nnot the @pure@. This was captured in Uustalu and Vene's \\\"Essence of Dataflow Programming\\\"\nin the form of the @ComonadZip@ class in the days before @Applicative@. Apply provides a weaker invariant, but for the comonads used for data flow programming (found in the streams package), this invariant is preserved. Applicative function composition forms a semigroupoid.\n\nSimilarly many structures are nearly a comonad, but not quite, for instance lists provide a reasonable 'extend' operation in the form of 'tails', but do not always contain a value.\n\n\nIdeally the following relationships would hold:\n\n> Traversable <---- Foldable <--- Functor ------> Alt ---------> Plus\n>      |               |            |                              |\n>      v               v            v                              v\n> Traversable1 <--- Foldable1     Apply --------> Applicative -> Alternative\n>                                   |               |              |\n>                                   v               v              v\n>                                 Bind ---------> Monad -------> MonadPlus\n>\n>\n>\n> Bitraversable <-- Bifoldable <- Bifunctor                      Semigroupoid\n>     |                  |          |                              |\n>     v                  v          v                              v\n> Bitraversable1 <- Bifoldable1   Biapply                        Category\n>                                                                  |\n>                                                                  v\n>                                                                Arrow\n\nThis lets us remove many of the restrictions from various monad transformers\nas in many cases the binding operation or @\\<*\\>@ operation does not require them.\n\nFinally, to work with these weaker structures it is beneficial to have containers\nthat can provide stronger guarantees about their contents, so versions of 'Traversable'\nand 'Foldable' that can be folded with just a 'Semigroup' are added.";
        buildType = "Simple";
      };
      components = {
        semigroupoids = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.comonad
            hsPkgs.semigroups
            hsPkgs.bifunctors
          ];
        };
      };
    }