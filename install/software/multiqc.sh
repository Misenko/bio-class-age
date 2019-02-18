#!/bin/bash

function install_multiqc_dependencies {
  apt-get install -y python-pip
}

function install_multiqc {
  pip install --upgrade multiqc
}
