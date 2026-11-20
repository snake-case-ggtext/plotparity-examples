---
id: mark_ellipse_basic
data_file: _assets/clusters.csv
expect:
  components: 3
---
Minimum-volume enclosing ellipses with `geom_mark_ellipse(aes(fill = group, label = group))`.

```r
ggplot(df, aes(x, y)) +
  geom_mark_ellipse(aes(fill = group, label = group)) +
  geom_point()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_ellipse(aes(fill="group", label="group"))
    + geom_point()
)
```
