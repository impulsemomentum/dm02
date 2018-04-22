library(arules)
library(car)
library(DAAG)
library(DMwR)
library(lattice)
library(arules)
library(arulesViz)
BuildingPermits <- read.transaction("Building_Permits.csv")


#挖掘频繁项集
fset <- eclat(BuildingPermits)


#查看频繁项集
summary(fset)


#挖掘关联规则
rules <- apriori(BuildingPermits)


#查看关联规则
summary(rules)


#对关联规则进行排序
rules.sort <- sort(BuildingPermits,by="lift")


#关联规则可视化
plot(rules)
plot(rules,method = "grouped")

