---
id: stream_extra_span
data_file: _assets/genres_timeline.csv
---
Streamgraph with `extra_span = 0.2` and `true_range = "none"` showing tapered tails beyond data endpoints.

```r
ggplot(df, aes(x = year, y = value, fill = genre)) +
  geom_stream(extra_span = 0.2, true_range = "none")
```

```python
(
    ggplot(df, aes(x="year", y="value", fill="genre"))
    + geom_stream(extra_span=0.2, true_range="none")
)
```
