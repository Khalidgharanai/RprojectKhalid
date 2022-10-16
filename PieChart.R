
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

#region 
summary(dffmri$timepoint)

#define categories: weak when length<4 medium when length is 4>= but less than 8, strong otherwise

#selection + Loop
cattimepointl=c()

for (k in 1:length(dffmri$timepoint)){ 
  if(dffmri$timepoint[k]<4){
    cattimepoint[k]="weak"
  } else if (dffmri$timepoint[k] >=4 & dffmri$timepoint[k]<8) {
    cattimepoint[k]="meduim"
  } else {
    cattimepoint[k]="strong"
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
