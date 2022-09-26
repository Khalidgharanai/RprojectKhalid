####++++++++++++++++ITC255/fall 2022####++++++++++
#Descriptive methods
  #univar case
    #FDT
      #categorical variables

##upload the data
#dataset Iris

dfiris=read.csv(url('https://gist.githubusercontent.com/curran/a08a1080b88344b0c8a7/raw/0e7a9b0a5d22642a06d3d5b9bcbad9890c8ee534/iris.csv'))
head(iris)

#fdt Sepal_width
absfreq=table(dfiris$sepal_width)
absfreq
relfreq=prop.table(absfreq)
relfreq
relfreq=round(prop.table(absfreq), 2)
relfreq             
cumfreq=cumsum(relfreq)
cumfreq

fdtSepal_length=cbind(absfreq, relfreq, cumfreq)
fdtSepal_length


####++++++++++++++++ITC255/fall 2022####++++++++++
#Descriptive methods
  #univar case
    #FDT
      #numerical variables

1#transform the data into categorical var
names(dfiris)

#sepel length 
summary(dfiris$sepal_length)

#define categories: short when length<5 medium when length is 5>= but less than 6, large otherwise

#selection + Loop
catsepel_length=c()

for (k in 1:length(dfiris$sepel_length)){ 
  if(dfiris$sepel_length[k]<5){
    catsepel_length[k]="short"
  } else if (dfiris$sepel_length[k] >=5 & dfiris$sepel_length[k]<6) {
    catsepel_length[k]="meduim"
  } else {
    catsepel_length[k]="large"
  }
}

head(catsepel_length)

sepel_length=cbind(dfiris$sepel_length, catiris)
View(sepel_length)

#Catsepel_length is a cat var
#CALL the function fdtcat
fdtCat(catiris)



