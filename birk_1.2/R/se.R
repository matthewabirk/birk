# Created by Matthew A. Birk

# Calculates the standard error of a vector

se=function(x,na.rm=FALSE)
{
  return(sqrt(var(if (is.vector(x)) x else as.double(x),na.rm=na.rm)/length(x)))
}