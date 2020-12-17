library(tidyverse)

data1 <- read_csv("../data/figure-1-data.csv", col_types="fi")

pie_data <- data1 %>%
  mutate(proportion=count/sum(count)) %>%
  arrange(desc(proportion)) %>%
  mutate(lab.ypos = cumsum(proportion) - 0.5*proportion)

ggplot(pie_data, aes(x=2, y=proportion, fill=familiarity)) +
  geom_bar(stat="identity", color="white") +
  coord_polar(theta="y", start=0) +
  geom_text(aes(y=lab.ypos, label=paste(round(proportion*100), "%", sep="")), color="white") +
  scale_fill_brewer(palette="Set1", name="Familiarity", guide=guide_legend(reverse=TRUE)) +
  theme_void()