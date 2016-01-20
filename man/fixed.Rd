\name{fixed}
\alias{fixed}
\alias{fixed.word}
\alias{fixed.cycle}
\title{
Fixed  elements
}
\description{
Finds which elements of a permutation object are fixed
}
\usage{
\method{fixed}{word}(x)
\method{fixed}{cycle}(x)
}
\arguments{
  \item{x}{Object of class \code{word} or \code{cycle}}
  \item{\dots}{further arguments (currently unused)}
}
\value{
Returns a Boolean vector corresponding to the fixed elements
}
\author{
Robin K. S. Hankin
}
\seealso{
\code{\link{tidy}}
}
\examples{
fixed(as.cycle(1:3)+as.cycle(8:9))   # elements 4,5,6,7 are fixed
fixed(id)
fixed(megaminx)


}
\keyword{symbolmath}
