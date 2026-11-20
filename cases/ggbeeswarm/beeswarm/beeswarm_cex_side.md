---
id: beeswarm_cex_side
data_file: _assets/swarm_samples.csv
expect:
  components: 3
---
Wider point spacing (`cex = 1.8`) pushed strictly to the positive side (`side = 1`).

```r
ggplot(df, aes(group, y)) + geom_beeswarm(cex = 1.8, side = 1L)
```

```python
ggplot(df, aes("group", "y")) + geom_beeswarm(cex=1.8, side=1)
```
