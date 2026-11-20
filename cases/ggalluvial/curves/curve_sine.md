---
id: curve_sine
data_file: _assets/wide_two_axis.csv
---
Two-axis wide-format alluvial diagram with sinusoidal curve (`curve_type = "sine"`) and fill mapped to the origin stratum.

```r
ggplot(df, aes(y = freq, axis1 = origin, axis2 = dest)) +
  geom_alluvium(aes(fill = origin), curve_type = "sine") +
  geom_stratum() +
  geom_text(stat = "stratum", aes(label = after_stat(stratum)))
```

```python
(
    ggplot(df, aes(y="freq", axis1="origin", axis2="dest"))
    + geom_alluvium(aes(fill="origin"), curve_type="sine")
    + geom_stratum()
    + geom_text(aes(label=after_stat("stratum")), stat="stratum")
)
```
