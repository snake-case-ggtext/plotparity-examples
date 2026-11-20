---
id: stream_many_series
data_file: _assets/seven_series.csv
---
Seven-series mirror streamgraph with `bw = 0.75` and `alpha = 0.9`.

```r
ggplot(df, aes(x = x, y = value, fill = category)) +
  geom_stream(type = "mirror", bw = 0.75, alpha = 0.9)
```

```python
(
    ggplot(df, aes(x="x", y="value", fill="category"))
    + geom_stream(type="mirror", bw=0.75, alpha=0.9)
)
```
