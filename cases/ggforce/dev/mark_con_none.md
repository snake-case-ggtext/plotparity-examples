---
id: mark_con_none
data_file: _assets/clusters.csv
expect:
  components: 3
---
Callout labels with connectors disabled via `con.type = "none"`.

```r
ggplot(df, aes(x, y)) +
  geom_mark_hull(aes(fill = group, label = group), con.type = "none") +
  geom_point()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_hull(aes(fill="group", label="group"), con_type="none")
    + geom_point()
)
```
