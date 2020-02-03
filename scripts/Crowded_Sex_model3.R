# Haltiner, L., Hänggi, C., Spaak, P., Dennis, S.R. 
# Sex in crowded places: population density regulates reproductive strategy. 
# Hydrobiologia (2019) doi:10.1007/s10750-019-04143-7
# Script for model 3


# library
library(glmmTMB)

# load source file
source("./scripts/Crowded_Sex_get_data.R")



# GLMM model for ephippia 
model3 <- glmmTMB(epprod ~ csumperind+pop_size +(1|jar) +(1|day)+(1| genotype), family=poisson, data=lifehist, ziformula=~1)
summary(model3) 






