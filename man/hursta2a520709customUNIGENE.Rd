\name{hursta2a520709customUNIGENE}
\alias{hursta2a520709customUNIGENE}
\title{Map between Manufacturer Identifiers and UniGene cluster identifiers}
\description{
   hursta2a520709customUNIGENE is an R object that provides mappings between
   manufacturer identifiers and UniGene identifiers.
}
\details{
  Each manufacturer identifier is mapped to a UniGene identifier. An \code{NA}
  is reported if the manufacturer identifier cannot be mapped to UniGene at
  this time. 

  A UniGene identifier represents a cluster of sequences of a gene. Using
  UniGene identifiers one can query the UniGene database for information about
  the sequences or the Entrez Gene database for information about the genes.  
  
  Mappings were based on data provided by: Entrez Gene  
  ftp://ftp.ncbi.nlm.nih.gov/gene/DATA  
  With a date stamp from the source of: 2019-Apr26
}

\references{
  \url{https://www.ncbi.nlm.nih.gov/entrez/query.fcgi?db=gene}
}

\seealso{
  \itemize{
    \item \code{\link[AnnotationDbi]{AnnotationDb-class}} for use of
          the \code{select()} interface.
  }
}

\examples{
## select() interface:
## Objects in this package can be accessed using the select() interface
## from the AnnotationDbi package. See ?select for details.

## Bimap interface:
x <- hursta2a520709customUNIGENE
# Get the probe identifiers that are mapped to an UNIGENE ID
mapped_probes <- mappedkeys(x)
# Convert to a list
xx <- as.list(x[mapped_probes])
if(length(xx) > 0) {
  # Get the UNIGENE for the first five probes
  xx[1:5]
  # Get the first one
  xx[[1]]
}
}

\keyword{datasets}

