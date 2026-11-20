---
id: textline_coord_flip
data:
  x: [0.0000, 0.1571, 0.3142, 0.4712, 0.6283, 0.7854, 0.9425, 1.0996, 1.2566, 1.4137, 1.5708, 1.7279, 1.8850, 2.0420, 2.1991, 2.3562, 2.5133, 2.6704, 2.8274, 2.9845, 3.1416, 3.2987, 3.4558, 3.6128, 3.7699, 3.9270, 4.0841, 4.2412, 4.3982, 4.5553, 4.7124, 4.8695, 5.0265, 5.1836, 5.3407, 5.4978, 5.6549, 5.8119, 5.9690, 6.1261, 6.2832]
  y: [0.0000, 0.1724, 0.3425, 0.5080, 0.6668, 0.8170, 0.9566, 1.0844, 1.1990, 1.2995, 1.3854, 1.4566, 1.5131, 1.5556, 1.5850, 1.6024, 1.6093, 1.6076, 1.5991, 1.5861, 1.5708, 1.5555, 1.5425, 1.5340, 1.5323, 1.5392, 1.5566, 1.5860, 1.6285, 1.6850, 1.7562, 1.8421, 1.9426, 2.0572, 2.1849, 2.3246, 2.4748, 2.6336, 2.7991, 2.9692, 3.1416]
  lbl: ["Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve", "Flipped curve"]
expect:
  components: 1
---
`coord_flip()` with curved `geom_textline()`.

```r
ggplot(df, aes(x, y, label = lbl)) +
  geom_textline() +
  coord_flip()
```

```python
ggplot(df, aes("x", "y", label="lbl")) + geom_textline() + coord_flip()
```
