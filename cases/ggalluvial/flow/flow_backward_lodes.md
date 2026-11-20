---
id: flow_backward_lodes
data_file: _assets/lodes_long.csv
---
Long/lodes format `geom_flow()` with `aes.flow = "backward"` (coloring each flow by its destination stratum).

```r
ggplot(df, aes(x = time, stratum = state, alluvium = subject, y = freq)) +
  geom_flow(aes(fill = state), aes.flow = "backward") +
  geom_stratum() +
  geom_text(stat = "stratum", aes(label = after_stat(stratum)))
```

```python
(
    ggplot(df, aes(x="time", stratum="state", alluvium="subject", y="freq"))
    + geom_flow(aes(fill="state"), aes_flow="backward")
    + geom_stratum()
    + geom_text(aes(label=after_stat("stratum")), stat="stratum")
)
```
