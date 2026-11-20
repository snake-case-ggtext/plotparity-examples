---
id: text_repel_edge_bounds
data:
  x: [0.0, 0.02, 10.0, 9.98, 5.0]
  y: [0.0, 0.02, 10.0, 9.98, 5.0]
  lbl: ["BottomLeft 1", "BottomLeft 2", "TopRight 1", "TopRight 2", "Middle"]
expect:
  components: 5
---
Labels anchored at panel corners must stay inside the panel without overlapping.

```r
ggplot(df, aes(x, y, label = lbl)) + geom_point() + geom_text_repel(seed = 42, min.segment.length = 0)
```

```python
ggplot(df, aes("x", "y", label="lbl")) + geom_point() + geom_text_repel(seed=42, min_segment_length=0)
```
