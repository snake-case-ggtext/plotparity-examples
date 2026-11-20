---
id: treemap_text_basic
data_file: _assets/portfolio.csv
---
Squarified treemap with centered tile labels (`place = "centre"`).

```r
ggplot(df, aes(area = value, fill = category, label = item)) +
  geom_treemap() +
  geom_treemap_text(place = "centre")
```

```python
(
    ggplot(df, aes(area="value", fill="category", label="item"))
    + geom_treemap()
    + geom_treemap_text(place="centre")
)
```
