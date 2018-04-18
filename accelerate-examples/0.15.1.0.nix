{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      gui = true;
      ekg = true;
      codespeed = false;
      cuda = true;
      llvm-cpu = false;
      llvm-gpu = false;
      cilk = false;
      nofib = true;
      smvm = true;
      crystal = true;
      canny = true;
      mandelbrot = true;
      fluid = true;
      nbody = true;
      smoothlife = true;
      hashcat = true;
      fft = true;
      pagerank = true;
      ray = true;
      kmeans = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "accelerate-examples";
          version = "0.15.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
        author = "The Accelerate Team";
        homepage = "https://github.com/AccelerateHS/accelerate-examples";
        url = "";
        synopsis = "Examples using the Accelerate library";
        description = "This package demonstrates a number of computation kernels and applications\nshowcasing the /Accelerate/ language and associated backend implementations.\nIt is also used for performance and regression testing.\n\nRefer to the main /Accelerate/ package for more information:\n<http://hackage.haskell.org/package/accelerate>\n";
        buildType = "Simple";
      };
      components = {
        accelerate-examples = {
          depends  = ((((([
            hsPkgs.accelerate
            hsPkgs.ansi-wl-pprint
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.criterion
            hsPkgs.directory
            hsPkgs.fclabels
            hsPkgs.HUnit
            hsPkgs.mwc-random
            hsPkgs.QuickCheck
            hsPkgs.test-framework
            hsPkgs.test-framework-hunit
            hsPkgs.test-framework-quickcheck2
          ] ++ pkgs.lib.optional _flags.cuda hsPkgs.accelerate-cuda) ++ pkgs.lib.optional _flags.llvm-cpu hsPkgs.accelerate-llvm-native) ++ pkgs.lib.optional _flags.llvm-gpu hsPkgs.accelerate-llvm-ptx) ++ pkgs.lib.optional _flags.cilk hsPkgs.accelerate-icc-opencl) ++ pkgs.lib.optional _flags.ekg hsPkgs.ekg) ++ optionals _flags.codespeed [
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.HTTP
            hsPkgs.http-types
            hsPkgs.network
            hsPkgs.process
            hsPkgs.statistics
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
          ];
        };
        exes = {
          accelerate-nofib = {
            depends  = pkgs.lib.optional _flags.cuda hsPkgs.accelerate-cuda ++ optionals (!(!_flags.nofib)) [
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.accelerate-fft
              hsPkgs.accelerate-io
              hsPkgs.base
              hsPkgs.array
              hsPkgs.containers
              hsPkgs.fclabels
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.random
            ];
            libs = [ pkgs."stdc++" ];
          };
          accelerate-smvm = {
            depends  = optionals (!(!_flags.smvm)) [
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.bytestring-lexing
              hsPkgs.fclabels
              hsPkgs.primitive
              hsPkgs.mwc-random
              hsPkgs.vector
              hsPkgs.vector-algorithms
            ];
          };
          accelerate-crystal = {
            depends  = optionals (!(!_flags.crystal)) [
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.base
              hsPkgs.fclabels
              hsPkgs.gloss-raster-accelerate
            ];
          };
          accelerate-canny = {
            depends  = optionals (!(!_flags.canny)) [
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.accelerate-io
              hsPkgs.base
              hsPkgs.fclabels
              hsPkgs.repa
              hsPkgs.repa-io
              hsPkgs.vector
            ];
          };
          accelerate-mandelbrot = {
            depends  = optionals (!(!_flags.mandelbrot)) [
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.accelerate-io
              hsPkgs.base
              hsPkgs.fclabels
              hsPkgs.gloss
              hsPkgs.gloss-accelerate
            ];
          };
          accelerate-fluid = {
            depends  = optionals (!(!_flags.fluid)) [
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.accelerate-io
              hsPkgs.base
              hsPkgs.bmp
              hsPkgs.fclabels
              hsPkgs.gloss
              hsPkgs.gloss-rendering
            ];
          };
          accelerate-nbody = {
            depends  = optionals (!(!_flags.nbody)) [
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.base
              hsPkgs.fclabels
              hsPkgs.gloss
              hsPkgs.mwc-random
            ];
          };
          accelerate-smoothlife = {
            depends  = pkgs.lib.optional _flags.cuda hsPkgs.accelerate-cuda ++ optionals (!(!_flags.smoothlife)) [
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.accelerate-fft
              hsPkgs.accelerate-io
              hsPkgs.base
              hsPkgs.fclabels
              hsPkgs.gloss
              hsPkgs.gloss-accelerate
              hsPkgs.mwc-random
            ];
          };
          accelerate-hashcat = {
            depends  = optionals (!(!_flags.hashcat)) [
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-lexing
              hsPkgs.cereal
              hsPkgs.criterion
              hsPkgs.fclabels
              hsPkgs.mwc-random
            ];
          };
          accelerate-fft = {
            depends  = optionals (!(!_flags.fft)) [
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.accelerate-fft
              hsPkgs.accelerate-io
              hsPkgs.base
              hsPkgs.fclabels
              hsPkgs.filepath
            ];
          };
          accelerate-pagerank = {
            depends  = optionals (!(!_flags.pagerank)) [
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.accelerate-io
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.fclabels
              hsPkgs.vector
              hsPkgs.vector-algorithms
            ];
          };
          accelerate-ray = {
            depends  = optionals (!(!_flags.ray)) [
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.base
              hsPkgs.fclabels
              hsPkgs.gloss
              hsPkgs.gloss-accelerate
              hsPkgs.gloss-raster-accelerate
            ];
          };
          accelerate-kmeans = {
            depends  = optionals (!(!_flags.kmeans)) [
              hsPkgs.accelerate
              hsPkgs.accelerate-examples
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.directory
              hsPkgs.fclabels
              hsPkgs.normaldistribution
              hsPkgs.random
            ];
          };
        };
      };
    }