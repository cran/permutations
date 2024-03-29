\name{capply}
\alias{capply}
\title{Apply functions to elements of a cycle}
\description{
  Function \code{capply()} means \dQuote{cycle apply} and is modelled on
  \code{lapply()}.  It applies a function to every element in the cycles
  of its argument.
}
\usage{capply(X, fun, ...)}
\arguments{
  \item{X}{Permutation, coerced to cycle}
  \item{fun}{Function to be applied to each element of \code{X}}
  \item{...}{Further arguments to \code{fun()}}
}
\details{This function is just a convenience wrapper really.}
\value{Returns a permutation in cycle form}
\author{Robin K. S. Hankin}
\examples{


(x <- rperm())
capply(x,function(x){x+100})
capply(x,rev)

all(is.id(capply(x,rev)*x))  # should be TRUE

capply(rcyc(20,5,9),order)

capply(rcyc(20,5,9),sample)  # still 5-cycles




}
