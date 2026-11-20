---
id: treemap_subgroup_grow_reflow
data_file: _assets/economies.csv
---
Nested subgroups with `geom_treemap_text(reflow = TRUE, grow = TRUE)` and translucent centered subgroup labels (`alpha = 0.4`).

```r
ggplot(df, aes(area = gdp, fill = region, label = long_label, subgroup = region)) +
  geom_treemap() +
  geom_treemap_subgroup_border(colour = "white", size = 3) +
  geom_treemap_subgroup_text(place = "centre", grow = TRUE, alpha = 0.4, colour = "black") +
  geom_treemap_text(place = "topleft", reflow = TRUE, grow = TRUE, colour = "white")
```

```python
(
    ggplot(df, aes(area="gdp", fill="region", label="long_label", subgroup="region"))
    + geom_treemap()
    + geom_treemap_subgroup_border(colour="white", size=3)
    + geom_treemap_subgroup_text(place="centre", grow=True, alpha=0.4, colour="black")
    + geom_treemap_text(place="topleft", reflow=True, grow=True, colour="white")
)
```
