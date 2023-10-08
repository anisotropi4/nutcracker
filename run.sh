#!/usr/bin/env bash
RVERSION=R-4.3.1

FILE="${RVERSION}.tar.gz"
DOWNLOAD=${HOME}/Downloads
if [ ! -s ${DOWNLOAD}/${FILE} ]; then
     URL="https://cran.r-project.org/src/base/R-4"
     curl -o ${DOWNLOAD}/${FILE} ${URL}/${FILE} 
fi

./build.sh ${RVERSION}

for EXE in R Rscript
do
   ln -sf ${HOME}/nutcracker/bin/${EXE} ${HOME}/bin/${EXE}
done

Rscript libraries.R
