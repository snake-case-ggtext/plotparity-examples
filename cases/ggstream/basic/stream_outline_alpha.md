---
id: stream_outline_alpha
data_file: _assets/genres_timeline.csv
---
Streamgraph with crisp white outlines (`color = "white", lwd = 0.5`) and translucent fill (`alpha = 0.85`).

```r
ggplot(df, aes(x = year, y = value, fill = genre)) +
  geom_stream(color = "white", lwd = 0.5, alpha = 0.85)
```

```python
(
    ggplot(df, aes(x="year", y="value", fill="genre"))
    + geom_stream(color="white", lwd=0.5, alpha=0.85)
)
```
