#!/bin/bash

BSMAP_VERSION="2.90"

function install_bsmap_dependencies {
  apt-get install -y zlib1g-dev
}

function install_bsmap {
  wget --no-verbose http://lilab.research.bcm.edu/dldcc-web/lilab/yxi/bsmap/bsmap-${BSMAP_VERSION}.tgz -P "${TMP_DIR}"
  mkdir -p "${INSTALL_DIR}/bsmap-${BSMAP_VERSION}"
  tar -zxf "${TMP_DIR}/bsmap-${BSMAP_VERSION}.tgz" -C "${TMP_DIR}"
  cd "${TMP_DIR}/bsmap-${BSMAP_VERSION}"
  make -j $(nproc)
  DESTDIR="${INSTALL_DIR}/bsmap-${BSMAP_VERSION}" make install
  echo "export PATH=\$PATH:${INSTALL_DIR}/bsmap-${BSMAP_VERSION}/usr/bin" >> "$PATH_FILE"
}
