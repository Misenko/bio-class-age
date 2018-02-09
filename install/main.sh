#!/bin/bash

source $(dirname $0)/../common/variables.sh

for script in $(dirname $0)/software/*.sh; do
  source ${script}
done

make_tmp_dir

update_sources
install_utils
add_rstudio_sources
update_sources

install_rstudio
configure_rstudio

install_bwa
install_cutadapt_dependencies
install_cutadapt
install_fastqc
install_gmap
install_picard-tools
install_salmon
install_samtools_dependencies
install_samtools
install_sra-toolkit
install_trimmomatic

install_bioconductor_dependencies
install_bioconductor

clean_tmp_dir
