---
id: alluvium_four_axes_palette
data_file: _assets/wide_four_axis.csv
---
Four-axis alluvial diagram with a custom manual fill palette and stratum labels.

```r
ggplot(df, aes(y = freq, axis1 = stage1, axis2 = stage2, axis3 = stage3, axis4 = stage4)) +
  geom_alluvium(aes(fill = segment), alpha = 0.7) +
  geom_stratum() +
  geom_text(stat = "stratum", aes(label = after_stat(stratum))) +
  scale_fill_manual(values = c(Enterprise = "#2563eb", SMB = "#f97316"))
```

```python
(
    ggplot(df, aes(y="freq", axis1="stage1", axis2="stage2", axis3="stage3", axis4="stage4"))
    + geom_alluvium(aes(fill="segment"), alpha=0.7)
    + geom_stratum()
    + geom_text(aes(label=after_stat("stratum")), stat="stratum")
    + scale_fill_manual(values={"Enterprise": "#2563eb", "SMB": "#f97316"})
)
```
