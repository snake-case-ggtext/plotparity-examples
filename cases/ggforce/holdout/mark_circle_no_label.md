---
id: mark_circle_no_label
data_file: _assets/clusters.csv
expect:
  components: 3
---
Unlabelled `geom_mark_circle` with custom fill palette and `alpha = 0.4`.

```r
ggplot(df, aes(x, y)) +
  geom_mark_circle(aes(fill = group), alpha = 0.4) +
  scale_fill_manual(values = c(Alpha = "#e67e22", Beta = "#2e86c1", Gamma = "#27ae60")) +
  geom_point()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_circle(aes(fill="group"), alpha=0.4)
    + scale_fill_manual(values={"Alpha": "#e67e22", "Beta": "#2e86c1", "Gamma": "#27ae60"})
    + geom_point()
)
```
