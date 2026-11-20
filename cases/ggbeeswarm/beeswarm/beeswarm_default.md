---
id: beeswarm_default
data_file: _assets/swarm_samples.csv
expect:
  components: 3
---
Default `geom_beeswarm()` across three groups (normal, tight, bimodal).

```r
ggplot(df, aes(group, y)) + geom_beeswarm()
```

```python
ggplot(df, aes("group", "y")) + geom_beeswarm()
```
