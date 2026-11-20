---
id: beeswarm_compact_hex
data_file: _assets/swarm_samples.csv
expect:
  components: 3
---
Hexagonal grid packing (`method = "hex"`) with custom point size and alpha.

```r
ggplot(df, aes(group, y)) + geom_beeswarm(method = "hex", cex = 2.5, size = 3, alpha = 0.7, colour = "#3366cc")
```

```python
ggplot(df, aes("group", "y")) + geom_beeswarm(method="hex", cex=2.5, size=3, alpha=0.7, color="#3366cc")
```
