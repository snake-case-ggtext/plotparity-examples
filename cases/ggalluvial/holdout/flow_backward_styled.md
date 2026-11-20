---
id: flow_backward_styled
data_file: _assets/lodes_long.csv
---
Styled `geom_flow(aes.flow = "backward")` with custom stratum fill/outline and boxed `geom_label(stat = "stratum")`.

```r
ggplot(df, aes(x = time, stratum = state, alluvium = subject, y = freq)) +
  geom_flow(aes(fill = state), aes.flow = "backward", alpha = 0.75) +
  geom_stratum(fill = "#f8fafc", color = "#334155") +
  geom_label(stat = "stratum", aes(label = after_stat(stratum)))
```

```python
(
    ggplot(df, aes(x="time", stratum="state", alluvium="subject", y="freq"))
    + geom_flow(aes(fill="state"), aes_flow="backward", alpha=0.75)
    + geom_stratum(fill="#f8fafc", color="#334155")
    + geom_label(aes(label=after_stat("stratum")), stat="stratum")
)
```
