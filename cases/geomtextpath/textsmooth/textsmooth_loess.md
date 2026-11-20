---
id: textsmooth_loess
data:
  x: [0.0000, 0.2069, 0.4138, 0.6207, 0.8276, 1.0345, 1.2414, 1.4483, 1.6552, 1.8621, 2.0690, 2.2759, 2.4828, 2.6897, 2.8966, 3.1034, 3.3103, 3.5172, 3.7241, 3.9310, 4.1379, 4.3448, 4.5517, 4.7586, 4.9655, 5.1724, 5.3793, 5.5862, 5.7931, 6.0000]
  y: [0.1500, 0.3256, 0.4447, 0.5297, 0.6105, 0.7099, 0.8322, 0.9594, 1.0574, 1.0887, 1.0272, 0.8690, 0.6357, 0.3669, 0.1072, -0.1090, -0.2684, -0.3807, -0.4718, -0.5707, -0.6946, -0.8403, -0.9831, -1.0854, -1.1108, -1.0381, -0.8708, -0.6361, -0.3764, -0.1341]
  lbl: ["Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve", "Smooth curve"]
expect:
  components: 1
---
`geom_textsmooth(method = "loess")` drawing curved text along a locally weighted regression curve.

```r
ggplot(df, aes(x, y, label = lbl)) +
  geom_point(alpha = 0.4) +
  geom_textsmooth(method = "loess", formula = y ~ x)
```

```python
(
    ggplot(df, aes("x", "y", label="lbl"))
    + geom_point(alpha=0.4)
    + geom_textsmooth(method="loess")
)
```
