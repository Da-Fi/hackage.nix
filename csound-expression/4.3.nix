{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "csound-expression";
          version = "4.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<anton.kholomiov@gmail.com>";
        author = "Anton Kholomiov";
        homepage = "https://github.com/anton-k/csound-expression";
        url = "";
        synopsis = "library to make electronic music";
        description = "Welcome to the simplest textual synthesizer.\n\n> dac \$ osc 440\n\nCsound-expression is a Haskell framework for computer music.\nWith the help of the library we can create our instruments on the fly.\nA few lines in the interpreter is enough to get the cool sound going\nout of your speakers. It can be used for simple daily sound-file processing\nor for a full-blown live performances.\n\nGot interested? Check out the guide: <https://github.com/anton-k/csound-expression/blob/master/tutorial/Index.md>\n\nAcknowledgements (I'd like to mention those who supported me a lot with their music and ideas):\n\n* music: entertainment for the braindead, three pandas and the moon, odno no, ann's'annat & alizbar, toe, iamthemorning, atoms for piece / radiohead, loscil, boards of canada,\nHozan Yamamoto, Tony Scott and Shinichi Yuize.\n\n* ideas: Conal Elliott, Oleg Kiselyov, Paul Hudak, Gabriel Gonzalez, Rich Hickey and Csound's community.";
        buildType = "Simple";
      };
      components = {
        csound-expression = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.process
            hsPkgs.data-default
            hsPkgs.Boolean
            hsPkgs.colour
            hsPkgs.csound-expression-typed
            hsPkgs.csound-expression-opcodes
          ];
        };
      };
    }