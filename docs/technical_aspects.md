# technical aspects

::: r-fit-text
technical aspects
:::

## Technical, pre-build

Before the markdown documents are converted to html we can check the
technical qualities of the docs with some tools (linters):

::: incremental
-   [codespell](https://github.com/codespell-project/codespell), check
    spelling (129)
-   [rumdl](https://rumdl.dev/), check markdown (7884) (see slide)
-   [Jinja2 Linter CLI](https://github.com/aristanetworks/j2lint) check
    Jinja2 code in markdown (1862) (see slide)
-   [detox](https://github.com/dharple/detox/) check file names (0)
-   [vale](https://docs.vale.sh/) check for compliance with a
    third-party style sheet, readability etc or an own style sheet.
    (example follows)
-   [linkchecker lychee](https://github.com/lycheeverse/lychee), [check
    broken
    URLs](link_checker_report_issue_1250_hpcugent_vsc_user_docs.png)
    ([199](https://github.com/hpcugent/vsc_user_docs/issues/1250))
:::

::: notes
notes:

number between brackets indicates number of found issues
:::
