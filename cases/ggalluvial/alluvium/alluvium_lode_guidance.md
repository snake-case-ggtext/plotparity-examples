---
id: alluvium_lode_guidance
data_file: _assets/wide_three_axis.csv
---
Explicit `lode.guidance = "frontback"` controlling within-stratum lode ordering across axes.

```r
ggplot(df, aes(y = freq, axis1 = axis1, axis2 = axis2, axis3 = axis3)) +
  geom_alluvium(aes(fill = cohort), lode.guidance = "frontback") +
  geom_stratum()
```

```python
(
    ggplot(df, aes(y="freq", axis1="axis1", axis2="axis2", axis3="axis3"))
    + geom_alluvium(aes(fill="cohort"), lode_guidance="frontback")
    + geom_stratum()
)
```
