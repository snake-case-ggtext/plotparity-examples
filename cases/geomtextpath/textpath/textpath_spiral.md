---
id: textpath_spiral
data:
  x: [0.6816, 0.6804, 0.6699, 0.6497, 0.6194, 0.5789, 0.5282, 0.4673, 0.3964, 0.3160, 0.2267, 0.1289, 0.0236, -0.0883, -0.2059, -0.3279, -0.4530, -0.5800, -0.7075, -0.8339, -0.9577, -1.0775, -1.1917, -1.2987, -1.3971, -1.4854, -1.5622, -1.6263, -1.6765, -1.7116, -1.7308, -1.7332, -1.7183, -1.6855, -1.6346, -1.5656, -1.4785, -1.3736, -1.2516, -1.1129, -0.9587, -0.7900, -0.6081, -0.4144, -0.2106, 0.0015, 0.2200, 0.4428, 0.6679, 0.8931, 1.1160, 1.3343, 1.5458, 1.7481, 1.9390, 2.1163, 2.2778, 2.4216, 2.5458, 2.6486]
  y: [0.2882, 0.3680, 0.4502, 0.5335, 0.6169, 0.6992, 0.7791, 0.8555, 0.9272, 0.9928, 1.0513, 1.1015, 1.1423, 1.1728, 1.1920, 1.1992, 1.1937, 1.1749, 1.1425, 1.0963, 1.0361, 0.9620, 0.8743, 0.7735, 0.6599, 0.5346, 0.3983, 0.2521, 0.0972, -0.0649, -0.2329, -0.4051, -0.5798, -0.7553, -0.9297, -1.1012, -1.2678, -1.4277, -1.5789, -1.7195, -1.8479, -1.9623, -2.0611, -2.1428, -2.2060, -2.2496, -2.2725, -2.2739, -2.2533, -2.2101, -2.1443, -2.0558, -1.9449, -1.8122, -1.6584, -1.4845, -1.2917, -1.0814, -0.8554, -0.6155]
  lbl: ["Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path", "Spiral path"]
expect:
  components: 1
---
Curved spiral path with `geom_textpath(upright = TRUE)` auto-flipping text so glyphs remain upright.

```r
ggplot(df, aes(x, y, label = lbl)) +
  geom_textpath(upright = TRUE)
```

```python
ggplot(df, aes("x", "y", label="lbl")) + geom_textpath(upright=True)
```
