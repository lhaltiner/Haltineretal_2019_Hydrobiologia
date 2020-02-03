# Haltiner, L., Hänggi, C., Spaak, P., Dennis, S.R. 
# Sex in crowded places: population density regulates reproductive strategy. 
# Hydrobiologia (2019) doi:10.1007/s10750-019-04143-7
# Script for model 4



# load data file and edit structure

lifehist <- read.table("./data/Crowded_Sex_popsize.txt",header=TRUE)

# polynomial model for Edmondson egg ratio
model4<-lm(eer ~ pop_size + genotype + I(day^2) + day, data=lifehist) # take this for report
anova(model4)
summary(model4)
