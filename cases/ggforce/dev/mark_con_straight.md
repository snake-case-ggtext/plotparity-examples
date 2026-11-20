---
id: mark_con_straight
data_file: _assets/clusters.csv
expect:
  components: 3
---
Straight connectors (`con.type = "straight"`) with custom `con.colour = "#b03a2e"`.

```r
ggplot(df, aes(x, y)) +
  geom_mark_hull(aes(fill = group, label = group), con.type = "straight", con.colour = "#b03a2e") +
  geom_point()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_hull(aes(fill="group", label="group"), con_type="straight", con_colour="#b03a2e")
    + geom_point()
)
```
