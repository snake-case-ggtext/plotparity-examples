---
id: stream_facets
data_file: _assets/faceted_streams.csv
---
Multi-panel streamgraphs split across `facet_wrap(~panel)`.

```r
ggplot(df, aes(x = x, y = value, fill = series)) +
  geom_stream(type = "mirror") +
  facet_wrap(~panel)
```

```python
(
    ggplot(df, aes(x="x", y="value", fill="series"))
    + geom_stream(type="mirror")
    + facet_wrap("~panel")
)
```
