# bio-class-age
Dockerfile for building virtual classroom for biology students - Analysis of gene expression class

## Usage
This image is intended for Analysis of gene expression class tought at Institute of Molecular Genetics of the ASCR, v. v. i.

## Software
* BCFtools
* Bioconductor
* BSMAP
* BWA
* cutadapt
* FastQC
* gmap
* HTSlib
* MultiQC
* Picard-tools
* RStudio Desktop + Server
* salmon
* samtools
* SRA Toolkit
* Trimmomatic

## Bioconductor modules
* Biobase
* BiocParallel
* DESeq2
* DT
* GOstats
* GOsummaries
* GenomicAlignments
* GenomicFeatures
* Heatplus
* KEGG.db
* PoiClaClu
* RColorBrewer
* ReportingTools
* Rsamtools
* Seurat
* affy
* airway
* annotate
* arrayQualityMetrics
* beadarray
* biomaRt
* dendextend
* gdata
* genefilter
* goseq
* gplots
* gtools
* hgu133plus2.db
* hgu133plus2cdf
* hgu133plus2probe
* hwriter
* illuminaHumanv3.db
* lattice
* limma
* lumi
* made4
* oligo
* org.Hs.eg.db
* org.Mm.eg.db
* org.Rn.eg.db
* pander
* pd.rat230.2
* pheatmap
* preprocessCore
* qvalue
* rat2302.db
* rmarkdown
* sva
* tidyverse
* vsn
* xtable

## Image
RStudio server is started on container start. User can log-in via username: `student` and password set via `PASSWORD` container environment variable. To access RStudio server container must be bind on port 8787.
