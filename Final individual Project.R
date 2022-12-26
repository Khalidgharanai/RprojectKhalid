
### Final project
###### Khalid Gharanai
######## ITC 255

###+++++++++++++++++++++++++++++++###
##4. Geometric distriution 
#Example: Historical data suggest that it takes up to 10 customers to visit before the first 
one makes a purchase. With a chance of making a purchase in {0.3}, 
simulate the number of customers not making a purchase before the first one makes a purchase

#makes a purchase: Pr(X=10)
dgeom(1, 0.3)

x=seq(1,10, by=1)
y4=dgeom(x, 0.30)

dt4=as.data.frame(cbind(x, y4))
g5=ggplot(data = dt4, aes(x=x, y=y4))+
  geom_line(linetype='dashed', color='blue')+
  geom_point(color='red')
g5


#cumulative probability
cdfg=pgeom(x, 0.30, lower.tail = TRUE)
dt4=as.data.frame(cbind(x, cdfg))

g6=ggplot(data = dt4, aes(x=x, y=cdfg))+
  geom_line(linetype='dashed', color='blue')+
  geom_point(color='red')
g6

#generate the Geometrically distributed RN
yg=rgeom(1000, 0.3)
head(yg)

##5 means there 5 failure before a success occures
#1 means there is 1 failure before a sucess is observed

df=dgeom(yg, .2)
dt5=as.data.frame(cbind(yg, df))
g7=ggplot(data = dt5, aes(x=yg, y=df))+
  geom_line(linetype='dashed', color='blue')+
  geom_point(color='red')
g7

