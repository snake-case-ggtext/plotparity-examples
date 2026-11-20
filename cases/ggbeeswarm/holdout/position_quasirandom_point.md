---
id: position_quasirandom_point
data_file: _assets/swarm_samples.csv
expect:
  components: 3
---
Standalone `position_quasirandom()` passed directly to `geom_point()`.

```r
ggplot(df, aes(group, y)) + geom_point(position = position_quasirandom(width = 0.3, bandwidth = 0.4))
```

```python
ggplot(df, aes("group", "y")) + geom_point(position=position_quasirandom(width=0.3, bandwidth=0.4))
```
