---
id: curve_cubic
data_file: _assets/wide_three_axis.csv
---
Cubic polynomial ribbon curve (`curve_type = "cubic"`).

```r
ggplot(df, aes(y = freq, axis1 = axis1, axis2 = axis2, axis3 = axis3)) +
  geom_alluvium(aes(fill = cohort), curve_type = "cubic") +
  geom_stratum()
```

```python
(
    ggplot(df, aes(y="freq", axis1="axis1", axis2="axis2", axis3="axis3"))
    + geom_alluvium(aes(fill="cohort"), curve_type="cubic")
    + geom_stratum()
)
```
