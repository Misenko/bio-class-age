#!/bin/bash

PICARD_VERSION="2.17.4"

function install_picard-tools {
  mkdir -p "${INSTALL_DIR}/picard-${PICARD_VERSION}"
  wget --no-verbose https://github.com/broadinstitute/picard/releases/download/${PICARD_VERSION}/picard.jar -P "${INSTALL_DIR}/picard-${PICARD_VERSION}"
}
