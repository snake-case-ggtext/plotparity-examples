---
id: treemap_text_grow
data_file: _assets/portfolio.csv
---
Tile labels scaled up with `grow = TRUE` to fill each tile box.

```r
ggplot(df, aes(area = value, fill = category, label = item)) +
  geom_treemap() +
  geom_treemap_text(place = "centre", grow = TRUE)
```

```python
(
    ggplot(df, aes(area="value", fill="category", label="item"))
    + geom_treemap()
    + geom_treemap_text(place="centre", grow=True)
)
```
