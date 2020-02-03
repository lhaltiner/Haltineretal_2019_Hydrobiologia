# Haltiner, L., Hänggi, C., Spaak, P., Dennis, S.R. 
# Sex in crowded places: population density regulates reproductive strategy. 
# Hydrobiologia (2019) doi:10.1007/s10750-019-04143-7
# Script for model 1


# load data
grate <- read.table("./data/Crowded_Sex_growthrates.txt",header=TRUE)


#model
model1 <- lm(r~block+as.factor(seeding_rate)+genotype, data=grate)
anova(model1)
summary(model1)


