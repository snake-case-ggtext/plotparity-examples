---
id: text_repel_no_segments
data:
  x: [1.0, 1.05, 1.1, 2.0, 2.05]
  y: [1.0, 1.05, 1.1, 2.0, 2.05]
  lbl: ["A1", "A2", "A3", "B1", "B2"]
expect:
  components: 5
---
`min.segment.length = Inf` suppresses all leader segments.

```r
ggplot(df, aes(x, y, label = lbl)) + geom_point() + geom_text_repel(seed = 42, min.segment.length = Inf)
```

```python
ggplot(df, aes("x", "y", label="lbl")) + geom_point() + geom_text_repel(seed=42, min_segment_length=float("inf"))
```
