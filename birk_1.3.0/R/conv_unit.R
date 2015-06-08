# Created by Matthew A. Birk
# Converts common units for a variety of dimensions
# Last updated: Jan 2015


conv_unit_options=list(
  Acceleration=c('mm_per_sec2','cm_per_sec2','m_per_sec2','km_per_sec2','grav','inch_per_sec2','ft_per_sec2','mi_per_sec2'),
  Angle=c('degree','radian','grad','arcmin','arcsec','turn'),
  Area=c('nm2','um2','mm2','cm2','m2','hectare','km2','inch2','ft2','yd2','acre','mi2','naut_mi2'),
  Coordinate=c('dec_deg','deg_dec_min','deg_min_sec'),
  Duration=c('nsec','usec','msec','sec','min','hr','day','wk','mon','yr','dec','cen','mil'),
  Energy=c('J','erg','cal','Cal','Wsec','kWh','MWh','BTU'),
  Flow=c('ml_per_sec','ml_per_min','ml_per_hr','l_per_sec','l_per_min','l_per_hr','m3_per_sec','m3_per_min','m3_per_hr','gal_per_sec','gal_per_min','gal_per_hr','ft3_per_sec','ft3_per_min','ft3_per_hr'),
  Length=c('angstrom','nm','um','mm','cm','dm','m','km','inch','ft','yd','mi','naut_mi','au','light_yr'),
  Mass=c('ug','mg','g','kg','metric_ton','oz','lbs','short_ton','long_ton','stone'),
  Power=c('uW','mW','W','kW','MW','GW','erg_per_sec','cal_per_sec','cal_per_hr','Cal_per_sec','Cal_per_hr','BTU_per_sec','BTU_per_hr','hp'),
  Pressure=c('uatm','atm','Pa','hPa','kPa','torr','mmHg','inHg','mbar','bar','dbar','psi'),
  Speed=c('mm_per_sec','cm_per_sec','m_per_sec','km_per_sec','inch_per_sec','ft_per_sec','kph','mph','knot','mach','light'),
  Temperature=c('C','F','K','R'),
  Volume=c('ul','ml','dl','l','cm3','dm3','m3','us_tsp','us_tbsp','us_oz','us_cup','us_pint','us_quart','us_gal','inch3','ft3','imp_tsp','imp_tbsp','imp_oz','imp_pint','imp_quart','imp_gal')
)
.conversions=data.frame()
.conversions=rbind(.conversions,data.frame(dim=rep('acceleration',times=length(conv_unit_options[['Acceleration']])),
  unit=c('mm_per_sec2','cm_per_sec2','m_per_sec2','km_per_sec2','grav','inch_per_sec2','ft_per_sec2','mi_per_sec2'),
  std=c(100,10,1,1e-3,1/9.80665,100/2.54,100/2.54/12,100/2.54/12/5280)))
.conversions=rbind(.conversions,data.frame(dim=rep('angle',times=length(conv_unit_options[['Angle']])),
  unit=c('degree','radian','grad','arcmin','arcsec','turn'),
  std=c(360,2*pi,400,21600,1296000,1)))
.conversions=rbind(.conversions,data.frame(dim=rep('area',times=length(conv_unit_options[['Area']])+1),
  unit=c('nm2','um2','mm2','cm2','m2','hectare','hectacre','km2','inch2','ft2','yd2','acre','mi2','naut_mi2'),
  std=c(1e18,1e12,1e6,1e4,1,1e-4,1e-4,1e-6,(100/2.54)^2,(100/2.54/12)^2,(100/2.54/36)^2,(100/2.54/12)^2/43560,(100/2.54/12)^2/43560/640,1/3429904)))
.conversions=rbind(.conversions,data.frame(dim=rep('coordinate',times=length(conv_unit_options[['Coordinate']])),
  unit=c('dec_deg','deg_dec_min','deg_min_sec'),
  std=c(NA,NA,NA)))
.conversions=rbind(.conversions,data.frame(dim=rep('duration',times=length(conv_unit_options[['Duration']])),
  unit=c('nsec','usec','msec','sec','min','hr','day','wk','mon','yr','dec','cen','mil'),
  std=c(1e9,1e6,1e3,1,1/60,1/3600,1/86400,1/604800,1/(86400*365.25/12),1/(86400*365.25),1/(86400*3652.5),1/(86400*36525),1/(86400*365250))))
.conversions=rbind(.conversions,data.frame(dim=rep('energy',times=length(conv_unit_options[['Energy']])),
  unit=c('J','erg','cal','Cal','Wsec','kWh','MWh','BTU'),
  std=c(1,1e7,1/4.184,1/4184,1,1/3.6e6,1/3.6e9,1/1055.05585262)))
.conversions=rbind(.conversions,data.frame(dim=rep('flow',times=length(conv_unit_options[['Flow']])),
  unit=c('ml_per_sec','ml_per_min','ml_per_hr','l_per_sec','l_per_min','l_per_hr','m3_per_sec','m3_per_min','m3_per_hr','gal_per_sec','gal_per_min','gal_per_hr','ft3_per_sec','ft3_per_min','ft3_per_hr'),
  std=c(1e3,1e3*60,1e3*3600,1,60,3600,1e-3,1e-3*60,1e-3*3600,1/3.785411784,1/3.785411784*60,1/3.785411784*3600,61.0237440947323/1728,61.0237440947323/1728*60,61.0237440947323/1728*3600)))
