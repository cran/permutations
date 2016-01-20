\name{nullperm}
\alias{nullperm}
\alias{nullword}
\alias{nullcycle}
\title{
Null permutations
}
\description{
Null permutations are the equivalent of \code{NULL}
}
\usage{
nullperm
nullcycle
nullword
}
\format{
  Object \code{nullperm} is a zero-row matrix, coerced to \code{word},
  specifically \code{word(matrix(integer(0),0,0))}
  
  Object \code{nullcycle} is an empty list coerced to class
  \code{cycle}, specfically \code{cycle(list())}
  
}
\details{
These objects are here to deal with the case where a length-zero
permutation is extracted.  The behaviour of these null objects is not
entirely consistent.
}
\examples{

rperm(10,4)[0]  # null word

as.cycle(1:5)[0]  # null cycle


c(NULL,megaminx)      # probably not what the user intended...
c(nullcycle,megaminx) # more useful.

}
\keyword{datasets}
