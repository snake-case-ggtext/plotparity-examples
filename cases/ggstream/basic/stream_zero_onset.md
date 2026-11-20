---
id: stream_zero_onset
data_file: _assets/staggered_series.csv
---
Series with staggered zero intervals entering and leaving mid-timeline.

```r
ggplot(df, aes(x = x, y = value, fill = series)) +
  geom_stream(type = "mirror", extra_span = 0.1)
```

```python
(
    ggplot(df, aes(x="x", y="value", fill="series"))
    + geom_stream(type="mirror", extra_span=0.1)
)
```
