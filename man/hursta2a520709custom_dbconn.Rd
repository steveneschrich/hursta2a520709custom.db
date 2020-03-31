
\name{hursta2a520709custom_dbconn}

\alias{hursta2a520709custom_dbconn}
\alias{hursta2a520709custom_dbfile}
\alias{hursta2a520709custom_dbschema}
\alias{hursta2a520709custom_dbInfo}


\title{Collect information about the package annotation DB}

\description{
  Some convenience functions for getting a connection object to (or collecting
  information about) the package annotation DB.
}

\usage{
  hursta2a520709custom_dbconn()
  hursta2a520709custom_dbfile()
  hursta2a520709custom_dbschema(file="", show.indices=FALSE)
  hursta2a520709custom_dbInfo()
}

\arguments{
  \item{file}{
    A connection, or a character string naming the file to print to (see
    the \code{file} argument of the \code{\link[base]{cat}} function for
    the details).
  }
  \item{show.indices}{
    The CREATE INDEX statements are not shown by default.
    Use \code{show.indices=TRUE} to get them.
  }
}

\details{
  \code{hursta2a520709custom_dbconn} returns a connection object to the
  package annotation DB.  IMPORTANT: Don't call
  \code{\link[DBI:dbConnect]{dbDisconnect}} on the connection object
  returned by \code{hursta2a520709custom_dbconn} or you will break all the
  \code{\link[AnnotationDbi:AnnDbObj-class]{AnnDbObj}} objects defined
  in this package!

  \code{hursta2a520709custom_dbfile} returns the path (character string) to the
  package annotation DB (this is an SQLite file).

  \code{hursta2a520709custom_dbschema} prints the schema definition of the
  package annotation DB.

  \code{hursta2a520709custom_dbInfo} prints other information about the package
  annotation DB.
}

\value{
  \code{hursta2a520709custom_dbconn}: a DBIConnection object representing an
  open connection to the package annotation DB.

  \code{hursta2a520709custom_dbfile}: a character string with the path to the
  package annotation DB.

  \code{hursta2a520709custom_dbschema}: none (invisible \code{NULL}).

  \code{hursta2a520709custom_dbInfo}: none (invisible \code{NULL}).
}

\seealso{
  \code{\link[DBI:dbSendQuery]{dbGetQuery}},
  \code{\link[DBI:dbConnect]{dbConnect}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbconn}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbfile}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbschema}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbInfo}}
}

\examples{
  library(DBI)
  ## Count the number of rows in the "probes" table:
  dbGetQuery(hursta2a520709custom_dbconn(), "SELECT COUNT(*) FROM probes")

  hursta2a520709custom_dbschema()

  hursta2a520709custom_dbInfo()
}

\keyword{utilities}
\keyword{datasets}

