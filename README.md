# dedop-conda

Conda recipe and Anaconda installer for the DeDop tool contained in https://github.com/DeDop/dedop

## Conda package

Install `conda-build` in your root Miniconda:

    source activate
    conda install conda-build
    
Clone this repo:
    
    git clone https://github.com/DeDop/dedop-conda.git
    
Build Conda package `dedop` (see `recipe/meta.yaml`):
    
    cd dedop-conda
    conda build recipe
     
     
Test new Conda package `dedop` in test environment `dedop-test`
     
    conda create -n dedop-test python=3
    source activate dedop-test
    conda install --use-local dedop
    ...
    dedop --help

## Anaconda installer

Warning: there is still an absolute (Windows!) path in `installer/construct.yaml` which will remain
until we have uploaded the DeDop Conda package to a public repository.

Install `constructor` in your root Miniconda:

    source activate
    conda install constructor

Clone this repo:

    git clone https://github.com/DeDop/dedop-conda.git

Build Anaconda installer `dedop` (see `installer/construct.yaml`):

    cd dedop-conda
    constructor installer
