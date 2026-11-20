---
id: text_repel_cluster
data:
  x: [1.0, 1.04, 1.08, 1.12, 2.0, 2.05, 2.1, 3.0, 3.05]
  y: [1.0, 1.04, 1.08, 1.02, 2.0, 2.04, 1.98, 1.4, 1.44]
  lbl: ["Alpha", "Beta", "Gamma", "Delta", "Epsilon", "Zeta", "Eta", "Theta", "Iota"]
expect:
  components: 9
---
Tightly clustered points repelled cleanly without label-label or label-point overlap.

```r
ggplot(df, aes(x, y, label = lbl)) + geom_point() + geom_text_repel(seed = 42)
```

```python
ggplot(df, aes("x", "y", label="lbl")) + geom_point() + geom_text_repel(seed=42)
```
