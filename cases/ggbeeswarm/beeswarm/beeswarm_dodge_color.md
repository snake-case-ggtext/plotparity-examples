---
id: beeswarm_dodge_color
data_file: _assets/swarm_samples.csv
expect:
  components: 3
---
Dodged subgroups (`dodge.width = 0.7`) colored by subgroup.

```r
ggplot(df, aes(group, y, colour = sub)) +
  geom_beeswarm(dodge.width = 0.7, cex = 1.8) +
  scale_colour_manual(values = c(s1 = "#1b9e77", s2 = "#d95f02"))
```

```python
(
    ggplot(df, aes("group", "y", color="sub"))
    + geom_beeswarm(dodge_width=0.7, cex=1.8)
    + scale_color_manual(values={"s1": "#1b9e77", "s2": "#d95f02"})
)
```
