#!/bin/bash

GMAP_VERSION="2017-11-15"

function install_gmap {
  wget --no-verbose http://research-pub.gene.com/gmap/src/gmap-gsnap-${GMAP_VERSION}.tar.gz -P "${TMP_DIR}"
  tar -zxf "${TMP_DIR}/gmap-gsnap-${GMAP_VERSION}.tar.gz" -C "${TMP_DIR}"
  cd "${TMP_DIR}/gmap-${GMAP_VERSION}"
  ./configure --prefix "${INSTALL_DIR}/gmap-${GMAP_VERSION}"
  make -j $(nproc)
  make install
  echo "export PATH=\$PATH:${INSTALL_DIR}/gmap-${GMAP_VERSION}/bin" >> "$PATH_FILE"
}
