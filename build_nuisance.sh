#!/bin/bash

source setup_generators.sh

# Clone and build Nuisance
git clone https://github.com/uboone/nuisance.git
cd nuisance
git checkout feature/ub-samples

mkdir build
cd build
cmake ../
make install

source Linux/setup.sh
