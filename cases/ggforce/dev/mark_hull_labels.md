---
id: mark_hull_labels
data_file: _assets/clusters.csv
expect:
  components: 3
---
Three clusters with `geom_mark_hull(aes(fill = group, label = group))`, auto-placed callouts, and elbow connectors.

```r
ggplot(df, aes(x, y)) +
  geom_mark_hull(aes(fill = group, label = group)) +
  geom_point()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_hull(aes(fill="group", label="group"))
    + geom_point()
)
```
