library(tidyverse)

data3 <- read_csv("../data/figure-3-data.csv", col_types="fi") 

data3 %>%
  mutate(procedure=fct_reorder(procedure, responses)) %>%
  ggplot(data, mapping = aes(x=procedure, y=responses)) +
  geom_bar(stat="identity", fill="#377eb8") +
  coord_flip() +
  scale_x_discrete(labels = function(x) str_wrap(x, width=30)) +
  xlab("Procedures/Activities Cores Would Like To Implement") +
  ylab("Number of Responses")