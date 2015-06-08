\name{se}
\alias{se}
\title{Standard Error}
\description{This function computes the standard error of the values in x. If na.rm is TRUE then missing values are removed before computation proceeds.}
\usage{se(x, na.rm = FALSE)}
\arguments{
  \item{x}{a numeric vector or an R object which is coercible to one by as.vector(x, "numeric").}
  \item{na.rm}{logical. Should missing values be removed?}
}
\author{Matthew A. Birk \email{matthewabirk@gmail.com>}}
\seealso{
\code{\link{sd}},\code{\link{var}}
}
\examples{
se(1:10)
}