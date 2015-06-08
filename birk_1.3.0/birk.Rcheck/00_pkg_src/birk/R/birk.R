#' MA Birk’s Functions
#'
#' This is a compilation of functions that I found useful to make. It currently includes a unit of measurement conversion function, a Q10 calculator for temperature dependence of chemical and biological rates, and some miscellaneous wrapper functions to make R code shorter and faster to write.
#'
#' @author Matthew A. Birk, \email{matthewabirk@@gmail.com}
#' @docType package
#' @name birk
#' @encoding UTF-8

NULL


# conv_unit_options -------------------------------------------------------

#' Unit of Measurement Conversion Options
#'
#' Shows what units of measurement can be converted with the function \code{\link{conv_unit}}.
#'
#' \describe{
#'   \item{Duration}{Years are defined as 365.25 days and months are defined as 1/12 a year.}
#'   \item{Coordinate}{Values must be entered as a string with one space between subunits (e.g. 70° 33’ 11” = "70 33 11").}
#'   \item{Energy}{cal is a thermochemical calorie (4.184 J) and Cal is 1000 cal (kcal or 4184 J).}
#'   \item{Mass}{All non-metric units are based on the avoirdupois system.}
#'   \item{Power}{hp is mechanical horsepower, or 745.69 W.}
#'   \item{Speed}{mach is calculated at sea level at 15 °C.}
#' }
#'
#' @format A list with all units available for conversion using \code{\link{conv_unit}}.
#' @source The conversion values have been defined based primarily from international weight and measurement authorities (e.g. General Conference on Weights and Measures, International Committee for Weights and Measures, etc.). While much effort was made to make conversions as accurate as possible, you should check the accuracy of conversions to ensure that conversions are precise enough for your applications.
#' @author Matthew A. Birk, \email{matthewabirk@@gmail.com}
#' @seealso \code{\link{conv_unit}}
#'
#' @examples
#' conv_unit_options
#' conv_unit_options['Pressure']
#'
#' @docType data
#' @keywords datasets
#' @name conv_unit_options
#' @usage conv_unit_options
#' @encoding UTF-8
#' @export

NULL
