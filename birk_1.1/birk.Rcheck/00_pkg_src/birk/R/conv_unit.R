# Created by Matthew A. Birk

# Converts common units for a variety of dimensions

conv_unit_options=list(
  Acceleration=c('mm_per_sec2','cm_per_sec2','m_per_sec2','km_per_sec2','grav','inch_per_sec2','ft_per_sec2','mi_per_sec2'),
  Area=c('nm2','um2','mm2','cm2','m2','hectacre','km2','inch2','ft2','yd2','acre','mi2','naut_mi2'),
  Duration=c('nsec','usec','msec','sec','min','hr','day','wk','mon','yr','dec','cen','mil'),
  Energy=c('J','erg','cal','Cal','Wsec','kWh','MWh','BTU'),
  Flow=c('ml_per_sec','ml_per_min','ml_per_hr','l_per_sec','l_per_min','l_per_hr','m3_per_sec','m3_per_min','m3_per_hr','gal_per_sec','gal_per_min','gal_per_hr','ft3_per_sec','ft3_per_min','ft3_per_hr'),
  Length=c('nm','um','mm','cm','dm','m','km','inch','ft','yd','mi','naut_mi','light_yr'),
  Mass=c('ug','mg','g','kg','metric_ton','oz','lb','short_ton','long_ton','stone'),
  Power=c('uW','mW','W','kW','MW','GW','erg_per_sec','cal_per_sec','cal_per_hr','Cal_per_sec','Cal_per_hr','BTU_per_sec','BTU_per_hr','hp'),
  Pressure=c('uatm','atm','Pa','hPa','kPa','torr','mmHg','inHg','mbar','bar','dbar','psi'),
  Speed=c('mm_per_sec','cm_per_sec','m_per_sec','km_per_sec','inch_per_sec','ft_per_sec','kph','mph','knot'),
  Temperature=c('C','F','K'),
  Volume=c('ml','l','cm3','m3','us_tsp','us_tbsp','us_oz','us_cup','us_pint','us_quart','us_gal','inch3','ft3','imp_tsp','imp_tbsp','imp_oz','imp_pint','imp_quart','imp_gal')
)
.conversions=data.frame()
.conversions=rbind(.conversions,data.frame(dim=rep('acceleration',times=length(conv_unit_options[['Acceleration']])),unit=c('mm_per_sec2','cm_per_sec2','m_per_sec2','km_per_sec2','grav','inch_per_sec2','ft_per_sec2','mi_per_sec2'),std=c(100,10,1,1e-3,1/9.80665,100/2.54,100/2.54/12,100/2.54/12/5280)))
.conversions=rbind(.conversions,data.frame(dim=rep('area',times=length(conv_unit_options[['Area']])),unit=c('nm2','um2','mm2','cm2','m2','hectacre','km2','inch2','ft2','yd2','acre','mi2','naut_mi2'),std=c(1e18,1e12,1e6,1e4,1,1e-4,1e-6,(100/2.54)^2,(100/2.54/12)^2,(100/2.54/36)^2,(100/2.54/12)^2/43560,(100/2.54/12)^2/43560/640,1/3429904)))
.conversions=rbind(.conversions,data.frame(dim=rep('duration',times=length(conv_unit_options[['Duration']])),unit=c('nsec','usec','msec','sec','min','hr','day','wk','mon','yr','dec','cen','mil'),std=c(1e9,1e6,1e3,1,1/60,1/3600,1/86400,1/604800,1/(86400*365.25/12),1/(86400*365.25),1/(86400*3652.5),1/(86400*36525),1/(86400*365250))))
.conversions=rbind(.conversions,data.frame(dim=rep('energy',times=length(conv_unit_options[['Energy']])),unit=c('J','erg','cal','Cal','Wsec','kWh','MWh','BTU'),std=c(1,1e7,1/4.184,1/4184,1,1/3.6e6,1/3.6e9,1/1055.05585262)))
.conversions=rbind(.conversions,data.frame(dim=rep('flow',times=length(conv_unit_options[['Flow']])),unit=c('ml_per_sec','ml_per_min','ml_per_hr','l_per_sec','l_per_min','l_per_hr','m3_per_sec','m3_per_min','m3_per_hr','gal_per_sec','gal_per_min','gal_per_hr','ft3_per_sec','ft3_per_min','ft3_per_hr'),std=c(1e3,1e3*60,1e3*3600,1,60,3600,1e-3,1e-3*60,1e-3*3600,1/3.785411784,1/3.785411784*60,1/3.785411784*3600,61.0237440947323/1728,61.0237440947323/1728*60,61.0237440947323/1728*3600)))
.conversions=rbind(.conversions,data.frame(dim=rep('length',times=length(conv_unit_options[['Length']])),unit=c('nm','um','mm','cm','dm','m','km','inch','ft','yd','mi','naut_mi','light_yr'),std=c(1e9,1e6,1e3,100,10,1,1e-3,100/2.54,100/2.54/12,100/2.54/36,100/2.54/12/5280,1/1852,1/9460730472580800)))
.conversions=rbind(.conversions,data.frame(dim=rep('mass',times=length(conv_unit_options[['Mass']])),unit=c('ug','mg','g','kg','metric_ton','oz','lb','short_ton','long_ton','stone'),std=c(1e6,1e3,1,0.001,1e-6,1/28.349523125,2.20462234e-3,1/907184.74,1/1.016e6,2.20462234e-3/14)))
.conversions=rbind(.conversions,data.frame(dim=rep('power',times=length(conv_unit_options[['Power']])),unit=c('uW','mW','W','kW','MW','GW','erg_per_sec','cal_per_sec','cal_per_hr','Cal_per_sec','Cal_per_hr','BTU_per_sec','BTU_per_hr','hp'),std=c(1e6,1e3,1,1e-3,1e-6,1e-9,1e7,1/4.184,1/4.184*3600,1/4184,1/4184*3600,1/1055.05585262,1/1055.05585262*3600,1/745.69)))
.conversions=rbind(.conversions,data.frame(dim=rep('pressure',times=length(conv_unit_options[['Pressure']])),unit=c('uatm','atm','Pa','hPa','kPa','torr','mmHg','inHg','mbar','bar','dbar','psi'),std=c(1e6,1,101325,1013.25,101.325,760,760,1/(3386.389/101325),1013.25,1.01325,10.1325,14.69594877551)))
.conversions=rbind(.conversions,data.frame(dim=rep('speed',times=length(conv_unit_options[['Speed']])),unit=c('mm_per_sec','cm_per_sec','m_per_sec','km_per_sec','inch_per_sec','ft_per_sec','kph','mph','knot'),std=c(1e3,100,1,1e-3,100/2.54,100/2.54/12,1e-3*3600,100/2.54/12/5280*3600,1/1852*3600)))
.conversions=rbind(.conversions,data.frame(dim=rep('temperature',times=length(conv_unit_options[['Temperature']])),unit=c('C','F','K'),std=c(NA,NA,NA)))
.conversions=rbind(.conversions,data.frame(dim=rep('volume',times=length(conv_unit_options[['Volume']])),unit=c('ml','l','cm3','m3','us_tsp','us_tbsp','us_oz','us_cup','us_pint','us_quart','us_gal','inch3','ft3','imp_tsp','imp_tbsp','imp_oz','imp_pint','imp_quart','imp_gal'),std=c(1e3,1,1e3,1e-3,1/3.785411784*768,1/3.785411784*256,1/3.785411784*128,1/3.785411784*16,1/3.785411784*8,1/3.785411784*4,1/3.785411784,61.0237440947323,61.0237440947323/1728,1/4.54609*768,1/4.54609*256,1/4.54609*160,1/4.54609*8,1/4.54609*4,1/4.54609)))

conv_unit=function(x,from,to)
{
  unit=std=NULL
  from=as.character(substitute(from))
  to=as.character(substitute(to))
  if(nrow(subset(.conversions,unit==from,dim))==0) stop('the from argument is not an acceptable unit')
  if(nrow(subset(.conversions,unit==to,dim))==0) stop('the to argument is not an acceptable unit')
  if(subset(.conversions,unit==from,dim)!=subset(.conversions,unit==to,dim)) stop('these units cannot be converted because they are of different dimensions')
  if((from=='C' | from=='F' | from=='K') & (to=='C' | to=='F' | to=='K'))
  {
    frzC=0.01
    frzF=32.018
    frzK=273.16
    boilC=99.9839
    boilF=211.97102
    boilK=373.1339
    rangeC=boilC-frzC
    rangeF=boilF-frzF
    rangeK=boilK-frzK
    prop=(x-get(paste('frz',from,sep='')))/get(paste('range',from,sep=''))
    return(prop*get(paste('range',to,sep=''))+get(paste('frz',to,sep='')))
  }
  value=x/subset(.conversions,unit==from,std,drop=T)
  return(value*subset(.conversions,unit==to,std,drop=T))
}