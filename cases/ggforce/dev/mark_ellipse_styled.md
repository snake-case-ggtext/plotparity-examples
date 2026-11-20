---
id: mark_ellipse_styled
data_file: _assets/clusters.csv
expect:
  components: 3
---
Styled ellipses with custom `alpha = 0.5`, `colour = "#1b4f72"`, `linewidth = 1.0`, and `label.fill = "#f4f6f7"`.

```r
ggplot(df, aes(x, y)) +
  geom_mark_ellipse(
    aes(fill = group, label = group),
    alpha = 0.5,
    colour = "#1b4f72",
    linewidth = 1.0,
    label.fill = "#f4f6f7"
  ) +
  geom_point()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_ellipse(
        aes(fill="group", label="group"),
        alpha=0.5,
        color="#1b4f72",
        linewidth=1.0,
        label_fill="#f4f6f7",
    )
    + geom_point()
)
```
