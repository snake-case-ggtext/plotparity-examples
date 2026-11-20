---
id: treemap_subgroups
data_file: _assets/economies.csv
---
Single-level subgroup clustering (`aes(subgroup = region)`) with subgroup borders and subgroup text labels.

```r
ggplot(df, aes(area = gdp, fill = region, label = country, subgroup = region)) +
  geom_treemap() +
  geom_treemap_subgroup_border() +
  geom_treemap_subgroup_text(place = "centre", grow = TRUE, alpha = 0.5, colour = "black") +
  geom_treemap_text(colour = "white", place = "topleft")
```

```python
(
    ggplot(df, aes(area="gdp", fill="region", label="country", subgroup="region"))
    + geom_treemap()
    + geom_treemap_subgroup_border()
    + geom_treemap_subgroup_text(place="centre", grow=True, alpha=0.5, colour="black")
    + geom_treemap_text(colour="white", place="topleft")
)
```
