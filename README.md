# plotparity-examples

Case libraries and port projects for [plotparity](https://github.com/snake-case-ggtext/plotparity). The tool checks whether a Python (plotnine) port of a ggplot2 extension draws the same plots as the R original.

## Run it

You need [uv](https://docs.astral.sh/uv/). You don't need R or the ports: R renders are stored here, and each project fetches its port from GitHub at a pinned commit.

```bash
git clone https://github.com/snake-case-ggtext/plotparity-examples
cd plotparity-examples
uvx --from git+https://github.com/snake-case-ggtext/plotparity plotparity run projects/ggtext
uvx --from git+https://github.com/snake-case-ggtext/plotparity plotparity run projects/ggtext-shanellis --select all
```

The first command should pass. The second shows a port with real gaps.

## What's here

| Path | What it is |
| --- | --- |
| [`cases/ggtext/`](cases/ggtext/) | 16 cases for R's ggtext, one Markdown file each: shared data, the R spec, and a Python block per port. Stored R renders are in `_references/`. |
| [`projects/ggtext/`](projects/ggtext/parity.toml) | [plotnine-ggtext](https://github.com/snake-case-ggtext/plotnine-ggtext): dev and holdout pass. Coverage cases are its backlog (theme elements, `<img>`, R colour names, `~sub~`/`^sup^`). It also has the mutation suite for `plotparity selftest`. |
| [`projects/ggtext-shanellis/`](projects/ggtext-shanellis/parity.toml) | [Shannon Ellis's ggtext](https://github.com/snake-case-ggtext/ggtext_ShanEllis): 2/16 pass. See plotparity's `AGENTS.md` for the findings. |

**Gaps in the second port**

- superscripts and subscripts at 0.7× size instead of R's 0.8×
- extra top padding
- box outline coloured with the text colour
- R colour names silently drawn black
- no `~sub~`/`^sup^` markdown

## Contributing cases

Follow [Writing cases](https://github.com/snake-case-ggtext/plotparity/blob/main/docs/writing-cases.md). In short:

1. `plotparity new-case cases/ggtext <folder>/<id>`
2. Fill in the data, the R block, and a Python block per port.
3. `plotparity references cases/ggtext --select <id>` (needs R with ggplot2 and ggtext).
4. `plotparity validate projects/ggtext`.
5. Add the case to a split in each project's `parity.toml`.

`known_differences.toml` files are human-owned. Each entry records a cross-engine difference a maintainer has accepted, with the reason. The npc-width entries in `projects/ggtext/` are still awaiting a maintainer's sign-off.
