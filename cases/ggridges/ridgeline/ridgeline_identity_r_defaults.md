---
id: ridgeline_identity_r_defaults
expect: {components: 3}
source: ggridges README - geom_ridgeline
data:
  x: [0, 0.25, 0.5, 0.75, 1, 1.25, 1.5, 1.75, 2, 2.25, 2.5, 2.75, 3, 3.25, 3.5, 3.75, 4, 4.25, 4.5, 4.75, 5, 5.25, 5.5, 5.75, 6, 0, 0.25, 0.5, 0.75, 1, 1.25, 1.5, 1.75, 2, 2.25, 2.5, 2.75, 3, 3.25, 3.5, 3.75, 4, 4.25, 4.5, 4.75, 5, 5.25, 5.5, 5.75, 6, 0, 0.25, 0.5, 0.75, 1, 1.25, 1.5, 1.75, 2, 2.25, 2.5, 2.75, 3, 3.25, 3.5, 3.75, 4, 4.25, 4.5, 4.75, 5, 5.25, 5.5, 5.75, 6]
  grp: ['low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'low', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'mid', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high', 'high']
  h: [0.3, 0.3742, 0.4438, 0.5045, 0.5524, 0.5847, 0.5992, 0.5952, 0.5728, 0.5334, 0.4795, 0.4145, 0.3423, 0.2675, 0.1948, 0.1285, 0.073, 0.0315, 0.0067, 0.0002, 0.0123, 0.0423, 0.0883, 0.1475, 0.2162, 0.8287, 0.877, 0.8989, 0.8928, 0.8592, 0.8001, 0.7193, 0.6217, 0.5135, 0.4013, 0.2921, 0.1928, 0.1094, 0.0473, 0.0101, 0.0003, 0.0185, 0.0635, 0.1325, 0.2213, 0.3243, 0.4351, 0.5468, 0.6525, 0.7456, 1.1456, 1.0668, 0.9591, 0.829, 0.6847, 0.5351, 0.3895, 0.2571, 0.1459, 0.063, 0.0135, 0.0004, 0.0246, 0.0846, 0.1767, 0.295, 0.4324, 0.5801, 0.7291, 0.87, 0.9942, 1.0938, 1.1628, 1.1968, 1.1936]
---

# ridgeline_identity_r_defaults

ridgeline_identity with ridgenine given ggridges' defaults explicitly (black outline; size 0.602 draws R's 0.5 mm line in plotnine's units). Separates different defaults from different behaviour.

```r
df$grp <- factor(df$grp, levels = c("low", "mid", "high"))
ggplot(df, aes(x, grp, height = h)) + geom_ridgeline(scale = 0.9, fill = "#E8A33D")
```

```python
# ggridges' defaults passed explicitly; values computed by R for this data
df["grp"] = pd.Categorical(df["grp"], categories=["low", "mid", "high"])
ggplot(df, aes("x", "grp", height="h")) + geom_ridgeline(scale=0.9, fill="#E8A33D", color="black", size=0.602)
```
