# dedop-conda

Conda recipe for the DeDop package contained in https://github.com/DeDop/dedop

Install `conda-build` in your root Miniconda:

    source activate
    conda install conda-build
    
Clone this repo:
    
    git clone https://github.com/DeDop/dedop-conda.git
    
Build conda package `dedop`:
    
    cd dedop-conda
    conda build dedop
     
     
Test new conda package `dedop` in test environment `dedop-test`
     
    conda create -n dedop-test python=3
    source activate dedop-test
    conda install --use-local dedop
    ...
    dedop --help
