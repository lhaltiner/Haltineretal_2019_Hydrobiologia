# Haltiner, L., Hänggi, C., Spaak, P., Dennis, S.R. 
# Sex in crowded places: population density regulates reproductive strategy. 
# Hydrobiologia (2019) doi:10.1007/s10750-019-04143-7
# Script for Supplementary Figure S1 


# library
library(ggplot2)

# colour settings
colpap=c("#87CEEB",  "#1E90FF", "#4169E1","#0000CD", "#000080")

# load data file
feeding <- read.table("./data/Crowded_Sex_feedingregime.txt",header=TRUE)


# Figure S1
plots1 <- ggplot(feeding, aes(x=day, y=value))
plots1 + geom_line(aes(col=as.factor(seeding_rate)), size=1.2)+
  labs(x="Day", y=expression(paste("mg C ",sep=" ", italic("A. obliquus"),sep=" ", "L"^"-1")))+
  scale_colour_manual(values=colpap, name="Seeding rate", labels=c("1", "2", "3", "4", "5"))+
  theme(panel.border = element_blank(), axis.line = element_line(),
        panel.grid.major = element_blank(),panel.grid.minor = element_blank(),
        axis.text=element_text(size=14),
        axis.title=element_text(size=16),
        legend.text=element_text(size=14), legend.position = c(0.15, 0.85))


