---
id: alluvium_decreasing_true
data_file: _assets/wide_three_axis.csv
---
Strata and lodes sorted by decreasing total weight (largest stratum on bottom) with stratum labels.

```r
ggplot(df, aes(y = freq, axis1 = axis1, axis2 = axis2, axis3 = axis3)) +
  geom_alluvium(aes(fill = cohort), decreasing = TRUE) +
  geom_stratum(decreasing = TRUE) +
  geom_text(stat = "stratum", aes(label = after_stat(stratum)), decreasing = TRUE)
```

```python
(
    ggplot(df, aes(y="freq", axis1="axis1", axis2="axis2", axis3="axis3"))
    + geom_alluvium(aes(fill="cohort"), decreasing=True)
    + geom_stratum(decreasing=True)
    + geom_text(aes(label=after_stat("stratum")), stat="stratum", decreasing=True)
)
```
