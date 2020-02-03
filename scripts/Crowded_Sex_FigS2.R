# Haltiner, L., Hänggi, C., Spaak, P., Dennis, S.R. 
# Sex in crowded places: population density regulates reproductive strategy. 
# Hydrobiologia (2019) doi:10.1007/s10750-019-04143-7
# Script for Supplementary Figure S2

#library
library(ggplot2)

# colour settings
mycols_j=c(	"#e31a1c","#ff7f00"	,"yellow"	,"#4bef40"	,"#287f22"	,"#a6cee3",	"#1f78b4"	,"darkorchid1"	,"#6a3d9a")

# load data file
totj <- read.table("./data/Crowded_Sex_growthrate_ranked.txt", header=TRUE)


# Figure S2
plots2 <- ggplot(totj, aes( seeding_rate,ranked, colour=genotype))
plots2+  geom_line(size=1.2, aes(group=genotype))+
  geom_point(size=4)+
  theme(panel.grid.major = element_blank(),panel.grid.minor = element_blank()) +
  scale_colour_manual(values=mycols_j, name="Genotype")+
  labs(y="Rank order of growth rate", x="Seeding rate")+
  scale_y_continuous(breaks=c(2,4,6,8))+
  theme(panel.border = element_blank(), axis.line=element_line(),
        axis.text=element_text(size=14),
        axis.title=element_text(size=16),
        axis.title.y = element_text(margin = margin(t = 0, r = 20, b = 0, l = 20)))
