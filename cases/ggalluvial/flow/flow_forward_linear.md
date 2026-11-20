---
id: flow_forward_linear
data_file: _assets/wide_three_axis.csv
---
Pairwise adjacent flows (`geom_flow()`) with `curve_type = "linear"` and default `aes.flow = "forward"`.

```r
ggplot(df, aes(y = freq, axis1 = axis1, axis2 = axis2, axis3 = axis3)) +
  geom_flow(aes(fill = cohort), curve_type = "linear") +
  geom_stratum()
```

```python
(
    ggplot(df, aes(y="freq", axis1="axis1", axis2="axis2", axis3="axis3"))
    + geom_flow(aes(fill="cohort"), curve_type="linear")
    + geom_stratum()
)
```
