# pdal-notebook

This repository is meant to serve as a resource for those learning point cloud
processing with the Point Data Abstraction Library (PDAL).

The simplest way to get started for many users is to use Binder. Binder is a
way to run Jupyter notebooks in the cloud. Just click the badge below to get
started!

<!-- update badge away from branch at appropriate time -->
[![Binder](https://mybinder.org/badge.svg)](https://mybinder.org/v2/gh/chambbj/pdal-notebook/convert-to-binder?filepath=index.ipynb)

## Installation

To run these notebooks locally, you will need to have a working installation of
both PDAL and Jupyter, along with some additional dependencies. For your
convenience, we have provided a Conda environment.yml file that will install
all of the necessary dependencies in an isolated environment (this is in fact
the same environment that is created on Binder). The commands below will create
and activate the environment.

<!-- insert links to Conda install information -->

```bash
conda env create -f environment.yml
conda activate pdal-notebook
```

Once the environment is activated, Jupyter can be started with the following
command.

```bash
jupyter notebook index.ipynb
```

