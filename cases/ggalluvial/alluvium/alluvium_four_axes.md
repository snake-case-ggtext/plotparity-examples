---
id: alluvium_four_axes
data_file: _assets/wide_four_axis.csv
---
Four-axis wide-format alluvial diagram with fill mapped to an external segment variable.

```r
ggplot(df, aes(y = freq, axis1 = stage1, axis2 = stage2, axis3 = stage3, axis4 = stage4)) +
  geom_alluvium(aes(fill = segment)) +
  geom_stratum()
```

```python
(
    ggplot(df, aes(y="freq", axis1="stage1", axis2="stage2", axis3="stage3", axis4="stage4"))
    + geom_alluvium(aes(fill="segment"))
    + geom_stratum()
)
```
