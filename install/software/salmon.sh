#!/bin/bash

SALMON_VERSION="0.9.1"

function install_salmon {
  wget --no-verbose https://github.com/COMBINE-lab/salmon/releases/download/v${SALMON_VERSION}/Salmon-${SALMON_VERSION}_linux_x86_64.tar.gz -P "${TMP_DIR}"
  tar -zxf "${TMP_DIR}/Salmon-${SALMON_VERSION}_linux_x86_64.tar.gz" -C "${INSTALL_DIR}"
  echo "export PATH=\$PATH:${INSTALL_DIR}/Salmon-latest_linux_x86_64/bin" >> "$PATH_FILE"
}
