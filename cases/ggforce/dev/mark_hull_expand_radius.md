---
id: mark_hull_expand_radius
data_file: _assets/clusters.csv
expect:
  components: 3
---
Hull enclosures with tight `expand = unit(2, "mm")` and sharp corners `radius = unit(0, "mm")`.

```r
ggplot(df, aes(x, y)) +
  geom_mark_hull(aes(fill = group), expand = unit(2, "mm"), radius = unit(0, "mm")) +
  geom_point()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_hull(aes(fill="group"), expand=2, radius=0)
    + geom_point()
)
```
