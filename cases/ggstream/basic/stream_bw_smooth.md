---
id: stream_bw_smooth
data_file: _assets/genres_timeline.csv
---
Smoother bandwidth (`bw = 1.0`) compared to default `bw = 0.75`.

```r
ggplot(df, aes(x = year, y = value, fill = genre)) +
  geom_stream(type = "mirror", bw = 1.0)
```

```python
(
    ggplot(df, aes(x="year", y="value", fill="genre"))
    + geom_stream(type="mirror", bw=1.0)
)
```
