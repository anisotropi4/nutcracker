# nutcracker
R and python3 environments for R version 4.3.1 and the latest python

For reasons, and in no small part to my trying to set up a working environment with libraries, here is a go at a build system for R and dependencies

## R Installation

To build from source and install in the current `nutcracker` directory and create symlinks to `R` and `Rscript` in `${HOME}/bin` run:

    $ ./set-R.sh
    
This also uses `Rscript` to install libraries listed in the `libraries.R` file

## python Installation

Set up a python virtual with the modules listed in the `requirements.txt` file run:

    $ ./set-python.sh
    
To access the virtual environment then run

   $ source ven/bin/activate

## Additional R dependencies

If you want OS `LAPACK` library support install:

    $ sudo apt install liblapack64-dev
