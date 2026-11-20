---
id: stream_sorting_inside_out
data_file: _assets/staggered_series.csv
---
Staggered series with `sorting = "inside_out"` (Byron & Wattenberg inside-out ordering).

```r
ggplot(df, aes(x = x, y = value, fill = series)) +
  geom_stream(sorting = "inside_out", extra_span = 0.1) +
  scale_fill_manual(values = c(Alpha = "#e63946", Beta = "#457b9d", Gamma = "#2a9d8f", Delta = "#e9c46a"))
```

```python
(
    ggplot(df, aes(x="x", y="value", fill="series"))
    + geom_stream(sorting="inside_out", extra_span=0.1)
    + scale_fill_manual(values={"Alpha": "#e63946", "Beta": "#457b9d", "Gamma": "#2a9d8f", "Delta": "#e9c46a"})
)
```
