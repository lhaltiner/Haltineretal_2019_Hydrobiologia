# Haltiner, L., Hänggi, C., Spaak, P., Dennis, S.R. 
# Sex in crowded places: population density regulates reproductive strategy. 
# Hydrobiologia (2019) doi:10.1007/s10750-019-04143-7
# Script for Figure 4

# load data file and set ggplot parameters
source("./scripts/Crowded_Sex_get_data.R")

#Figure 4 - uncomment error bars if desired (L11)
plot4 <- ggplot(lifehist, aes(day, eer, colour=genotype))
plot4 + stat_summary(fun.y=mean, geom="point", size=3, position= position_dodge(width= 0.40)) +
  stat_summary(fun.y=mean, geom="line",size=0.75, aes(group=genotype), position= position_dodge(width= 0.40)) +
  facet_grid(~seeding_rate) +
  labs(x="Day", y="Edmondson egg ratio")+
  scale_color_manual(values=mycols, name="Genotype")+
  theme( strip.background = element_rect( colour="white"), 
         panel.border=element_blank(), axis.line = element_line())
