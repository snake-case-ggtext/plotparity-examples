---
id: stream_proportional
data_file: _assets/genres_timeline.csv
---
Proportional streamgraph (`type = "proportional"`) normalized to fill `[0, 1]`.

```r
ggplot(df, aes(x = year, y = value, fill = genre)) +
  geom_stream(type = "proportional")
```

```python
(
    ggplot(df, aes(x="year", y="value", fill="genre"))
    + geom_stream(type="proportional")
)
```
