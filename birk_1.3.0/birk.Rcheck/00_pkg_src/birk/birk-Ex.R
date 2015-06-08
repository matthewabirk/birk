pkgname <- "birk"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('birk')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("Q10calc")
### * Q10calc

flush(stderr()); flush(stdout())

### Name: Q10calc
### Title: Parameters of Q10 Temperature Coefficient
### Aliases: Q10calc

### ** Examples

Q10calc(R2 = 10, R1 = 5, T2 = 20, T1 = 10) # Returns Q10; = 2
Q10calc(Q10 = 2.66, R1 = 5, T2 = 20, T1 = 10) # Returns R2; = 13.3



cleanEx()
nameEx("conv_unit")
### * conv_unit

flush(stderr()); flush(stdout())

### Name: conv_unit
### Title: Convert Units of Measurement
### Aliases: conv_unit

### ** Examples

conv_unit(2.54, cm, inch) # Result = 1 inch
conv_unit(seq(1, 10), kg, short_ton) # A vector of measurement values can be converted
conv_unit("33 1 1", deg_min_sec, dec_deg)
conv_unit(c("101 44.32","3 19.453"), deg_dec_min, deg_min_sec)



cleanEx()
nameEx("conv_unit_options")
### * conv_unit_options

flush(stderr()); flush(stdout())

### Name: conv_unit_options
### Title: Unit of Measurement Conversion Options
### Aliases: conv_unit_options
### Keywords: datasets

### ** Examples

conv_unit_options
conv_unit_options['Pressure']



cleanEx()
nameEx("geom_mean")
### * geom_mean

flush(stderr()); flush(stdout())

### Name: geom_mean
### Title: Geometric Mean
### Aliases: geom_mean

### ** Examples

geom_mean(1:10)
geom_mean(0:10)
geom_mean(0:10, add0.001 = TRUE)
geom_mean(-10:10, add0.001 = TRUE, ignore_neg = TRUE)



cleanEx()
nameEx("range_seq")
### * range_seq

flush(stderr()); flush(stdout())

### Name: range_seq
### Title: Sequence Generation Spanning A Numerical Range
### Aliases: range_seq

### ** Examples

range_seq(rnorm(10, sd = 20))
range_seq(c(3, 9), extend = 0.1)
range_seq(c(3, 9), length.out = 20)



cleanEx()
nameEx("se")
### * se

flush(stderr()); flush(stdout())

### Name: se
### Title: Standard Error
### Aliases: se

### ** Examples

se(1:10)



### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
