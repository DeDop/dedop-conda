[![Build status](https://ci.appveyor.com/api/projects/status/t5kgos0p7d6gs3dn?svg=true)](https://ci.appveyor.com/project/hans-permana/dedop-conda)

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
<pre>
cd dedop-conda
conda build recipe
conda build --output-folder output/directory recipe <b>#only for Linux/MacOS</b>
</pre>
     
Test new Conda package `dedop` in test environment `dedop-test`
     
    conda create -n dedop-test python=3
    source activate dedop-test
    conda install --use-local dedop
    ...
    dedop --help
    
To upload the package to Anaconda Cloud (public repository)

    conda install anaconda-client
    anaconda login
    anaconda upload path/to/package.tar.bz2

Current dedop repository URL: https://anaconda.org/pans/dedop/files

## Anaconda installer

### Building the installer

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
* We would actually like to create an installer, where Miniconda is just a sub-tree. This is required because later we'll have to add an Electron GUI with HTML/JS sources:
```
    <install-dir>/
        bin/
        docs/
        notebooks/
        gui/
        python/
        ...
```
* Checkout: https://github.com/conda/conda-launch  
