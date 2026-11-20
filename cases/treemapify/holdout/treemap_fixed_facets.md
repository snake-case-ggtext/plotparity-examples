---
id: treemap_fixed_facets
data_file: _assets/faceted.csv
---
Order-preserving `layout = "fixed"` treemaps across two facets with subgroup borders and labels.

```r
ggplot(df, aes(area = value, fill = subgroup, label = item, subgroup = subgroup)) +
  geom_treemap(layout = "fixed") +
  geom_treemap_subgroup_border(layout = "fixed", colour = "black", size = 2.5) +
  geom_treemap_text(layout = "fixed", place = "centre", colour = "white") +
  facet_wrap(~region)
```

```python
(
    ggplot(df, aes(area="value", fill="subgroup", label="item", subgroup="subgroup"))
    + geom_treemap(layout="fixed")
    + geom_treemap_subgroup_border(layout="fixed", colour="black", size=2.5)
    + geom_treemap_text(layout="fixed", place="centre", colour="white")
    + facet_wrap("~region")
)
```
