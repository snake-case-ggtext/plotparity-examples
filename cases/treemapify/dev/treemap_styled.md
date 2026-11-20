---
id: treemap_styled
data_file: _assets/economies.csv
---
Custom continuous fill gradient, custom tile border color and alpha, bold tile labels, and translucent italic white subgroup labels (`alpha = 0.5`).

```r
ggplot(df, aes(area = gdp, fill = hdi, label = country, subgroup = region)) +
  geom_treemap(colour = "white", alpha = 0.9) +
  geom_treemap_subgroup_border(colour = "#222222", size = 3) +
  geom_treemap_subgroup_text(
    place = "centre",
    grow = TRUE,
    alpha = 0.5,
    colour = "white",
    fontface = "italic"
  ) +
  geom_treemap_text(colour = "#111111", place = "topleft", fontface = "bold") +
  scale_fill_gradient(low = "#d0e1f9", high = "#1d4e89")
```

```python
(
    ggplot(df, aes(area="gdp", fill="hdi", label="country", subgroup="region"))
    + geom_treemap(colour="white", alpha=0.9)
    + geom_treemap_subgroup_border(colour="#222222", size=3)
    + geom_treemap_subgroup_text(
        place="centre",
        grow=True,
        alpha=0.5,
        colour="white",
        fontface="italic",
    )
    + geom_treemap_text(colour="#111111", place="topleft", fontface="bold")
    + scale_fill_gradient(low="#d0e1f9", high="#1d4e89")
)
```
