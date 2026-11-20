---
id: text_repel_nudge_position
data:
  x: [1.0, 2.0, 3.0, 4.0]
  y: [1.0, 2.0, 1.5, 2.5]
  lbl: ["N1", "N2", "N3", "N4"]
expect:
  components: 4
---
Standalone `position_nudge_repel()` shifts starting label anchors while keeping segments anchored to original points.

```r
ggplot(df, aes(x, y, label = lbl)) +
  geom_point() +
  geom_text_repel(seed = 42, position = position_nudge_repel(x = 0.25, y = 0.25), min.segment.length = 0)
```

```python
(
    ggplot(df, aes("x", "y", label="lbl"))
    + geom_point()
    + geom_text_repel(seed=42, position=position_nudge_repel(x=0.25, y=0.25), min_segment_length=0)
)
```
