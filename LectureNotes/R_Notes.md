## Two sample t-test & Randomization

Two samples are mixed together and push into a 'hat' for randomization test. The code given in the class using an example of morning class and afternoon class comparison:

```# Comparing Two Groups:
# Example 1.  Morning versus Afternoon.
Afternoon=c(90,87,77,70)
Morning=c(69,71,63)

Sombrero=c(90,87,77,70,69,71,63)
nrep=10000

compare=replicate(nrep,mean(sample(Sombrero,4,replace=F))>=mean(Afternoon))


nyes=sum(compare)
p=sum(compare)/nrep
```

### Idea of Randomization test in this example

- ``Sombrero`` includes all data from both Afternoon and Morning groups, which is the total sample that we will sample again and again during the randomization test
- `nrep` is the number of replication times
- `nyes` counts the number of times out of a thousand that the test mean is larger than the real mean from the original sample.
- `p` represents the p-value for one randomization test.
- Without replacement

### Further more

- We need more p-values to calculate an average so that the p-value we get is approching to the real p-value
- Use loop to reproduce, in this case, we set twenty times.

The code looks like the following, refering what professor wrote:
```
p=c()
nyes=c()
for (i in 1:20){
compare=replicate(nrep,mean(sample(Sombrero,4,replace=F))>=mean(Afternoon))

nyes[i]=sum(compare)
p[i]=sum(compare)/nrep}
```

Thus `p` includes all generated p-values, and mean(p) will give us the average.


## Matched Pairs - Randomization

The example description is the following:

```
The explosion of the Challenger space shuttle has received a lot of attention from statisticians because the disaster and loss of the astronauts’ lives could have been prevented by fairly simple data analysis.  The explosion was caused by failure of O-ring seals that allowed rocket fuel to leak and explode, and an investigation concluded that the O-ring failures were themselves caused by the low temperature at the time of the launch.
The data consist of the relationship between air temperature at launch time and the number of “O-ring incidents” on the days for which the launches had problems with the O-rings.
Launch temperature
	
	
	|Below 65  |	1 | 1 | 1 | 3 |
	|Above 65  |	1 | 1 | 2 |   |
	
	
Problem Part 2 (Homework 3).  O-rings.
The explosion of the Challenger space shuttle has received a lot of attention from statisticians because the disaster and loss of the astronauts’ lives could have been prevented by fairly simple data analysis.  The explosion was caused by failure of O-ring seals that allowed rocket fuel to leak and explode, and an investigation concluded that the o-ring failures were themselves caused by the low temperature at the time of the launch.
The summary below shows the relationship between air temperature at launch time and the number of  “O-ring incidents” per launch for 24 launches.

Launch temperature

	|Below 65 |	1 | 1 | 1 | 3 |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |   |
	|Above 65 |	0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 2 |

Data from Ramsey, Fred L. and Daniel W. Shafer (2002).  The Statistical Sleuth, 2nd ed.  Pacific Grove, CA: Duxbury.
```

Examples 2 and 3 by George W. Cobb, Mount Holyoke College, NSF#0089004

Similar to the two sample case, but the different part is that two groups are from the same objects/people, so we could not compare two group. Thus, we only consider the difference between values, as the following code demonstrate:

```

dealer=c(1000,500,2000,3500,4500)
nodealer=c(600,500,1000,3000,1000)
Diff = dealer-nodealer
AveDiff=mean(dealer-nodealer)


```

Then we replicate for a thousand times to get a p-value by similar methods as the two samples randomization test. But here we resample with replacement, opposed to two sample test.

```

NRep=10000
ps=c()
for (i in 1:20) {
compare=replicate(NRep,mean((dealer-nodealer)*sample(c(-1,1),nPairs,replace=T))>=AveDiff)
ps[i]=sum(compare)/NRep}
mean(ps)

```

`ps` in this case gives a set of p-values generated from each randomization test.



## Independent Samples

The basic technics are the same:
- resample many times (a thousand in each example here) to do a randomization test
- Randomization test would also be repeated for many times to find a more accurate p-value. 
- Without replacement like the two samples at first.
    
The Differences

- Since two groups are independent, we will put all values together as the source or resampling.
- 

```
# Two independent groups (unlogged and logged) as sample here
Unlogged=c(22,18,22,20,15,21,13,13,19,13,19,15)
Logged=c(17,4,18,14,18,15,15,10,12)
# All samples mixed for resample
Sombrero=c(Unlogged,Logged)

nrep=10000
nyes=c()
p=c()
for (i in 1:20){
compare=replicate(nrep, mean(sample(Sombrero,9,replace=F))<=mean(Logged))
nyes[i]=sum(compare)
p[i]=sum(compare)/nrep}

```

