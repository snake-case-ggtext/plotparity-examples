---
id: treemap_subgroup2_styled
data_file: _assets/economies.csv
---
Two-level nested borders with custom manual fill palette and `place = "bottomleft"` tile labels.

```r
ggplot(df, aes(area = gdp, fill = region, label = country, subgroup = region, subgroup2 = subregion)) +
  geom_treemap(colour = "#eeeeee") +
  geom_treemap_subgroup2_border(colour = "#dddddd", size = 1.5) +
  geom_treemap_subgroup_border(colour = "#111111", size = 3.5) +
  geom_treemap_subgroup2_text(place = "topright", colour = "white", alpha = 0.75, fontface = "italic") +
  geom_treemap_text(place = "bottomleft", colour = "white") +
  scale_fill_manual(values = c(Americas = "#2b5c8f", Asia = "#c44536", Europe = "#2a9d8f"))
```

```python
(
    ggplot(df, aes(area="gdp", fill="region", label="country", subgroup="region", subgroup2="subregion"))
    + geom_treemap(colour="#eeeeee")
    + geom_treemap_subgroup2_border(colour="#dddddd", size=1.5)
    + geom_treemap_subgroup_border(colour="#111111", size=3.5)
    + geom_treemap_subgroup2_text(place="topright", colour="white", alpha=0.75, fontface="italic")
    + geom_treemap_text(place="bottomleft", colour="white")
    + scale_fill_manual(values={"Americas": "#2b5c8f", "Asia": "#c44536", "Europe": "#2a9d8f"})
)
```
