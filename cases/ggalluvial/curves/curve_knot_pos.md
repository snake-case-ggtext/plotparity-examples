---
id: curve_knot_pos
data_file: _assets/wide_three_axis.csv
---
X-spline curve with explicit absolute knot distance (`knot.pos = 0.4, knot.prop = FALSE`) and `width = 0.25`.

```r
ggplot(df, aes(y = freq, axis1 = axis1, axis2 = axis2, axis3 = axis3)) +
  geom_alluvium(aes(fill = cohort), width = 0.25, knot.pos = 0.4, knot.prop = FALSE) +
  geom_stratum(width = 0.25)
```

```python
(
    ggplot(df, aes(y="freq", axis1="axis1", axis2="axis2", axis3="axis3"))
    + geom_alluvium(aes(fill="cohort"), width=0.25, knot_pos=0.4, knot_prop=False)
    + geom_stratum(width=0.25)
)
```