.conversions=rbind(.conversions,data.frame(dim=rep('length',times=length(conv_unit_options[['Length']])),
  unit=c('angstrom','nm','um','mm','cm','dm','m','km','inch','ft','yd','mi','naut_mi','au','light_yr'),
  std=c(1e10,1e9,1e6,1e3,100,10,1,1e-3,100/2.54,100/2.54/12,100/2.54/36,100/2.54/12/5280,1/1852,1/149597870700,1/9460730472580800)))
.conversions=rbind(.conversions,data.frame(dim=rep('mass',times=length(conv_unit_options[['Mass']])+1),
  unit=c('ug','mg','g','kg','metric_ton','oz','lb','lbs','short_ton','long_ton','stone'),
  std=c(1e6,1e3,1,0.001,1e-6,1/28.349523125,2.20462234e-3,2.20462234e-3,1/907184.74,1/1.016e6,2.20462234e-3/14)))
.conversions=rbind(.conversions,data.frame(dim=rep('power',times=length(conv_unit_options[['Power']])),
  unit=c('uW','mW','W','kW','MW','GW','erg_per_sec','cal_per_sec','cal_per_hr','Cal_per_sec','Cal_per_hr','BTU_per_sec','BTU_per_hr','hp'),
  std=c(1e6,1e3,1,1e-3,1e-6,1e-9,1e7,1/4.184,1/4.184*3600,1/4184,1/4184*3600,1/1055.05585262,1/1055.05585262*3600,1/745.69)))
.conversions=rbind(.conversions,data.frame(dim=rep('pressure',times=length(conv_unit_options[['Pressure']])),
  unit=c('uatm','atm','Pa','hPa','kPa','torr','mmHg','inHg','mbar','bar','dbar','psi'),
  std=c(1e6,1,101325,1013.25,101.325,760,760,1/(3386.389/101325),1013.25,1.01325,10.1325,14.69594877551)))
.conversions=rbind(.conversions,data.frame(dim=rep('speed',times=length(conv_unit_options[['Speed']])),
  unit=c('mm_per_sec','cm_per_sec','m_per_sec','km_per_sec','inch_per_sec','ft_per_sec','kph','mph','knot','mach','light'),
  std=c(1e3,100,1,1e-3,100/2.54,100/2.54/12,1e-3*3600,100/2.54/12/5280*3600,1/1852*3600,1/340.3,1/299792458)))
.conversions=rbind(.conversions,data.frame(dim=rep('temperature',times=length(conv_unit_options[['Temperature']])),
  unit=c('C','F','K','R'),
  std=c(NA,NA,NA,NA)))
.conversions=rbind(.conversions,data.frame(dim=rep('volume',times=length(conv_unit_options[['Volume']])),
  unit=c('ul','ml','dl','l','cm3','dm3','m3','us_tsp','us_tbsp','us_oz','us_cup','us_pint','us_quart','us_gal','inch3','ft3','imp_tsp','imp_tbsp','imp_oz','imp_pint','imp_quart','imp_gal'),
  std=c(1e6,1e3,10,1,1e3,1,1e-3,1/3.785411784*768,1/3.785411784*256,1/3.785411784*128,1/3.785411784*16,1/3.785411784*8,1/3.785411784*4,1/3.785411784,61.0237440947323,61.0237440947323/1728,1/4.54609*768,1/4.54609*256,1/4.54609*160,1/4.54609*8,1/4.54609*4,1/4.54609)))

