---
id: mark_hull_coord_flip
data_file: _assets/clusters.csv
expect:
  components: 3
---
Mark hulls with labels under `coord_flip()`.

```r
ggplot(df, aes(x, y)) +
  geom_mark_hull(aes(fill = group, label = group)) +
  geom_point() +
  coord_flip()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_hull(aes(fill="group", label="group"))
    + geom_point()
    + coord_flip()
)
```
