library(ggplot2)

#100 trekk fra binomisk fordeling
d.krf_or_not = data.frame(as.character(rbinom(100,1,0.15)))
colnames(d.krf_or_not) = c("krf")

ggplot(data = d.krf_or_not, aes(x= krf)) +
  geom_bar(stat="count")

#summen av n trekk fra binomisk fordeling, 10000 ganger
list = list()
n=1000
for (i in 1:10000) {
  list = c(list, sum(rbinom(1,n, 0.15)))
}
d.krf_100 = data.frame(as.character(list))

colnames(d.krf_100) = c("krf")
ggplot(data = d.krf_100, aes(x= krf)) +
  geom_bar(stat="count")