---
id: stream_label_proportional
data_file: _assets/genres_timeline.csv
---
Proportional streamgraph with `geom_stream_label(type = "proportional")`.

```r
ggplot(df, aes(x = year, y = value, fill = genre, label = genre)) +
  geom_stream(type = "proportional") +
  geom_stream_label(type = "proportional")
```

```python
(
    ggplot(df, aes(x="year", y="value", fill="genre", label="genre"))
    + geom_stream(type="proportional")
    + geom_stream_label(type="proportional")
)
```
