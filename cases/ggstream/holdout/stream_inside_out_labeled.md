---
id: stream_inside_out_labeled
data_file: _assets/staggered_series.csv
---
Inside-out sorted streamgraph with custom manual palette and `geom_stream_label()`.

```r
ggplot(df, aes(x = x, y = value, fill = series, label = series)) +
  geom_stream(sorting = "inside_out", extra_span = 0.1) +
  geom_stream_label(sorting = "inside_out", extra_span = 0.1) +
  scale_fill_manual(values = c(Alpha = "#264653", Beta = "#2a9d8f", Gamma = "#e9c46a", Delta = "#e76f51"))
```

```python
(
    ggplot(df, aes(x="x", y="value", fill="series", label="series"))
    + geom_stream(sorting="inside_out", extra_span=0.1)
    + geom_stream_label(sorting="inside_out", extra_span=0.1)
    + scale_fill_manual(values={"Alpha": "#264653", "Beta": "#2a9d8f", "Gamma": "#e9c46a", "Delta": "#e76f51"})
)
```
