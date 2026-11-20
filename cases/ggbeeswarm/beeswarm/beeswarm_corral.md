---
id: beeswarm_corral
data_file: _assets/swarm_samples.csv
expect:
  components: 3
---
Corral wrapping (`corral = "wrap"`, `corral.width = 0.5`) keeps wide swarms inside bounds.

```r
ggplot(df, aes(group, y)) + geom_beeswarm(cex = 3, corral = "wrap", corral.width = 0.5)
```

```python
ggplot(df, aes("group", "y")) + geom_beeswarm(cex=3, corral="wrap", corral_width=0.5)
```
