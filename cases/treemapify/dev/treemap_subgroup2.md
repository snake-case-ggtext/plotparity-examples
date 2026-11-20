---
id: treemap_subgroup2
data_file: _assets/economies.csv
---
Two-level nested subgroup hierarchy (`subgroup = region`, `subgroup2 = subregion`) with distinct border colors and widths.

```r
ggplot(df, aes(area = gdp, fill = region, label = country, subgroup = region, subgroup2 = subregion)) +
  geom_treemap() +
  geom_treemap_subgroup2_border(colour = "white", size = 1.5) +
  geom_treemap_subgroup_border(colour = "black", size = 3.5) +
  geom_treemap_text(place = "centre", colour = "black")
```

```python
(
    ggplot(df, aes(area="gdp", fill="region", label="country", subgroup="region", subgroup2="subregion"))
    + geom_treemap()
    + geom_treemap_subgroup2_border(colour="white", size=1.5)
    + geom_treemap_subgroup_border(colour="black", size=3.5)
    + geom_treemap_text(place="centre", colour="black")
)
```
