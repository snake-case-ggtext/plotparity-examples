---
id: mark_rect_facets
data_file: _assets/faceted.csv
expect:
  components: 4
---
Multi-panel `facet_wrap(~panel)` with `geom_mark_rect(aes(fill = group))`.

```r
ggplot(df, aes(x, y)) +
  geom_mark_rect(aes(fill = group)) +
  geom_point() +
  facet_wrap(~panel)
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_rect(aes(fill="group"))
    + geom_point()
    + facet_wrap("~panel")
)
```
