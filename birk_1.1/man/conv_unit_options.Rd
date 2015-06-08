\name{conv_unit_options}
\alias{conv_unit_options}
\docType{data}
\title{Unit of Measurement Conversion Options}
\description{This dataset shows what units of measurement can be converted with the function conv_unit.}
\usage{conv_unit_options}
\details{Duration: Years are defined as 365.25 days and months are defined as 1/12 a year

Energy: cal is a thermochemical calorie (4.184 J) and Cal is 1000 cal (kcal or 4184 J)

Mass: All non-metric units are based on the avoirdupois system

Power: hp is mechanical horsepower, or 745.69 W}
\source{The conversion values have been defined based primarily from international weight and measurement authorities (e.g. General Conference on Weights and Measures, International Committee for Weights and Measures, etc.). While much effort was made to make conversions as accurate as possible, you should check the accuracy of conversions to ensure that conversions are precise enough for your applications.}
\seealso{
\code{\link{conv_unit}}
}
\examples{
conv_unit_options
conv_unit_options['Pressure']
}
\keyword{datasets}