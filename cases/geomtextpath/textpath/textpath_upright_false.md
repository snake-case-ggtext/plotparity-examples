---
id: textpath_upright_false
data:
  x: [6.0000, 5.8500, 5.7000, 5.5500, 5.4000, 5.2500, 5.1000, 4.9500, 4.8000, 4.6500, 4.5000, 4.3500, 4.2000, 4.0500, 3.9000, 3.7500, 3.6000, 3.4500, 3.3000, 3.1500, 3.0000, 2.8500, 2.7000, 2.5500, 2.4000, 2.2500, 2.1000, 1.9500, 1.8000, 1.6500, 1.5000, 1.3500, 1.2000, 1.0500, 0.9000, 0.7500, 0.6000, 0.4500, 0.3000, 0.1500, 0.0000]
  y: [0.0000, 0.0785, 0.1564, 0.2334, 0.3090, 0.3827, 0.4540, 0.5225, 0.5878, 0.6494, 0.7071, 0.7604, 0.8090, 0.8526, 0.8910, 0.9239, 0.9511, 0.9724, 0.9877, 0.9969, 1.0000, 0.9969, 0.9877, 0.9724, 0.9511, 0.9239, 0.8910, 0.8526, 0.8090, 0.7604, 0.7071, 0.6494, 0.5878, 0.5225, 0.4540, 0.3827, 0.3090, 0.2334, 0.1564, 0.0785, 0.0000]
  lbl: ["Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path", "Reversed path"]
expect:
  components: 1
---
Right-to-left path with `upright = FALSE` keeping text inverted along path direction.

```r
ggplot(df, aes(x, y, label = lbl)) +
  geom_textpath(upright = FALSE)
```

```python
ggplot(df, aes("x", "y", label="lbl")) + geom_textpath(upright=False)
```
