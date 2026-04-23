# Duplicate files

A rough indication can be made with 'fdupes'.

```bash
$ fdupes -Str .
...
822 bytes each:
2026-01-06 10:30 ./intro-HPC/examples/Fine-tuning-Job-Specifications/htop-output
2026-01-06 10:30 ./mkdocs/docs/HPC/examples/Fine-tuning-Job-Specifications/htop-output
...
```

This 'examples' map has a lot of duplicates. This should be fixed.

Note: 

It seems that the degree of duplication is not configurable with this tool.
Other tools might be better at this: diff, czkawka, krokiet
or tools realated to plagiarism detection.

