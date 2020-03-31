
library(RSQLite)
library(AnnotationForge)
library(GEOquery)

gpl10379<-getGEO("GPL10379")

stopifnot(gpl10379@dataTable@columns[1,1] == "ID",
          gpl10379@dataTable@columns[2,1] == "EntrezGeneID")


write.table(gpl10379@dataTable@table[,1:2],
            file=sprintf("%s/gpl10379_short.txt",tempdir()),
            quote=F,
            sep="\t",
            row.names=FALSE,
            col.names=FALSE
)

makeDBPackage("HUMANCHIP_DB",
              affy=FALSE,
              author = c("Steven Eschrich [aut, cre]"),
              maintainer = c("Steven Eschrich <Steven.Eschrich@moffitt.org>"),
              prefix="hursta2a520709custom",
              fileName=sprintf("%s/gpl10379_short.txt",tempdir()),
              baseMapType="eg",
              outputDir=".",
              version="1.0.0",
              manufacturer="Affymetrix",
              chipName="hursta2a520709custom",
              manufacturerUrl = "http://www.affymetrix.com")

