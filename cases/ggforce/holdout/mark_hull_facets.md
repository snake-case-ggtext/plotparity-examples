---
id: mark_hull_facets
data_file: _assets/faceted.csv
expect:
  components: 4
---
Multi-panel `facet_wrap(~panel)` with labelled `geom_mark_hull` clusters in each panel.

```r
ggplot(df, aes(x, y)) +
  geom_mark_hull(aes(fill = group, label = as.character(group))) +
  geom_point() +
  facet_wrap(~panel)
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_hull(aes(fill="group", label="group"))
    + geom_point()
    + facet_wrap("~panel")
)
```
