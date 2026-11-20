---
id: stream_ridge
data_file: _assets/genres_timeline.csv
---
Ridge-style streamgraph (`type = "ridge"`) stacked upward from baseline `y = 0`.

```r
ggplot(df, aes(x = year, y = value, fill = genre)) +
  geom_stream(type = "ridge")
```

```python
(
    ggplot(df, aes(x="year", y="value", fill="genre"))
    + geom_stream(type="ridge")
)
```
