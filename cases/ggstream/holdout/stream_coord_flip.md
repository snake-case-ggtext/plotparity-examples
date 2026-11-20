---
id: stream_coord_flip
data_file: _assets/genres_timeline.csv
---
Vertical streamgraph using `coord_flip()`.

```r
ggplot(df, aes(x = year, y = value, fill = genre)) +
  geom_stream(type = "mirror") +
  coord_flip()
```

```python
(
    ggplot(df, aes(x="year", y="value", fill="genre"))
    + geom_stream(type="mirror")
    + coord_flip()
)
```
