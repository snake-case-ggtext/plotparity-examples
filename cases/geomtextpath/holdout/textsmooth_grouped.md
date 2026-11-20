---
id: textsmooth_grouped
data:
  x: [0.0000, 0.2500, 0.5000, 0.7500, 1.0000, 1.2500, 1.5000, 1.7500, 2.0000, 2.2500, 2.5000, 2.7500, 3.0000, 3.2500, 3.5000, 3.7500, 4.0000, 4.2500, 4.5000, 4.7500, 5.0000, 5.2500, 5.5000, 5.7500, 6.0000, 0.0000, 0.2500, 0.5000, 0.7500, 1.0000, 1.2500, 1.5000, 1.7500, 2.0000, 2.2500, 2.5000, 2.7500, 3.0000, 3.2500, 3.5000, 3.7500, 4.0000, 4.2500, 4.5000, 4.7500, 5.0000, 5.2500, 5.5000, 5.7500, 6.0000]
  y: [1.6000, 1.7265, 1.8096, 1.8651, 1.9145, 1.9721, 2.0370, 2.0917, 2.1090, 2.0647, 1.9484, 1.7706, 1.5603, 1.3555, 1.1896, 1.0806, 1.0265, 1.0091, 1.0049, 0.9971, 0.9841, 0.9809, 1.0113, 1.0967, 1.2442, -0.4000, -0.3643, -0.3822, -0.4622, -0.6012, -0.7845, -0.9879, -1.1842, -1.3491, -1.4664, -1.5315, -1.5504, -1.5362, -1.5036, -1.4638, -1.4206, -1.3699, -1.3020, -1.2064, -1.0772, -0.9173, -0.7399, -0.5664, -0.4221, -0.3295]
  grp: ["Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Alpha", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta", "Group Beta"]
expect:
  components: 2
---
Two-group `geom_textsmooth(method = "loess")` with `color` aesthetic and custom `hjust`.

```r
ggplot(df, aes(x, y, color = grp, label = grp)) +
  geom_point(alpha = 0.35) +
  geom_textsmooth(method = "loess", formula = y ~ x, hjust = 0.3)
```

```python
(
    ggplot(df, aes("x", "y", color="grp", label="grp"))
    + geom_point(alpha=0.35)
    + geom_textsmooth(method="loess", hjust=0.3)
)
```
