---
id: mark_rect_basic
data_file: _assets/clusters.csv
expect:
  components: 3
---
Rounded bounding rectangles with `geom_mark_rect(aes(fill = group, label = group))`.

```r
ggplot(df, aes(x, y)) +
  geom_mark_rect(aes(fill = group, label = group)) +
  geom_point()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_rect(aes(fill="group", label="group"))
    + geom_point()
)
```
