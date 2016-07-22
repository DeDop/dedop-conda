#!/bin/bash

$PYTHON setup.py install

if [ `uname` == Darwin ]
then
    cp $RECIPE_DIR/dedop-shell.command $PREFIX/bin
else
    cp $RECIPE_DIR/dedop-shell.sh $PREFIX/bin
fi
