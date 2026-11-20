---
id: treemap_text_min_size
data_file: _assets/skewed.csv
---
Skewed tile sizes where `min.size = 6` omits labels that cannot fit inside tiny tiles.

```r
ggplot(df, aes(area = value, fill = group, label = item)) +
  geom_treemap() +
  geom_treemap_text(place = "centre", min.size = 6)
```

```python
(
    ggplot(df, aes(area="value", fill="group", label="item"))
    + geom_treemap()
    + geom_treemap_text(place="centre", min_size=6)
)
```
