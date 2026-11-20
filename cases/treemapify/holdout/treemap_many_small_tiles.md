---
id: treemap_many_small_tiles
data_file: _assets/skewed.csv
---
Skewed distribution with 1 giant tile and 12 progressively smaller tiles testing squarification and `min.size = 5` label hiding.

```r
ggplot(df, aes(area = value, fill = group, label = item, subgroup = group)) +
  geom_treemap() +
  geom_treemap_subgroup_border(colour = "white", size = 2.5) +
  geom_treemap_text(place = "centre", min.size = 5, colour = "black")
```

```python
(
    ggplot(df, aes(area="value", fill="group", label="item", subgroup="group"))
    + geom_treemap()
    + geom_treemap_subgroup_border(colour="white", size=2.5)
    + geom_treemap_text(place="centre", min_size=5, colour="black")
)
```
