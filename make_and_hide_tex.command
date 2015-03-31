#!/usr/bin/env bash

BASEDIR=$(dirname $0)
cd $BASEDIR

latexmk -pdf -pv paper.tex

if [[ "$OSTYPE" == "darwin"* ]]; then
    for i in *.{out,log,aux,toc,bbl,dvi,blg,synctex.gz,fdb_latexmk,bcf,fls,run.xml,tdo,auxlock};
        do chflags hidden $i;
    done
fi
