library(tidyverse)

data <- read_csv("../data/figure-3-data.csv", col_types="fi") %>%
  mutate(procedure=fct_reorder(procedure, responses))

ggplot(data, aes(x=procedure, y=responses)) +
  geom_bar(stat="identity", fill="blue") +
  coord_flip() +
  scale_x_discrete(labels = function(x) str_wrap(x, width=30)) +
  xlab("Procedures/Activities Cores Would Like To Implement") +
  ylab("Number of Responses")