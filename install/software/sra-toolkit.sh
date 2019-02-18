#!/bin/bash

SRA_VERSION="2.9.4"

function install_sra-toolkit {
  wget --no-verbose https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/${SRA_VERSION}/sratoolkit.${SRA_VERSION}-ubuntu64.tar.gz -P "${TMP_DIR}"
  tar -zxf "${TMP_DIR}/sratoolkit.${SRA_VERSION}-ubuntu64.tar.gz" -C "${INSTALL_DIR}"
  echo "export PATH=\$PATH:${INSTALL_DIR}/sratoolkit.${SRA_VERSION}-ubuntu64/bin" >> "${PATH_FILE}"
}
