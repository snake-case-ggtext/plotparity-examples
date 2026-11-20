---
id: quasirandom_methods
data_file: _assets/swarm_samples.csv
expect:
  components: 3
---
`geom_quasirandom(method = "tukey", width = 0.35)` with explicit width.

```r
set.seed(42)
ggplot(df, aes(group, y)) + geom_quasirandom(method = "tukey", width = 0.35)
```

```python
ggplot(df, aes("group", "y")) + geom_quasirandom(method="tukey", width=0.35)
```
