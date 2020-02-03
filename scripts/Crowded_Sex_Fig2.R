# Haltiner, L., Hänggi, C., Spaak, P., Dennis, S.R. 
# Sex in crowded places: population density regulates reproductive strategy. 
# Hydrobiologia (2019) doi:10.1007/s10750-019-04143-7
# Script for Figure 2

# load data and set ggplot parameters
source("./scripts/Crowded_Sex_get_data.R")


# Figure 2
plot2<- ggplot(lifehist, aes(x=pop_size))
plot2+  geom_point(aes(y=eggs), colour="grey73", size=3)+ 
  geom_smooth(aes(pop_size, y=eggs),method ="loess", colour="#3366FF", se=FALSE, size=1.5)+
  geom_point(aes(pop_size, y=epprod*4), colour="grey53", size=3, shape=17)+
  geom_smooth(aes(pop_size, y=epprod*4),method ="loess", colour="#FF3333", se=FALSE, size=1.5)+
  labs(x="Population size", y="Eggs", size=2) +
  scale_y_continuous( sec.axis = sec_axis(~./4,name="Ephippia" ))
