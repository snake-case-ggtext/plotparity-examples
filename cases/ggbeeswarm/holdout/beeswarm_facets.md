---
id: beeswarm_facets
data_file: _assets/swarm_samples.csv
expect:
  components: 6
---
Multi-panel `facet_wrap(~sub)` beeswarm checks extraction and spacing across all panels.

```r
ggplot(df, aes(group, y)) + geom_beeswarm(cex = 2) + facet_wrap(~sub)
```

```python
ggplot(df, aes("group", "y")) + geom_beeswarm(cex=2) + facet_wrap("~sub")
```
