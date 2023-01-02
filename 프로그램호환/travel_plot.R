### Paths for Packages
.libPaths("C:/Users/rproject/AppData/Local/R/win-library/4.2")

library(tidyr)
library(dplyr)
library(stringr)
library(ggplot2)
library(plotly)

all <- read.csv("data/travler.csv", header = T)

df.melt <- reshape2::melt(all, "month")


for (var in commandArgs(trailingOnly=TRUE)) {
    var.ls = strsplit(var, "=", fixed=TRUE)
    if (!is.null(var.ls[[1]][[2]])) {
        assign(var.ls[[1]][1], var.ls[[1]][2])
    } else {
        assign(var.ls[[1]][1], TRUE)
    }
}

if(!exists("sido")){
    sido <- "용인시"
}

ggp2 <- df.melt %>% filter(variable==sido) %>%
ggplot(aes(x=month, y=value)) +
    geom_bar(stat="identity", fill = '#A7CDFF') + theme_classic()+ labs(x = "월", y="관광객수") + 
    scale_x_discrete(limits=c("1월", "2월", "3월","4월","5월","6월","7월","8월","9월","10월","11월"))

p <- ggplotly(ggp2)
htmlwidgets::saveWidget(p, "./df/travel_plot.html", selfcontained = F)