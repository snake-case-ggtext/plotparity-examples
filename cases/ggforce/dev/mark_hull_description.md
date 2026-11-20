---
id: mark_hull_description
data_file: _assets/clusters.csv
expect:
  components: 1
---
Single filtered group (`filter = group == "Alpha"`) with bold `label` and wrapped multi-line `description`.

```r
ggplot(df, aes(x, y)) +
  geom_mark_hull(aes(fill = group, label = group, description = desc, filter = group == "Alpha")) +
  geom_point()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_hull(aes(fill="group", label="group", description="desc", filter="group == 'Alpha'"))
    + geom_point()
)
```
