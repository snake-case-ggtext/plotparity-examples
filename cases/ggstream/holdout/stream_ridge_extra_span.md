---
id: stream_ridge_extra_span
data_file: _assets/genres_timeline.csv
---
Ridge streamgraph with `extra_span = 0.15` clipped only at the left endpoint (`true_range = "min_x"`).

```r
ggplot(df, aes(x = year, y = value, fill = genre)) +
  geom_stream(type = "ridge", extra_span = 0.15, true_range = "min_x")
```

```python
(
    ggplot(df, aes(x="year", y="value", fill="genre"))
    + geom_stream(type="ridge", extra_span=0.15, true_range="min_x")
)
```
