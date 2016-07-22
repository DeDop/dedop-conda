# dedop-conda

Conda recipe and Anaconda installer for the DeDop tool contained in https://github.com/DeDop/dedop

## Conda package

### Building the DeDop package

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

### Remaining problems & TODOs

* Must upload the package to a public Anaconda channel

## Anaconda installer

### Building the installer

*Warning: there is still an absolute (Windows!) path in `installer/construct.yaml` which will remain
until we have uploaded the DeDop Conda package to a public repository.*

Install `constructor` in your root Miniconda:

    source activate
    conda install constructor

Clone this repo:

    git clone https://github.com/DeDop/dedop-conda.git

Build Anaconda installer `dedop` (see `installer/construct.yaml`):

    cd dedop-conda
    constructor installer

### Remaining problems & TODOs

* For the DeDop shell, we'd like to have desktop icons for Windows, Mac OS and at least Ubuntu.
  Currently, we can only have a Windows menu group (which is ok).
  See https://github.com/conda/constructor/issues/38
* On Windows, `constructor` will install anything it finds in a package's `Menu` entry.
  Therefore users currently find also entries for Jupyter Notebook and the IPython QT Console, 
  which is annoying.
* We would actually like to create an installer, where Miniconda is just a sub-tree:
  ```
    <install-dir>/
        bin/
        docs/
        notebooks/
        gui/
        python/
        ...
  ```
  This is required because later we'll have to add an Electron GUI with HTML/JS sources.
  
