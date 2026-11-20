---
id: mark_hull_concavity
data_file: _assets/crescent.csv
expect:
  components: 2
---
Concave hull (`concavity = 1.5`) hugging an L-shaped cluster alongside a convex hull (`concavity = 10`) on a compact cluster.

```r
ggplot(df, aes(x, y)) +
  geom_mark_hull(aes(fill = group, filter = group == "Compact"), concavity = 10) +
  geom_mark_hull(aes(fill = group, filter = group == "Crescent"), concavity = 1.5) +
  geom_point()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_hull(aes(fill="group", filter="group == 'Compact'"), concavity=10)
    + geom_mark_hull(aes(fill="group", filter="group == 'Crescent'"), concavity=1.5)
    + geom_point()
)
```
