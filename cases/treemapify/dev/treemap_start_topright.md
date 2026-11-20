---
id: treemap_start_topright
data_file: _assets/portfolio.csv
---
Squarified treemap starting tile placement from the `topright` corner.

```r
ggplot(df, aes(area = value, fill = category, label = item)) +
  geom_treemap(start = "topright") +
  geom_treemap_text(start = "topright", place = "centre")
```

```python
(
    ggplot(df, aes(area="value", fill="category", label="item"))
    + geom_treemap(start="topright")
    + geom_treemap_text(start="topright", place="centre")
)
```
