---
id: stream_label_ridge
data_file: _assets/genres_timeline.csv
---
Ridge streamgraph with `geom_stream_label(type = "ridge")` centered inside each stream.

```r
ggplot(df, aes(x = year, y = value, fill = genre, label = genre)) +
  geom_stream(type = "ridge") +
  geom_stream_label(type = "ridge")
```

```python
(
    ggplot(df, aes(x="year", y="value", fill="genre", label="genre"))
    + geom_stream(type="ridge")
    + geom_stream_label(type="ridge")
)
```
