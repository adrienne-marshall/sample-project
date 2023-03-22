# Sample script to download and plot data. 

library(tidyverse)
library(snotelr)

snotel_download(site_id = 564,
                path = "data",
                internal = F)

site_564 <- read_csv("data/snotel_564.csv")

p <- ggplot(site_564, aes(x = date, y = snow_water_equivalent)) + 
  geom_line()

pdf("figures/snow_hydrograph.pdf",
    width = 9, height = 5)
p
dev.off()
