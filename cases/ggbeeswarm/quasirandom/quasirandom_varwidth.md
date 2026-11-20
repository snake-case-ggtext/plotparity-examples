---
id: quasirandom_varwidth
data_file: _assets/swarm_unequal.csv
expect:
  components: 3
---
`geom_quasirandom(varwidth = TRUE)` scales swarm width by sqrt of group size.

```r
df$group <- factor(df$group, levels = c("Small", "Medium", "Large"))
ggplot(df, aes(group, y)) + geom_quasirandom(varwidth = TRUE)
```

```python
import pandas as pd
df["group"] = pd.Categorical(df["group"], categories=["Small", "Medium", "Large"], ordered=True)
ggplot(df, aes("group", "y")) + geom_quasirandom(varwidth=True)
```
