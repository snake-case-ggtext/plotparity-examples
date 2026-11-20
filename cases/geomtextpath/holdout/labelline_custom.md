---
id: labelline_custom
data:
  x: [0.0000, 0.1571, 0.3142, 0.4712, 0.6283, 0.7854, 0.9425, 1.0996, 1.2566, 1.4137, 1.5708, 1.7279, 1.8850, 2.0420, 2.1991, 2.3562, 2.5133, 2.6704, 2.8274, 2.9845, 3.1416, 3.2987, 3.4558, 3.6128, 3.7699, 3.9270, 4.0841, 4.2412, 4.3982, 4.5553, 4.7124, 4.8695, 5.0265, 5.1836, 5.3407, 5.4978, 5.6549, 5.8119, 5.9690, 6.1261, 6.2832]
  y: [0.0000, 0.1564, 0.3090, 0.4540, 0.5878, 0.7071, 0.8090, 0.8910, 0.9511, 0.9877, 1.0000, 0.9877, 0.9511, 0.8910, 0.8090, 0.7071, 0.5878, 0.4540, 0.3090, 0.1564, 0.0000, -0.1564, -0.3090, -0.4540, -0.5878, -0.7071, -0.8090, -0.8910, -0.9511, -0.9877, -1.0000, -0.9877, -0.9511, -0.8910, -0.8090, -0.7071, -0.5878, -0.4540, -0.3090, -0.1564, -0.0000]
  lbl: ["Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label", "Custom label"]
expect:
  components: 1
---
`geom_labelline()` with custom `hjust`, `fill`, `textcolor`, and `linecolor`.

```r
ggplot(df, aes(x, y, label = lbl)) +
  geom_labelline(hjust = 0.25, fill = "mistyrose", textcolor = "maroon", linecolor = "slateblue")
```

```python
ggplot(df, aes("x", "y", label="lbl")) + geom_labelline(
    hjust=0.25, fill="mistyrose", textcolor="maroon", linecolor="slateblue"
)
```
