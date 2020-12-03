```{r, message=FALSE, echo=FALSE}
table1 <- read_csv("../data/table.csv")
knitr::kable(table1, caption="Table 1. Major challenges to rigor observed in shared resources")
```

# optional css code (if time)

```{css, echo=FALSE}
table {
  margin: auto;
  border-top: 1px solid #666;
  border-bottom: 1px solid #666;
}
table thead th { border-bottom: 1px solid #ddd; }
  th, td { padding: 5px; }
  thead, tfoot, tr:nth-child(even) { background: #eee; }
      ```