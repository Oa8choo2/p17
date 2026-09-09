# Tabletest

See <https://github.com/zensical/zensical/blob/3b929cca27532063bb465659c35c61971254fd7c/python/tests/integration/test_table_reader.py>

And also 

- https://zensical.org/docs/compatibility/mkdocs/plugins/?h=table#table-reader
- https://github.com/timvink/mkdocs-table-reader-plugin

! Note: this *not* a native zensical plugin.

To get this working add following to your zensical.toml:

```toml
[project.plugins.table-reader]
data_path = "tables"
```

Make a dir next to the docs dir:

```bash
mkdir tables/
```

In that dir create a csv file with following content:

```bash
$ cat tables/people.csv 
Name,Age
Alice,30
Aline,45 
```


Add the plugin to your installation

```bash
uv pip install mkdocs-table-reader-plugin
Resolved 20 packages in 438ms
Prepared 12 packages in 3.16s
Installed 15 packages in 44ms
 + ghp-import==2.1.0
 + mergedeep==1.3.4
 + mkdocs==1.6.1
 + mkdocs-get-deps==0.2.2
 + mkdocs-table-reader-plugin==3.1.0
 + numpy==2.5.3
 + packaging==26.3
 + pandas==3.0.5
 + pathspec==1.1.1
 + platformdirs==4.11.8
 + python-dateutil==2.9.0.post0
 + pyyaml-env-tag==1.1
 + six==1.17.0
 + tabulate==0.10.0
 + watchdog==6.0.0
```

Next a table should be visible:

image of what we expect:

![tabletest](tabletest.png)

following code should render this

```jinja
\{\{ read_csv('people.csv') \}\}
```

```jinja
{{ read_csv('people.csv') }}
```

---

{{ read_csv('people.csv') }}

---

end
