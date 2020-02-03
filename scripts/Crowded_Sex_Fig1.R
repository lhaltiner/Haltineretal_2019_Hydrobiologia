# Haltiner, L., Hänggi, C., Spaak, P., Dennis, S.R. 
# Sex in crowded places: population density regulates reproductive strategy. 
# Hydrobiologia (2019) doi:10.1007/s10750-019-04143-7
# Script for Figure 1

#libraries
library(cowplot)
library(Hmisc)

## load data file and edit structure
# datafile for Fig. 1A
tot <- read.table("./data/Crowded_Sex_growthrate_mean.txt", header=TRUE)
tot$seeding_rate <- as.factor(tot$seeding_rate)

# data file for Fig. 1B
source("./scripts/Crowded_sex_get_data.R")



# Figure 1 A & B

plot1a <- ggplot(tot, aes(x=seeding_rate, y=r.mean, colour=genotype))+
  geom_point(size=3, aes(colour=genotype), position=position_dodge(width=0.1))+
  geom_line(aes(group=genotype), size=0.75, position=position_dodge(width=0.1))+
  geom_errorbar(size= 1, aes(ymin=r.mean - r.se, ymax=r.mean + r.se, width=1), position=position_dodge(width=0.1))+
  labs(x="Seeding rate", y="Population growth rate")+
  scale_colour_manual(values=mycols, name="Genotype")+
  theme(panel.border = element_blank(), axis.line = element_line(),
        legend.position="none",
        plot.margin = unit(c(0, 1, 0.2, 1), "cm"))


plot1b <- ggplot(lifehist, aes(day, pop_size, group=genotype))+
  stat_summary(fun.y=mean, geom="line", size = 0.75, aes(colour=genotype), position=position_dodge(width=0.6))+
  stat_summary(fun.y=mean, geom="point", size=3, aes(colour=genotype), position=position_dodge(width=0.6))+
  stat_summary(fun.data=mean_cl_boot, geom="errorbar", width=0, position=position_dodge(width=0.6), aes(colour=genotype))+
  labs(x="Day", y="Population size") +
  facet_grid(~seeding_rate)+
  scale_colour_manual(values=mycols, name="Genotype")+
  theme(legend.position = "none",
        axis.line = element_line(),
        plot.margin = unit(c(0, 1, 0, 1.4), "cm"),
        strip.background = element_rect( colour="white"),
        panel.border=element_blank())



plot_grid(plot1a,plot1b,  labels = "AUTO", ncol=1)



