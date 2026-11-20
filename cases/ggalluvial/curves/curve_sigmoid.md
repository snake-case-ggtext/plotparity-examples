---
id: curve_sigmoid
data_file: _assets/wide_three_axis.csv
---
Sigmoid ribbon curve (`curve_type = "sigmoid"`).

```r
ggplot(df, aes(y = freq, axis1 = axis1, axis2 = axis2, axis3 = axis3)) +
  geom_alluvium(aes(fill = cohort), curve_type = "sigmoid") +
  geom_stratum()
```

```python
(
    ggplot(df, aes(y="freq", axis1="axis1", axis2="axis2", axis3="axis3"))
    + geom_alluvium(aes(fill="cohort"), curve_type="sigmoid")
    + geom_stratum()
)
```
