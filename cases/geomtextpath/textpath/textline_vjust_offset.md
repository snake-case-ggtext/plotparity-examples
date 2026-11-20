---
id: textline_vjust_offset
data:
  x: [0.0000, 0.2167, 0.4333, 0.6500, 0.8666, 1.0833, 1.3000, 1.5166, 1.7333, 1.9500, 2.1666, 2.3833, 2.5999, 2.8166, 3.0333, 3.2499, 3.4666, 3.6832, 3.8999, 4.1166, 4.3332, 4.5499, 4.7666, 4.9832, 5.1999, 5.4165, 5.6332, 5.8499, 6.0665, 6.2832, 0.0000, 0.2167, 0.4333, 0.6500, 0.8666, 1.0833, 1.3000, 1.5166, 1.7333, 1.9500, 2.1666, 2.3833, 2.5999, 2.8166, 3.0333, 3.2499, 3.4666, 3.6832, 3.8999, 4.1166, 4.3332, 4.5499, 4.7666, 4.9832, 5.1999, 5.4165, 5.6332, 5.8499, 6.0665, 6.2832]
  y: [1.2000, 1.3075, 1.4099, 1.5026, 1.5811, 1.6418, 1.6818, 1.6993, 1.6934, 1.6645, 1.6138, 1.5438, 1.4578, 1.3597, 1.2541, 1.1459, 1.0403, 0.9422, 0.8562, 0.7862, 0.7355, 0.7066, 0.7007, 0.7182, 0.7582, 0.8189, 0.8974, 0.9901, 1.0925, 1.2000, -0.3000, -0.3117, -0.3462, -0.4020, -0.4763, -0.5658, -0.6662, -0.7729, -0.8809, -0.9851, -1.0806, -1.1630, -1.2284, -1.2738, -1.2971, -1.2971, -1.2738, -1.2284, -1.1630, -1.0806, -0.9851, -0.8809, -0.7729, -0.6662, -0.5658, -0.4763, -0.4020, -0.3462, -0.3117, -0.3000]
  grp: ["Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Lifted above", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below", "Dropped below"]
  vj: [-0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, -0.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000, 1.3000]
expect:
  components: 2
---
Text lifted above (`vjust = -0.3`) and dropped below (`vjust = 1.3`) continuous lines with no gap.

```r
ggplot(df, aes(x, y, color = grp, label = grp, vjust = vj)) +
  geom_textline()
```

```python
ggplot(df, aes("x", "y", color="grp", label="grp", vjust="vj")) + geom_textline()
```
