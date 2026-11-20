---
id: quasirandom_smiley_dodge
data_file: _assets/swarm_samples.csv
expect:
  components: 3
---
Smiley quasirandom with subgroup dodging and manual colours.

```r
ggplot(df, aes(group, y, colour = sub)) +
  geom_quasirandom(method = "smiley", dodge.width = 0.75) +
  scale_colour_manual(values = c(s1 = "#7570b3", s2 = "#e7298a"))
```

```python
(
    ggplot(df, aes("group", "y", color="sub"))
    + geom_quasirandom(method="smiley", dodge_width=0.75)
    + scale_color_manual(values={"s1": "#7570b3", "s2": "#e7298a"})
)
```
