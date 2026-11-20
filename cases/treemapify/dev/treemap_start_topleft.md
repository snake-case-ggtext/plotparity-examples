---
id: treemap_start_topleft
data_file: _assets/portfolio.csv
---
Squarified treemap starting tile placement from the `topleft` corner.

```r
ggplot(df, aes(area = value, fill = category, label = item)) +
  geom_treemap(start = "topleft") +
  geom_treemap_text(start = "topleft", place = "centre")
```

```python
(
    ggplot(df, aes(area="value", fill="category", label="item"))
    + geom_treemap(start="topleft")
    + geom_treemap_text(start="topleft", place="centre")
)
```
