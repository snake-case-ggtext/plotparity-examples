---
id: text_repel_segments_always
data:
  x: [1.0, 1.05, 2.0, 2.06, 3.0, 3.5]
  y: [1.0, 1.06, 2.0, 2.04, 1.2, 2.4]
  lbl: ["One", "Two", "Three", "Four", "Five", "Six"]
expect:
  components: 6
---
`min.segment.length = 0` forces a connected leader segment for every repelled label.

```r
ggplot(df, aes(x, y, label = lbl)) + geom_point() + geom_text_repel(seed = 42, min.segment.length = 0)
```

```python
ggplot(df, aes("x", "y", label="lbl")) + geom_point() + geom_text_repel(seed=42, min_segment_length=0)
```
