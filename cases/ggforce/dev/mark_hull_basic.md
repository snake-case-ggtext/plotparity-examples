---
id: mark_hull_basic
data_file: _assets/clusters.csv
expect:
  components: 3
---
Three clustered groups enclosed by default `geom_mark_hull(aes(fill = group))` without labels.

```r
ggplot(df, aes(x, y)) +
  geom_mark_hull(aes(fill = group)) +
  geom_point()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_hull(aes(fill="group"))
    + geom_point()
)
```
