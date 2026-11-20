---
id: treemap_facets
data_file: _assets/faceted.csv
---
Multi-panel faceted treemaps (`facet_wrap(~region)`) with centered tile labels.

```r
ggplot(df, aes(area = value, fill = subgroup, label = item)) +
  geom_treemap() +
  geom_treemap_text(place = "centre", colour = "white") +
  facet_wrap(~region)
```

```python
(
    ggplot(df, aes(area="value", fill="subgroup", label="item"))
    + geom_treemap()
    + geom_treemap_text(place="centre", colour="white")
    + facet_wrap("~region")
)
```
