---
id: alluvium_lodes_decreasing
data_file: _assets/lodes_long.csv
---
Long/lodes format alluvial diagram with `decreasing = TRUE` and `curve_type = "quintic"`.

```r
ggplot(df, aes(x = time, stratum = state, alluvium = subject, y = freq)) +
  geom_alluvium(aes(fill = group), decreasing = TRUE, curve_type = "quintic") +
  geom_stratum(decreasing = TRUE) +
  geom_text(stat = "stratum", aes(label = after_stat(stratum)), decreasing = TRUE)
```

```python
(
    ggplot(df, aes(x="time", stratum="state", alluvium="subject", y="freq"))
    + geom_alluvium(aes(fill="group"), decreasing=True, curve_type="quintic")
    + geom_stratum(decreasing=True)
    + geom_text(aes(label=after_stat("stratum")), stat="stratum", decreasing=True)
)
```
