\name{geom_mean}
\alias{geom_mean}
\title{Geometric Mean}
\description{This function computes the geometric mean of a vector, x. It is a wrapper for exp(mean(log(x))).}
\usage{geom_mean(x, add0.001 = FALSE, ignore_neg = FALSE, ...)}
\arguments{
  \item{x}{a numeric vector or an R object which is coercible to one by as.vector(x, "numeric").}
  \item{add0.001}{Should a small constant (0.001) be added to avoid issues with zeroes?}
  \item{ignore_neg}{Should negative values be ignored to avoid NaNs?}
  \item{...}{further arguments passed to or from other methods.}
}
\author{Matthew A. Birk \email{matthewabirk@gmail.com>}}
\seealso{
\code{\link{mean}}
}
\examples{
geom_mean(1:10)
geom_mean(0:10)
geom_mean(0:10, add0.001 = TRUE)
geom_mean(-10:10, add0.001 = TRUE, ignore_neg = TRUE)
}