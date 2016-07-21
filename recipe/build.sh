#!/bin/bash

$PYTHON setup.py install

if [ `uname` == Darwin ]
then
    cp $RECIPE_DIR/dedop.command $PREFIX/bin
fi
