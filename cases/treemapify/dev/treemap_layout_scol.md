---
id: treemap_layout_scol
data_file: _assets/portfolio.csv
---
Treemap using `layout = "scol"` (forces initial vertical column) with subgroup clustering.

```r
ggplot(df, aes(area = value, fill = category, label = item, subgroup = category)) +
  geom_treemap(layout = "scol") +
  geom_treemap_subgroup_border(layout = "scol") +
  geom_treemap_text(layout = "scol", place = "centre")
```

```python
(
    ggplot(df, aes(area="value", fill="category", label="item", subgroup="category"))
    + geom_treemap(layout="scol")
    + geom_treemap_subgroup_border(layout="scol")
    + geom_treemap_text(layout="scol", place="centre")
)
```
