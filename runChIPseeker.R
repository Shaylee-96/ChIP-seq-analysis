library('ChIPseeker')
library('TxDb.Hsapiens.UCSC.hg38.knownGene')
#library('TxDb.Hsapiens.UCSC.hg19.knownGene')
txdb <- TxDb.Hsapiens.UCSC.hg38.knownGene
library('clusterProfiler')

peakInfo <- readPeakFile("_loss.bed")
a <- annotatePeak(peak = peakInfo, tssRegion = c(-1500, 1500),
                  TxDb= txdb, annoDb="org.Hs.eg.db")
plotAnnoPie(a)
write.table(as.data.frame(a@anno),file='ChIPseeker_output/loss_annotate.txt', quote = F, row.names = F, sep = "\t")


