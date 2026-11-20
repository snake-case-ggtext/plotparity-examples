---
id: stream_mirror_basic
data_file: _assets/genres_timeline.csv
---
Default symmetric mirror streamgraph (`type = "mirror"`) with five genre series.

```r
ggplot(df, aes(x = year, y = value, fill = genre)) +
  geom_stream(type = "mirror")
```

```python
(
    ggplot(df, aes(x="year", y="value", fill="genre"))
    + geom_stream(type="mirror")
)
```