#' Convert Units of Measurement
#'
#' Converts common units of measurement for a variety of dimensions. See \code{\link{conv_unit_options}} for all options.
#'
#' \describe{
#'   \item{Acceleration}{mm_per_sec2, cm_per_sec2, m_per_sec2, km_per_sec2, grav, inch_per_sec2, ft_per_sec2, mi_per_sec2}
#'   \item{Angle}{degree, radian, grad, arcmin, arcsec, turn}
#'   \item{Area}{nm2, um2, mm2, cm2, m2, hectare, km2, inch2, ft2, yd2, acre, mi2, naut_mi2}
#'   \item{Coordinate}{dec_deg, deg_dec_min, deg_min_sec (see note)}
#'   \item{Duration}{nsec, usec, msec, sec, min, hr, day, wk, mon, yr, dec, cen, mil}
#'   \item{Energy}{J, erg, cal, Cal, Wsec, kWh, MWh, BTU}
#'   \item{Flow}{ml_per_sec, ml_per_min, ml_per_hr, l_per_sec, l_per_min, l_per_hr, m3_per_sec, m3_per_min, m3_per_hr, gal_per_sec, gal_per_min, gal_per_hr, ft3_per_sec, ft3_per_min, ft3_per_hr}
#'   \item{Length}{angstrom, nm, um, mm, cm, dm, m, km, inch, ft, yd, mi, naut_mi, au, light_yr}
#'   \item{Mass}{ug, mg, g, kg, metric_ton, oz, lbs, short_ton, long_ton, stone}
#'   \item{Power}{uW, mW, W, kW, MW, GW, erg_per_sec, cal_per_sec, cal_per_hr, Cal_per_sec, Cal_per_hr, BTU_per_sec, BTU_per_hr, hp}
#'   \item{Pressure}{uatm, atm, Pa, hPa, kPa, torr, mmHg, inHg, mbar, bar, dbar, psi}
#'   \item{Speed}{mm_per_sec, cm_per_sec, m_per_sec, km_per_sec, inch_per_sec, ft_per_sec, kph, mph, knot, mach, light}
#'   \item{Temperature}{C, F, K, R}
#'   \item{Volume}{ul, ml, dl, l, cm3, dm3, m3, us_tsp, us_tbsp, us_oz, us_cup, us_pint, us_quart, us_gal, inch3, ft3, imp_tsp, imp_tbsp, imp_oz, imp_pint, imp_quart, imp_gal}
#' }
#' The conversion values have been defined based primarily from international weight and measurement authorities (e.g. General Conference on Weights and Measures, International Committee for Weights and Measures, etc.). While much effort was made to make conversions as accurate as possible, you should check the accuracy of conversions to ensure that conversions are precise enough for your applications.
#'
#' @param x the measurement value or vector of values in its original units.
#' @param from the unit in which the measurement was made.
#' @param to the unit to which the measurement is to be converted.
#'
#' @author Matthew A. Birk, \email{matthewabirk@@gmail.com}
#' @note \describe{
#'   \item{Duration}{Years are defined as 365.25 days and months are defined as 1/12 a year.}
#'   \item{Coordinate}{Values must be entered as a string with one space between subunits (e.g. 70° 33’ 11” = "70 33 11").}
#'   \item{Energy}{cal is a thermochemical calorie (4.184 J) and Cal is 1000 cal (kcal or 4184 J).}
#'   \item{Mass}{All non-metric units are based on the avoirdupois system.}
#'   \item{Power}{hp is mechanical horsepower, or 745.69 W.}
#'   \item{Speed}{mach is calculated at sea level at 15 °C.}
#' }
#' @seealso \code{\link{conv_unit_options}}
#'
#' @examples
#' conv_unit(2.54, cm, inch) # Result = 1 inch
#' conv_unit(seq(1, 10), kg, short_ton) # A vector of measurement values can be converted
#' conv_unit("33 1 1", deg_min_sec, dec_deg)
#' conv_unit(c("101 44.32","3 19.453"), deg_dec_min, deg_min_sec)
#'
#' @encoding UTF-8
#' @export

conv_unit=function(x,from,to)
{
  unit=std=NULL
  from=as.character(substitute(from))
  to=as.character(substitute(to))
  if(nrow(subset(.conversions,unit==from,dim))==0) stop('the from argument is not an acceptable unit')
  if(nrow(subset(.conversions,unit==to,dim))==0) stop('the to argument is not an acceptable unit')
  if(subset(.conversions,unit==from,dim)!=subset(.conversions,unit==to,dim)) stop('these units cannot be converted because they are of different dimensions')
  if((from=='C' | from=='F' | from=='K' | from=='R') & (to=='C' | to=='F' | to=='K' | to=='R'))
  {
    frzC=0.01
    frzF=32.018
    frzK=273.16
    frzR=491.688
    boilC=99.9839
    boilF=211.97102
    boilK=373.1339
    boilR=671.64102
    rangeC=boilC-frzC
    rangeF=boilF-frzF
    rangeK=boilK-frzK
    rangeR=boilR-frzR
    prop=(x-get(paste('frz',from,sep='')))/get(paste('range',from,sep=''))
    return(prop*get(paste('range',to,sep=''))+get(paste('frz',to,sep='')))
  }
  if((from=='dec_deg' | from=='deg_dec_min' | from=='deg_min_sec') & (to=='dec_deg' | to=='deg_dec_min' | to=='deg_min_sec'))
  {
    if(from=='dec_deg') secs=as.numeric(x)*3600
    if(from=='deg_dec_min') secs=lapply(split(as.numeric(unlist(strsplit(x,' ')))*c(3600,60),f=rep(1:length(x),each=2)),sum)
    if(from=='deg_min_sec') secs=lapply(split(as.numeric(unlist(strsplit(x,' ')))*c(3600,60,1),f=rep(1:length(x),each=3)),sum)
    if(to=='dec_deg') return(as.character(lapply(secs,function(y) y/3600)))
    if(to=='deg_dec_min') return(paste(lapply(secs,function(y) y%/%3600),lapply(secs,function(y) y%%3600/60)))
    if(to=='deg_min_sec') return(paste(lapply(secs,function(y) y%/%3600),lapply(secs,function(y) y%%3600%/%60),lapply(secs,function(y) y%%3600%%60)))
  }
  value=x/subset(.conversions,unit==from,std,drop=T)
  return(value*subset(.conversions,unit==to,std,drop=T))
}