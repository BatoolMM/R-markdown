#load library (add to: )
library(knitr)
#load table data (add to:)
table1 <- read_csv("../data/table.csv")

#generate table (create new table-1 chunk)
kable(table1)


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