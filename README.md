# plotparity-examples

Test cases and example setups for [plotparity](https://github.com/snake-case-ggtext/plotparity), which tests a plotnine extension against its ggplot2 original.

## Run it

You need [uv](https://docs.astral.sh/uv/). You don't need R (the R renders are stored here) or the packages (each setup fetches its package from GitHub at a pinned commit).

```bash
uv tool install git+https://github.com/snake-case-ggtext/plotparity
git clone https://github.com/snake-case-ggtext/plotparity-examples
cd plotparity-examples/projects/ggtext && plotparity run --open
cd ../ggtext-shanellis && plotparity run --open
cd ../ridgenine && plotparity run --open
```

The first passes. The other two show packages with real gaps.

## What's here

| Path | What it is |
| --- | --- |
| [`cases/ggtext/`](cases/ggtext/) | Cases for R's ggtext, one Markdown file each: shared data, the R code, and a Python block per package. Stored R renders are in `_references/`. |
| [`projects/ggtext/`](projects/ggtext/parity.toml) | [plotnine-ggtext](https://github.com/snake-case-ggtext/plotnine-ggtext) with `dev` / `holdout` / `coverage` splits. `plotparity run` runs `dev`; `--split coverage` shows what it lacks. Also has the mutation suite for `plotparity selftest`. |
| [`projects/ggtext-shanellis/`](projects/ggtext-shanellis/parity.toml) | [Shannon Ellis's ggtext](https://github.com/snake-case-ggtext/ggtext_ShanEllis), a package with real gaps. |
| [`cases/ggridges/`](cases/ggridges/) | Cases for R's ggridges: density ridges (defaults, scale and alpha, bandwidth and trimming, fill, histograms, quantile lines) and `geom_ridgeline`. |
| [`projects/ridgenine/`](projects/ridgenine/parity.toml) | [ridgenine](https://github.com/briandconnelly/ridgenine), ridgeline plots for plotnine. |


## Adding a case

1. `plotparity new-case cases/ggtext/markup/my_case.md`
2. Fill in the data, the R code, and a Python block per package.
3. `cd projects/ggtext && plotparity run ../../cases/ggtext/markup/my_case.md` (renders the R reference; needs R with ggplot2 and ggtext).
4. `plotparity validate` in each project directory.
5. Add the case to a split in each project's `parity.toml`.

See [Writing cases](https://github.com/snake-case-ggtext/plotparity/blob/main/docs/writing-cases.md).
