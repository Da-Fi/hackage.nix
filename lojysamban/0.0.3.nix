{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "lojysamban";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = ".iocikun.juj. <PAF01143@nifty.ne.jp>";
        author = ".iocikun.juj. <PAF01143@nifty.ne.jp>";
        homepage = "";
        url = "";
        synopsis = "Prolog with lojban";
        description = "Prolog with lojban\n\n> lojysamban example/pendo.jbo\n> .i ma pendo la .ualeis.\n> .i la gromit\n>\n> lojysamban example/gugde.jbo\n> .i alabam. bu toldu'o misisip. bu boi joji'as. bu boi tenesis. bu boi florid. bu\n> .i tu'e alabam bu du lo kambla .ije joji'as. bu du lo kamxu'e .ije misisip bu\n> du lo kamxu'e .ije tenesis bu du lo kamri'o .ije florid bu du lo kamri'o tu'u\n> .ija tu'e alabam bu du lo kamri'o .ife joji'as bu du lo kamxu'e ...\n>\n> lojysamban example/patfu.jbo\n> .i ma dzena la jon.bois.jr.\n> .i la jon.bois.sr .a la zeb\n";
        buildType = "Simple";
      };
      components = {
        exes = {
          lojysamban = {
            depends  = [
              hsPkgs.base
              hsPkgs.lojbanParser
            ];
          };
        };
      };
    }