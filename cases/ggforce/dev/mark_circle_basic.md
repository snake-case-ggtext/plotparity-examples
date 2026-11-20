---
id: mark_circle_basic
data_file: _assets/clusters.csv
expect:
  components: 3
---
Minimum enclosing circles with `geom_mark_circle(aes(fill = group, label = group))`.

```r
ggplot(df, aes(x, y)) +
  geom_mark_circle(aes(fill = group, label = group)) +
  geom_point()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_circle(aes(fill="group", label="group"))
    + geom_point()
)
```
