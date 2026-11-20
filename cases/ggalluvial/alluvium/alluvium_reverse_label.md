---
id: alluvium_reverse_label
data_file: _assets/wide_three_axis.csv
---
Non-reversed categorical stacking (`reverse = FALSE`) paired with boxed `geom_label(stat = "stratum")`.

```r
ggplot(df, aes(y = freq, axis1 = axis1, axis2 = axis2, axis3 = axis3)) +
  geom_alluvium(aes(fill = cohort), reverse = FALSE) +
  geom_stratum(reverse = FALSE) +
  geom_label(stat = "stratum", aes(label = after_stat(stratum)), reverse = FALSE)
```

```python
(
    ggplot(df, aes(y="freq", axis1="axis1", axis2="axis2", axis3="axis3"))
    + geom_alluvium(aes(fill="cohort"), reverse=False)
    + geom_stratum(reverse=False)
    + geom_label(aes(label=after_stat("stratum")), stat="stratum", reverse=False)
)
```
