---
id: alluvium_basic
data_file: _assets/wide_three_axis.csv
---
Basic 3-axis wide-format alluvial diagram with default x-spline ribbons, strata, and centered stratum labels.

```r
ggplot(df, aes(y = freq, axis1 = axis1, axis2 = axis2, axis3 = axis3)) +
  geom_alluvium(aes(fill = cohort)) +
  geom_stratum() +
  geom_text(stat = "stratum", aes(label = after_stat(stratum)))
```

```python
(
    ggplot(df, aes(y="freq", axis1="axis1", axis2="axis2", axis3="axis3"))
    + geom_alluvium(aes(fill="cohort"))
    + geom_stratum()
    + geom_text(aes(label=after_stat("stratum")), stat="stratum")
)
```
