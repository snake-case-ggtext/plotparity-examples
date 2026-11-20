---
id: lodes_long_bind
data_file: _assets/lodes_long.csv
---
Long/lodes format `geom_alluvium()` with `aes.bind = "flows"` and a zero-weight alluvium (`S7`).

```r
ggplot(df, aes(x = time, stratum = state, alluvium = subject, y = freq)) +
  geom_alluvium(aes(fill = group), aes.bind = "flows") +
  geom_stratum() +
  geom_text(stat = "stratum", aes(label = after_stat(stratum)))
```

```python
(
    ggplot(df, aes(x="time", stratum="state", alluvium="subject", y="freq"))
    + geom_alluvium(aes(fill="group"), aes_bind="flows")
    + geom_stratum()
    + geom_text(aes(label=after_stat("stratum")), stat="stratum")
)
```
