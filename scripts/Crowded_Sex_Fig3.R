# Haltiner, L., Hänggi, C., Spaak, P., Dennis, S.R. 
# Sex in crowded places: population density regulates reproductive strategy. 
# Hydrobiologia (2019) doi:10.1007/s10750-019-04143-7
# Script for Figure 3


# load data file and set ggplot parameters
source("./scripts/Crowded_Sex_get_data.R")

# color setting
colpap=c("#87CEEB",  "#1E90FF", "#4169E1","#0000CD", "#000080") 

# Figure 3 
plot3 <- ggplot(lifehist, aes(x=day, y=csumperind))
plot3 + geom_point(position = "jitter", aes(col=seeding_rate))+
  labs(x="Day", y=expression(paste("mg C ",sep=" ", italic("A. obliquus"),sep=" ", "L"^"-1", sep=" ", italic("Daphnia")^"-1")))+
  scale_colour_manual(values=colpap, name="Seeding rate", labels=c("1", "2", "3", "4", "5"))+
   theme(panel.border = element_blank(), axis.line = element_line(),
        axis.text=element_text(size=14),
        axis.title=element_text(size=16),
        legend.text=element_text(size=14), 
        legend.position = c(0.8 , 0.8))+
  scale_y_continuous(expand = c(0, 0), limits = c(0,1.7))+
  xlim("5", "9", "13", "17", "21")
