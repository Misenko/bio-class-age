#!/bin/bash

SALMON_NAME="salmon"
SALMON_VERSION="0.12.0"

function install_salmon {
  wget --no-verbose https://github.com/COMBINE-lab/${SALMON_NAME}/releases/download/v${SALMON_VERSION}/${SALMON_NAME}-${SALMON_VERSION}_linux_x86_64.tar.gz -P "${TMP_DIR}"
  tar -zxf "${TMP_DIR}/${SALMON_NAME}-${SALMON_VERSION}_linux_x86_64.tar.gz" -C "${INSTALL_DIR}"
  echo "export PATH=\$PATH:${INSTALL_DIR}/${SALMON_NAME}-${SALMON_VERSION}_linux_x86_64/bin" >> "$PATH_FILE"
}
