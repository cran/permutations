\name{length}
\alias{length.word}
\alias{length.permutation}
\alias{length<-.permutation}
\alias{names}
\alias{names.word}
\alias{names<-.word}
\title{
Various vector-like utilities for permutation objects.
}
\description{
Various vector-like utilities for permutation objects such as
\code{length}, \code{names()}, etc
}
\usage{
\method{length}{word}(x)
\method{length}{permutation}(x) <- value
\method{names}{word}(x)
\method{names}{word}(x) <- value
}
\arguments{
  \item{x}{permutation object}
  \item{value}{In function \code{names<-.word()}, the new names}
}
\details{
These functions have methods only for word objects; cycle objects use
the methods for lists.  It is easy to confuse the \emph{length} of a
permutation with its \code{size}.

It is not possible to set the length of a permutation; this is more
trouble than it is worth.
}
\author{
Robin K. S. Hankin
}
\seealso{
\code{\link{size}}
}
\examples{
names(megaminx) <- NULL   #makes it print more nicely.

x <- rperm(9,5)
names(x) <- letters[1:9]
}