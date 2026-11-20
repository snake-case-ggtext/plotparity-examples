---
id: stream_true_range_both
data_file: _assets/genres_timeline.csv
---
Streamgraph with `extra_span = 0.2` clipped strictly to data x-range via `true_range = "both"`.

```r
ggplot(df, aes(x = year, y = value, fill = genre)) +
  geom_stream(extra_span = 0.2, true_range = "both")
```

```python
(
    ggplot(df, aes(x="year", y="value", fill="genre"))
    + geom_stream(extra_span=0.2, true_range="both")
)
```
