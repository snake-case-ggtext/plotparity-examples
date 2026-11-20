---
id: alluvium_sparse_categories
data_file: _assets/wide_sparse.csv
---
Asymmetric strata counts across three axes (2 -> 4 -> 3 strata) with stratum labels.

```r
ggplot(df, aes(y = freq, axis1 = source, axis2 = channel, axis3 = outcome)) +
  geom_alluvium(aes(fill = tier)) +
  geom_stratum() +
  geom_text(stat = "stratum", aes(label = after_stat(stratum)))
```

```python
(
    ggplot(df, aes(y="freq", axis1="source", axis2="channel", axis3="outcome"))
    + geom_alluvium(aes(fill="tier"))
    + geom_stratum()
    + geom_text(aes(label=after_stat("stratum")), stat="stratum")
)
```
