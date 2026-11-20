---
id: alluvium_facets
data_file: _assets/wide_three_axis.csv
---
Multi-panel `facet_wrap(~region)` alluvial diagram checking per-panel stacking and flows.

```r
ggplot(df, aes(y = freq, axis1 = axis1, axis2 = axis2, axis3 = axis3)) +
  geom_alluvium(aes(fill = cohort)) +
  geom_stratum() +
  geom_text(stat = "stratum", aes(label = after_stat(stratum))) +
  facet_wrap(~region)
```

```python
(
    ggplot(df, aes(y="freq", axis1="axis1", axis2="axis2", axis3="axis3"))
    + geom_alluvium(aes(fill="cohort"))
    + geom_stratum()
    + geom_text(aes(label=after_stat("stratum")), stat="stratum")
    + facet_wrap("~region")
)
```
