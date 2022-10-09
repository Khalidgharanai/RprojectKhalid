

##upload the data
#dataset fmri

read.csv(url('https://raw.githubusercontent.com/mwaskom/seaborn-data/master/fmri.csv'))


####++++++++++++++++ITC255/fall 2022####++++++++++
  #Descriptive methods
    #univar case
      #FDT
        #categorical variables

##upload the data
#dataset 

read.csv(url('https://raw.githubusercontent.com/mwaskom/seaborn-data/master/fmri.csv'))

library(dplyr)
str(dffmri)


#fdt region
absfreq=table(dffmri$region)
absfreq
relfreq=prop.table(absfreq)
relfreq
relfreq=round(prop.table(absfreq), 2)
relfreq             
cumfreq=cumsum(relfreq)
cumfreq

fdtregion=cbind(absfreq, relfreq, cumfreq)
fdtregion

names(dffmri)
##Create a function that returns the FDT of a cat var
fdtCat=function(x){
  absFreq=table(x)
  relFreq=prop.table(absFreq)
  cumFreq=cumsum(relFreq)
  fdtx=cbind(absFreq, relFreq, cumFreq)
  return(fdtx)
}

#test
fdtCat(dffmri$region)


####++++++++++++++++ITC255/fall 2022####++++++++++
  #Descriptive methods
    #univar case
      #FDT
        #numerical variables

1#transform the data into categorical var
names(dffmri)

#timepoint 
summary(dffmri$timepoint)

#define categories: short when length<9 medium when length is 9>= but less than 12, large otherwise

#selection + Loop
cattimepoint=c()

for (k in 1:length(dffmri$timepoint)){ 
  if(dffmri$timepoint[k]<9){
    cattimepoint[k]="short"
  } else if (dffmri$timepoint[k] >=9 & dffmri$timepoint[k]<12) {
    cattimepoint[k]="meduim"
  } else {
    cattimepoint[k]="large"
  }
}

head(cattimepoint)

timepoint=cbind(dffmri$timepoint, cattimepoint)
View(timepoint)

#Descriptive methods
  #Univar case 
    #Graphs 
      #Categorical vars (pie and bar)

#create the FDT 
fdtregion=fdtCat(dffmri$region)[,1]
fdtregion

pie(fdtregion, 
    col = rainbow(2), 
    main = 'region distribution')

barplot(fdtregion, 
        col=rainbow(2), 
        main = 'region distribution')

#Descriptive methods
  #Univar case 
    #Graphs 
      #Num vars (hist and density)

hist(dffmri$timepoint, 
     col='blue', 
     main = 'timepoint distibution')

plot(density(dffmri$timepoint), 
     col='#0033FF', 
     main='timepoint distribution')

#Descriptive methods
  #Univar case 
    #Numerical methods
      #Center of distribution (mean, median)

mean(dffmri$timepoint)
median(dffmri$timepoint)

#Descriptive methods
  #Univar case 
    #Numerical methods
      #variation in the distribution (range, sd, var, mad)

range(dffmri$timepoint)
sd(dffmri$timepoint)
var(dffmri$timepoint)
mad(dffmri$timepoint)

#Descriptive methods
  #Univar case 
    #Numerical methods
      #location (quantiles and percentiles)

quantile(dffmri$timepoint)
boxplot(dffmri$timepoint,
        horizontal = T, 
        col='#0033FF')
boxplot.stats(dffmri$timepoint) #outliers
quantile(dffmri$timepoint, .9)
plot(density(dffmri$timepoint))

quantile(dffmri$timepoint, .4)

dim(dffmri)
#write a fun that retuns any location in the dist

myQnt=function(x,q){
  pr=quantile(x, q)
  return(pr)
}
myQnt(dffmri$timepoint, .4)

##ECDF 
plot(ecdf(dffmri$timepoint), 
     color='blue', 
     main='ECDF of timepoint', 
     xlab='total bill')

ecdf(dffmri$timepoint)(15)

quantile(dffmri$timepoint, .3


                  