---
id: mark_rect_sharp
data_file: _assets/clusters.csv
expect:
  components: 3
---
Sharp-cornered rectangles with `radius = unit(0, "mm")` and `expand = unit(2, "mm")`.

```r
ggplot(df, aes(x, y)) +
  geom_mark_rect(aes(fill = group), radius = unit(0, "mm"), expand = unit(2, "mm")) +
  geom_point()
```

```python
(
    ggplot(df, aes("x", "y"))
    + geom_mark_rect(aes(fill="group"), radius=0, expand=2)
    + geom_point()
)
```
