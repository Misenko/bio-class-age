# bio-class-agec
Dockerfile for building virtual classroom for biology students - Analysis of gene expression class

## Usage
This image is intended for Analysis of gene expression class tought at Institute of Molecular Genetics of the ASCR, v. v. i.

## Software
* BCFtools
* Bioconductor
* BWA
* cutadapt
* FastQC
* gmap
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
* hgu133plus2cdf
* hgu133plus2probe
* hgu133plus2.db
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
* pd.rat230.2
* pheatmap
* preprocessCore
* qvalue
* rat2302.db
* sva
* vsn
* xtable

## Image
RStudio server is started on container start. User can log-in via username: `student` and password set via `PASSWORD` container environment variable. To access RStudio server container must bind port 8787.
