---
id: text_repel_direction_y
data:
  x: [1.0, 1.0, 1.0, 2.0, 2.0]
  y: [1.0, 1.05, 1.1, 2.0, 2.04]
  lbl: ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
  grp: ["g1", "g1", "g1", "g2", "g2"]
expect:
  components: 5
---
Vertical-only repulsion (`direction = "y"`) with horizontal nudge and manual colours.

```r
ggplot(df, aes(x, y, label = lbl, colour = grp)) +
  geom_point() +
  geom_text_repel(seed = 42, direction = "y", nudge_x = 0.3, min.segment.length = 0) +
  scale_colour_manual(values = c(g1 = "#1b9e77", g2 = "#d95f02")) +
  xlim(0.5, 3.0)
```

```python
(
    ggplot(df, aes("x", "y", label="lbl", color="grp"))
    + geom_point()
    + geom_text_repel(seed=42, direction="y", nudge_x=0.3, min_segment_length=0)
    + scale_color_manual(values={"g1": "#1b9e77", "g2": "#d95f02"})
    + xlim(0.5, 3.0)
)
```
