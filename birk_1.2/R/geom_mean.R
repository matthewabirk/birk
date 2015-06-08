# Created by Matthew A. Birk

# Calculates the geometric mean of a vector

geom_mean=function(x,add0.001=FALSE,ignore_neg=FALSE,...){
  if(ignore_neg==TRUE) x=x[x>=0]
  if(add0.001==TRUE) exp(mean(log(x+0.001),...)) else exp(mean(log(x),...))
}