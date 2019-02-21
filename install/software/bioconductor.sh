#!/bin/bash

function install_bioconductor_dependencies {
  apt-get install -y libssl-dev libmariadb-client-lgpl-dev libhdf5-dev
}

function install_bioconductor {
  $(dirname $0)/software/bioconductor.r
}
