---
id: textsmooth_lm
data:
  x: [0.5000, 1.0000, 1.5000, 2.0000, 2.5000, 3.0000, 3.5000, 4.0000, 4.5000, 5.0000, 5.5000, 6.0000, 6.5000, 7.0000, 7.5000, 8.0000, 8.5000, 9.0000, 9.5000, 10.0000]
  y: [1.8255, 2.2467, 2.3981, 2.3978, 2.4670, 2.7797, 3.3442, 3.9976, 4.5167, 4.7694, 4.8049, 4.8201, 5.0256, 5.5027, 6.1480, 6.7437, 7.1056, 7.2087, 7.2039, 7.3154]
  lbl: ["Linear trend", "Linear trend", "Linear trend", "Linear trend", "Linear trend", "Linear trend", "Linear trend", "Linear trend", "Linear trend", "Linear trend", "Linear trend", "Linear trend", "Linear trend", "Linear trend", "Linear trend", "Linear trend", "Linear trend", "Linear trend", "Linear trend", "Linear trend"]
expect:
  components: 1
---
`geom_textsmooth(method = "lm")` drawing a labelled straight regression line over scatter points.

```r
ggplot(df, aes(x, y, label = lbl)) +
  geom_point(alpha = 0.5) +
  geom_textsmooth(method = "lm", formula = y ~ x)
```

```python
(
    ggplot(df, aes("x", "y", label="lbl"))
    + geom_point(alpha=0.5)
    + geom_textsmooth(method="lm")
)
```
