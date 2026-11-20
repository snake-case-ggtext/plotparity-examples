---
id: treemap_layout_fixed
data_file: _assets/portfolio.csv
---
Order-preserving treemap using `layout = "fixed"` (vertical columns filled in input row order).

```r
ggplot(df, aes(area = value, fill = category, label = item)) +
  geom_treemap(layout = "fixed") +
  geom_treemap_text(layout = "fixed", place = "centre")
```

```python
(
    ggplot(df, aes(area="value", fill="category", label="item"))
    + geom_treemap(layout="fixed")
    + geom_treemap_text(layout="fixed", place="centre")
)
```
