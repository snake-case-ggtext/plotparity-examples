---
id: alluvium_width_alpha
data_file: _assets/wide_three_axis.csv
---
Custom stratum width, high alluvium opacity, explicit alluvium outline color, and styled strata.

```r
ggplot(df, aes(y = freq, axis1 = axis1, axis2 = axis2, axis3 = axis3)) +
  geom_alluvium(aes(fill = axis1), width = 0.2, alpha = 0.8, color = "#1f2937") +
  geom_stratum(width = 0.2, fill = "#e5e7eb", color = "#111827")
```

```python
(
    ggplot(df, aes(y="freq", axis1="axis1", axis2="axis2", axis3="axis3"))
    + geom_alluvium(aes(fill="axis1"), width=0.2, alpha=0.8, color="#1f2937")
    + geom_stratum(width=0.2, fill="#e5e7eb", color="#111827")
)
```
