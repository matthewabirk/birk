\name{conv_unit}
\alias{conv_unit}
\title{Convert Units of Measurement}
\description{This function converts common units of measurement for a variety of dimensions. See conv_unit_options for all options.}
\usage{conv_unit(x, from, to)}
\arguments{
  \item{x}{the measurement value in original units.}
  \item{from}{the unit in which the measurement was made}
  \item{to}{the unit to which the measurment is to be converted}
}
\details{The conversion values have been defined based primarily from international weight and measurement authorities (e.g. General Conference on Weights and Measures, International Committee for Weights and Measures, etc.). While much effort was made to make conversions as accurate as possible, you should check the accuracy of conversions to ensure that conversions are precise enough for your applications.}
\author{Matthew A. Birk}
\note{All non-metric units of mass are based on the avoirdupois system.}
\seealso{
\code{\link{conv_unit_options}}
}
\examples{
conv_unit(2.54, cm, inch) # Result = 1 inch
conv_unit(seq(1, 10), kg, short_ton) # A vector of measurement values can be converted
}