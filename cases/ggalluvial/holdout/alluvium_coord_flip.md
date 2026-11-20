---
id: alluvium_coord_flip
data_file: _assets/wide_two_axis.csv
---
Horizontal alluvial diagram using `coord_flip()` with centered stratum text labels.

```r
ggplot(df, aes(y = freq, axis1 = origin, axis2 = dest)) +
  geom_alluvium(aes(fill = category)) +
  geom_stratum() +
  geom_text(stat = "stratum", aes(label = after_stat(stratum))) +
  coord_flip()
```

```python
(
    ggplot(df, aes(y="freq", axis1="origin", axis2="dest"))
    + geom_alluvium(aes(fill="category"))
    + geom_stratum()
    + geom_text(aes(label=after_stat("stratum")), stat="stratum")
    + coord_flip()
)
```
