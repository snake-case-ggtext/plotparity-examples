---
id: beeswarm_coord_flip
data_file: _assets/swarm_samples.csv
expect:
  components: 3
---
Horizontal beeswarm via `coord_flip()`.

```r
ggplot(df, aes(group, y)) + geom_beeswarm(cex = 2) + coord_flip()
```

```python
ggplot(df, aes("group", "y")) + geom_beeswarm(cex=2) + coord_flip()
```
