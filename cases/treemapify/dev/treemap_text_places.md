---
id: treemap_text_places
data_file: _assets/portfolio.csv
---
Tile labels aligned to `place = "topleft"` and subgroup labels aligned to `place = "bottomright"` with custom `padding.x` and `padding.y`.

```r
ggplot(df, aes(area = value, fill = category, label = item, subgroup = category)) +
  geom_treemap() +
  geom_treemap_subgroup_border(colour = "white", size = 2) +
  geom_treemap_text(
    place = "topleft",
    padding.x = grid::unit(3, "mm"),
    padding.y = grid::unit(3, "mm")
  ) +
  geom_treemap_subgroup_text(
    place = "bottomright",
    padding.x = grid::unit(2, "mm"),
    padding.y = grid::unit(2, "mm"),
    colour = "white",
    alpha = 0.7
  )
```

```python
(
    ggplot(df, aes(area="value", fill="category", label="item", subgroup="category"))
    + geom_treemap()
    + geom_treemap_subgroup_border(colour="white", size=2)
    + geom_treemap_text(place="topleft", padding_x=3.0, padding_y=3.0)
    + geom_treemap_subgroup_text(
        place="bottomright",
        padding_x=2.0,
        padding_y=2.0,
        colour="white",
        alpha=0.7,
    )
)
```
