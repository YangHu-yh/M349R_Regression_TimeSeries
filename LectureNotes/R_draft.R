# Professor Gustavo Cepparo
# Class M349R
# 2018 Spring
# Code in class

# Comparing Two Groups:
# Example 1.  Morning versus Afternoon.
Afternoon=c(90,87,77,70)
Morning=c(69,71,63)

Sombrero=c(90,87,77,70,69,71,63)
nrep=10000

compare=replicate(nrep,mean(sample(Sombrero,4,replace=F))>=mean(Afternoon))


nyes=sum(compare)
p=sum(compare)/nrep


# (With Loop)
Afternoon=c(90,87,77,70)
Morning=c(69,71,63)

Sombrero=c(90,87,77,70,69,71,63)
nrep=10000

p=c()
nyes=c()
for (i in 1:20){
compare=replicate(nrep,mean(sample(Sombrero,4,replace=F))>=mean(Afternoon))

nyes[i]=sum(compare)
p[i]=sum(compare)/nrep}


# Problem Part 1  (Homework 3).  O-rings. (The faulty analysis)
# The explosion of the Challenger space shuttle has received a lot of attention from statisticians because the disaster and loss of the astronauts’ lives could have been prevented by fairly simple data analysis.  The explosion was caused by failure of O-ring seals that allowed rocket fuel to leak and explode, and an investigation concluded that the O-ring failures were themselves caused by the low temperature at the time of the launch.
# The data consist of the relationship between air temperature at launch time and the number of “O-ring incidents” on the days for which the launches had problems with the O-rings.
# Launch temperature
# 	Below 65	1  1  1  3
# 	Above 65	1  1  2
# Problem Part 2 (Homework 3).  O-rings.
# The explosion of the Challenger space shuttle has received a lot of attention from statisticians because the disaster and loss of the astronauts’ lives could have been prevented by fairly simple data analysis.  The explosion was caused by failure of O-ring seals that allowed rocket fuel to leak and explode, and an investigation concluded that the o-ring failures were themselves caused by the low temperature at the time of the launch.
# The summary below shows the relationship between air temperature at launch time and the number of  “O-ring incidents” per launch for 24 launches.
#
# Launch temperature
# 	Below 65	1  1  1  3
# 	Above 65	0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  1  1  2
# Data from Ramsey, Fred L. and Daniel W. Shafer (2002).  The Statistical Sleuth, 2nd ed.  Pacific Grove, CA: Duxbury.
# Examples 2 and 3 by George W. Cobb, Mount Holyoke College, NSF#0089004
#
# Inductive Inference: From samples to population (Permutation Tests)
# Two Independent Samples
# Matched Pairs
# Matched Pairs
dealer=c(1000,500,2000,3500,4500)
nodealer=c(600,500,1000,3000,1000)
AveDiff=mean(dealer-nodealer)
nPairs=length(dealer)
NRep=10000

ps=c()
for (i in 1:20) {
compare=replicate(NRep,mean((dealer-nodealer)*sample(c(-1,1),nPairs,replace=T))>=AveDiff)
ps[i]=sum(compare)/NRep}

mean(ps)

# Two Independent Samples

Unlogged=c(22,18,22,20,15,21,13,13,19,13,19,15)
Logged=c(17,4,18,14,18,15,15,10,12)
Sombrero=c(Unlogged,Logged)
nrep=10000

nyes=c()
p=c()

for (i in 1:20){

compare=replicate(nrep, mean(sample(Sombrero,9,replace=F))<=mean(Logged))

nyes[i]=sum(compare)

p[i]=sum(compare)/nrep}
