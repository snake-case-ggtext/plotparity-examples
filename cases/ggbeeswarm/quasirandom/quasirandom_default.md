---
id: quasirandom_default
data_file: _assets/swarm_samples.csv
expect:
  components: 3
---
Default `geom_quasirandom()` kernel-density-weighted van der Corput spread.

```r
ggplot(df, aes(group, y)) + geom_quasirandom()
```

```python
ggplot(df, aes("group", "y")) + geom_quasirandom()
```
