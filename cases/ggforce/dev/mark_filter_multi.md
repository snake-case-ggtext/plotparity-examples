---
id: mark_filter_multi
data_file: _assets/clusters.csv
expect:
  components: 2
---
Filtering to 2 of 3 clusters (`filter = group != "Beta"`) with distinct descriptions and `show.legend = FALSE`.

```r
ggplot(df, aes(x, y)) +
  geom_mark_hull(
    aes(fill = group, label = group, description = desc, filter = group != "Beta"),
    show.legend = FALSE
  ) +
  geom_point()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_hull(
        aes(fill="group", label="group", description="desc", filter="group != 'Beta'"),
        show_legend=False,
    )
    + geom_point()
)
```
