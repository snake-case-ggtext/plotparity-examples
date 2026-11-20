---
id: alluvium_decreasing_false
data_file: _assets/wide_three_axis.csv
---
Strata and lodes sorted by ascending total weight (`decreasing = FALSE`, largest stratum on top).

```r
ggplot(df, aes(y = freq, axis1 = axis1, axis2 = axis2, axis3 = axis3)) +
  geom_alluvium(aes(fill = cohort), decreasing = FALSE) +
  geom_stratum(decreasing = FALSE)
```

```python
(
    ggplot(df, aes(y="freq", axis1="axis1", axis2="axis2", axis3="axis3"))
    + geom_alluvium(aes(fill="cohort"), decreasing=False)
    + geom_stratum(decreasing=False)
)
```
