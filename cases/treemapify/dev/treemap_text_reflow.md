---
id: treemap_text_reflow
data_file: _assets/economies.csv
---
Long multi-word labels wrapped cleanly inside tiles using `reflow = TRUE`.

```r
ggplot(df, aes(area = gdp, fill = region, label = long_label)) +
  geom_treemap() +
  geom_treemap_text(place = "centre", reflow = TRUE)
```

```python
(
    ggplot(df, aes(area="gdp", fill="region", label="long_label"))
    + geom_treemap()
    + geom_treemap_text(place="centre", reflow=True)
)
```
