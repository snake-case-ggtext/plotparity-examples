---
id: treemap_layout_srow
data_file: _assets/portfolio.csv
---
Treemap using `layout = "srow"` (forces initial horizontal row).

```r
ggplot(df, aes(area = value, fill = category, label = item)) +
  geom_treemap(layout = "srow") +
  geom_treemap_text(layout = "srow", place = "centre")
```

```python
(
    ggplot(df, aes(area="value", fill="category", label="item"))
    + geom_treemap(layout="srow")
    + geom_treemap_text(layout="srow", place="centre")
)
```
