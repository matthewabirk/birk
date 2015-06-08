# Created by Matthew A. Birk

# Converts common units for a variety of dimensions

conv_unit_options=list(
  Area=c('nm2','um2','mm2','cm2','m2','hectacre','km2','in2','ft2','yd2','acre','mi2','naut_mi2'),
  Duration=c('nsec','usec','msec','sec','min','hr','day','wk','mon','yr','dec','cen','mil'),
  Length=c('nm','um','mm','cm','m','km','inch','ft','yd','mi','naut_mi','light_yr'),
  Mass=c('ug','mg','g','kg','metric_ton','oz','lb','short_ton','long_ton','stone'),
  Pressure=c('atm','Pa','hPa','kPa','torr','mmHg','inHg','mbar','bar','dbar','psi'),
  Speed=c('mm_per_sec','cm_per_sec','m_per_sec','km_per_sec','ft_per_sec','kph','mph','knot'),
#  Temperature=c('C','F','K'),
  Volume=c('ml','l','m3','us_tsp','us_tbsp','us_oz','us_cup','us_pint','us_quart','us_gal','in3','ft3','imp_tsp','imp_tbsp','imp_oz','imp_pint','imp_quart','imp_gal')
)
.conversions=data.frame()
.conversions=rbind(.conversions,data.frame(dim=rep('area',times=length(conv_unit_options[['Area']])),unit=c('nm2','um2','mm2','cm2','m2','hectacre','km2','in2','ft2','yd2','acre','mi2','naut_mi2'),std=c(1e18,1e12,1e6,1e4,1,1e-4,1e-6,(100/2.54)^2,(100/2.54/12)^2,(100/2.54/36)^2,(100/2.54/12)^2/43560,(100/2.54/12)^2/43560/640,1/3429904)))
.conversions=rbind(.conversions,data.frame(dim=rep('duration',times=length(conv_unit_options[['Duration']])),unit=c('nsec','usec','msec','sec','min','hr','day','wk','mon','yr','dec','cen','mil'),std=c(1e9,1e6,1e3,1,1/60,1/3600,1/86400,1/604800,1/(86400*365.25/12),1/(86400*365.25),1/(86400*3652.5),1/(86400*36525),1/(86400*365250))))
.conversions=rbind(.conversions,data.frame(dim=rep('length',times=length(conv_unit_options[['Length']])),unit=c('nm','um','mm','cm','m','km','inch','ft','yd','mi','naut_mi','light_yr'),std=c(1e9,1e6,1e3,100,1,1e-3,100/2.54,100/2.54/12,100/2.54/36,100/2.54/12/5280,1/1852,1/9460730472580800)))
.conversions=rbind(.conversions,data.frame(dim=rep('mass',times=length(conv_unit_options[['Mass']])),unit=c('ug','mg','g','kg','metric_ton','oz','lb','short_ton','long_ton','stone'),std=c(1e6,1e3,1,0.001,1e-6,1/28.349523125,2.20462234e-3,1/907184.74,1/1.016e6,2.20462234e-3/14)))
.conversions=rbind(.conversions,data.frame(dim=rep('pressure',times=length(conv_unit_options[['Pressure']])),unit=c('atm','Pa','hPa','kPa','torr','mmHg','inHg','mbar','bar','dbar','psi'),std=c(1,101325,1013.25,101.325,760,760,1/(3386.389/101325),1013.25,1.01325,10.1325,14.69594877551)))
.conversions=rbind(.conversions,data.frame(dim=rep('speed',times=length(conv_unit_options[['Speed']])),unit=c('mm_per_sec','cm_per_sec','m_per_sec','km_per_sec','ft_per_sec','kph','mph','knot'),std=c(1e3,100,1,1e-3,100/2.54/12,1e-3*3600,100/2.54/12/5280*3600,1/1852*3600)))
#.conversions=rbind(.conversions,data.frame(dim=rep('temperature',times=length(conv_unit_options[['Temperature']])),unit=c('C','F','K'),std=c(1,expression(9/5+32/value),expression(273.15/value+1))))
.conversions=rbind(.conversions,data.frame(dim=rep('volume',times=length(conv_unit_options[['Volume']])),unit=c('ml','l','m3','us_tsp','us_tbsp','us_oz','us_cup','us_pint','us_quart','us_gal','in3','ft3','imp_tsp','imp_tbsp','imp_oz','imp_pint','imp_quart','imp_gal'),std=c(1e3,1,1e-3,1/3.785411784*768,1/3.785411784*256,1/3.785411784*128,1/3.785411784*16,1/3.785411784*8,1/3.785411784*4,1/3.785411784,61.0237440947323,61.0237440947323/1728,1/4.54609*768,1/4.54609*256,1/4.54609*160,1/4.54609*8,1/4.54609*4,1/4.54609)))

conv_unit=function(x,from,to)
{
  unit=std=NULL
  from=as.character(substitute(from))
  to=as.character(substitute(to))
  if(nrow(subset(.conversions,unit==from,dim))==0) stop('the from argument is not an acceptable unit')
  if(nrow(subset(.conversions,unit==to,dim))==0) stop('the to argument is not an acceptable unit')
  if(subset(.conversions,unit==from,dim)!=subset(.conversions,unit==to,dim)) stop('these units cannot be converted because they are of different dimensions')
  value=x/subset(.conversions,unit==from,std,drop=T)
  return(value*subset(.conversions,unit==to,std,drop=T))
}