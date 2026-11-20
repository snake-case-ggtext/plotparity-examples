---
id: text_repel_facets
data:
  x: [1.0, 1.05, 2.0, 1.0, 1.06, 2.0]
  y: [1.0, 1.04, 2.0, 1.5, 1.54, 2.2]
  lbl: ["P1", "P2", "P3", "Q1", "Q2", "Q3"]
  grp: ["Left", "Left", "Left", "Right", "Right", "Right"]
expect:
  components: 6
---
Multi-panel `facet_wrap(~grp)` with repelled labels and leader segments in each panel.

```r
ggplot(df, aes(x, y, label = lbl)) +
  geom_point() +
  geom_text_repel(seed = 42, min.segment.length = 0) +
  facet_wrap(~grp)
```

```python
(
    ggplot(df, aes("x", "y", label="lbl"))
    + geom_point()
    + geom_text_repel(seed=42, min_segment_length=0)
    + facet_wrap("~grp")
)
```
