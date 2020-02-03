# Haltiner, L., Hänggi, C., Spaak, P., Dennis, S.R. 
# Sex in crowded places: population density regulates reproductive strategy. 
# Hydrobiologia (2019) doi:10.1007/s10750-019-04143-7
# data source file for Figures and models R scipts

# required library
library(ggplot2)

# load data file and edit
lifehist <- read.table("./data/Crowded_Sex_popsize.txt",header=TRUE)
lifehist$seeding_rate <- as.factor(lifehist$seeding_rate)
lifehist$day <- as.factor(lifehist$day)

# ggplot settings and colours
mycols=c("pink",	"#e31a1c","#ff7f00"	,"yellow"	,"#4bef40"	,"#287f22"	,"#a6cee3",	"#1f78b4"	,"darkorchid1"	,"#6a3d9a") 
theme_set(theme_bw(base_size = 16) + theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank(), 
                                           panel.border = element_blank(), axis.line = element_line()))
