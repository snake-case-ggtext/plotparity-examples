---
id: treemap_basic
data_file: _assets/portfolio.csv
---
Basic squarified treemap (`start = "bottomleft"`) mapping tile area to `value` and fill to `category`.

```r
ggplot(df, aes(area = value, fill = category)) +
  geom_treemap()
```

```python
(
    ggplot(df, aes(area="value", fill="category"))
    + geom_treemap()
)
```
