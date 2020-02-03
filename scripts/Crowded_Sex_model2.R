# Haltiner, L., Hänggi, C., Spaak, P., Dennis, S.R. 
# Sex in crowded places: population density regulates reproductive strategy. 
# Hydrobiologia (2019) doi:10.1007/s10750-019-04143-7
# Script for model 2


# library
library(glmmTMB)

# load source file
source("./scripts/Crowded_Sex_get_data.R")


# GLMM model for eggs 
model2 <- glmmTMB(eggs ~ csumperind+pop_size+ (1|jar) + (1|day)+(1|genotype),family=nbinom1, data=lifehist) 
summary(model2)



