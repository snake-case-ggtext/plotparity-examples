---
id: stream_label_mirror
data_file: _assets/genres_timeline.csv
---
Mirror streamgraph with direct stream labels placed via `geom_stream_label()`.

```r
ggplot(df, aes(x = year, y = value, fill = genre, label = genre)) +
  geom_stream(type = "mirror") +
  geom_stream_label(type = "mirror")
```

```python
(
    ggplot(df, aes(x="year", y="value", fill="genre", label="genre"))
    + geom_stream(type="mirror")
    + geom_stream_label(type="mirror")
)
```
