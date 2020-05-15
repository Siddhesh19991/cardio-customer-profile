cardio <- read.csv("~/Downloads/CardioGoodFitness.csv")

boxplot(Age~Product,data=cardio)
#the age distribution is almost the same for all the 3. 

boxplot(Income~Product,data=cardio)
cor(cardio$Education,cardio$Income)
boxplot(Education~Product,data=cardio)
#shows that there is correlation between income and education and customers with higher income chooses the TM798.

table(cardio$Product,cardio$Gender)
#the TM798 is used mostly by male 
a<-subset(cardio,cardio$Gender=="Male")
b<-subset(cardio,cardio$Gender=="Female")
mean(a$Income)
mean(b$Income)
#we can also see that average income of male is more than that of female 
#the TM195 and the TM498 are used by teens to old age people as well
#the TM798 is has a age range of approx 22-37 with a few outliers
boxplot(Miles~Product,data=cardio)
boxplot(Fitness~Product,data=cardio)
boxplot(Usage~Product,data=cardio)
#we can infer that TM798 is better used than the others
table(cardio$Product,cardio$Gender)
#Tm195 has more users compared to the other two (followed by TM498 and then TM798)

#now comapring the TM195 and th TM498
cardio2<-subset(cardio,cardio$Product!="TM798")
boxplot(Fitness~Product,data=cardio2)#same
boxplot(Usage~Product,data=cardio2)#TM195 is used more
table(cardio2$Product,cardio2$Gender)

d<-subset(cardio,cardio$Product=="TM498")
e<-subset(cardio,cardio$Product=="TM798")
c<-subset(cardio, cardio$Product=="TM195")
mean(c$Income)
mean(d$Income)
mean(e$Income)
#we also find an income gap,TM798>TM498>tm195
