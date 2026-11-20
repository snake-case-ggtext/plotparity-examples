---
id: treemap_start_bottomright_srow
data_file: _assets/portfolio.csv
---
Treemap with `layout = "srow"` and `start = "bottomright"` plus centered tile labels.

```r
ggplot(df, aes(area = value, fill = category, label = item)) +
  geom_treemap(layout = "srow", start = "bottomright") +
  geom_treemap_text(layout = "srow", start = "bottomright", place = "centre")
```

```python
(
    ggplot(df, aes(area="value", fill="category", label="item"))
    + geom_treemap(layout="srow", start="bottomright")
    + geom_treemap_text(layout="srow", start="bottomright", place="centre")
)
```
