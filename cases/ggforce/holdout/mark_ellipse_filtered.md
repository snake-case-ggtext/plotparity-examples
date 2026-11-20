---
id: mark_ellipse_filtered
data_file: _assets/clusters.csv
expect:
  components: 1
---
Filtered `geom_mark_ellipse` with bold title, wrapped description, and elbow connector.

```r
ggplot(df, aes(x, y)) +
  geom_mark_ellipse(
    aes(fill = group, label = group, description = desc, filter = group == "Gamma"),
    con.type = "elbow"
  ) +
  geom_point()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_ellipse(
        aes(fill="group", label="group", description="desc", filter="group == 'Gamma'"),
        con_type="elbow",
    )
    + geom_point()
)
```
