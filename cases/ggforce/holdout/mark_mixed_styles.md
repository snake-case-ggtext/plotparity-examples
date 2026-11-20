---
id: mark_mixed_styles
data_file: _assets/clusters.csv
expect:
  components: 3
---
Mixed styling: dashed connectors (`con.linetype = "dashed"`), custom `expand = unit(3, "mm")`, `label.fill = "#eaf2f8"`, and `alpha = 0.45`.

```r
ggplot(df, aes(x, y)) +
  geom_mark_hull(
    aes(fill = group, label = group),
    con.linetype = "dashed",
    expand = unit(3, "mm"),
    label.fill = "#eaf2f8",
    alpha = 0.45
  ) +
  geom_point()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_hull(
        aes(fill="group", label="group"),
        con_linetype="dashed",
        expand=3,
        label_fill="#eaf2f8",
        alpha=0.45,
    )
    + geom_point()
)
```
