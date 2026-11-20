---
id: mark_label_box_style
data_file: _assets/clusters.csv
expect:
  components: 3
---
Custom callout box styling: `label.fill = "#fff8dc"`, `label.colour = "#1b3a5c"`, and `label.fontsize = 10`.

```r
ggplot(df, aes(x, y)) +
  geom_mark_hull(
    aes(fill = group, label = group),
    label.fill = "#fff8dc",
    label.colour = "#1b3a5c",
    label.fontsize = 10
  ) +
  geom_point()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_hull(
        aes(fill="group", label="group"),
        label_fill="#fff8dc",
        label_colour="#1b3a5c",
        label_fontsize=10,
    )
    + geom_point()
)
```
