#!/usr/bin/Rscript

if (!requireNamespace("BiocManager"))
    install.packages("BiocManager")
BiocManager::install()

packages <- c("Biobase","BiocParallel","DESeq2","GOstats","GOsummaries","GenomicAlignments","GenomicFeatures","Heatplus","KEGG.db","PoiClaClu","RColorBrewer","ReportingTools","Rsamtools","affy","airway","annotate","arrayQualityMetrics","beadarray","biomaRt","dendextend","gdata","genefilter","goseq","gplots","gtools","hgu133plus2cdf","hgu133plus2probe","hgu133plus2.db","hwriter","illuminaHumanv3.db","lattice","limma","lumi","made4","oligo","org.Hs.eg.db","org.Mm.eg.db","org.Rn.eg.db","pd.rat230.2","pheatmap","preprocessCore","qvalue","rat2302.db","sva","vsn","xtable")

BiocManager::install(packages)

for(package in packages) {
  if(package %in% rownames(installed.packages()) == FALSE) {
    stop("Package '", package, "' was not installed")
  }
}

library(BiocManager)
BiocManager::valid()
