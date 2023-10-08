# nutcracker
R build environment for version 4.3.1

For reasons, and in no small part to my trying to set up a working environment with libraries, here is a go at a build system for R and dependencies

## Installation

To build from source and install in the current `nutcracker` directory and create symlinks to `R` and `Rscript` in `${HOME}/bin` run:

    $ ./run.sh
    
This also uses `Rscript` to install libraries listed in the `libraries.R` file

## Additional dependencies

If you want OS `LAPACK` and `BLAS` library support install:

    $ sudo apt install liblapack64-dev libblasr-dev
