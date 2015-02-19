# vim-layout

Opens multiple files in Vim with different layout options. 

Installation
---
`sudo ./vl.sh --install`

Modes
---
vim-layout can be used in different modes depending on the options or the number of files.

- simple two-file mode: `vl <file1> <file2>` 
```
+----------------+----------------+  
|                |                |  
|                |                |
|                |                |
|     File 1     |     File 2     |
|                |                |
|                |                |
|                |                |
+----------------+----------------+
```
- simple three-file mode: `vl <file1> <file2> <file3>`

```
+----------------+----------------+
|                |                |
|                |     File 3     |
|                |                |
|     File 1     +----------------+
|                |                |
|                |     File 2     |
|                |                |
+----------------+----------------+
```

- simple four-file mode `vl <file1> <file2> <file3> <file4>`

```
+----------------+----------------+
|                |                |
|     File 3     |     File 4     |
|                |                |
+---------------------------------+
|                |                |
|     File 1     |     File 2     |
|                |                |
+----------------+----------------+
```

- tabbed mode: `vl -t <files>`

In this mode, every two files are splitted in separate tabs.

```
+----+----+                        
+----+----+------+----------------+
|                |                |
|                |                |
|                |                |
|                |                |
|                |                |
+----------------+----------------+
```

- horizontal tabbed mode: `vl -H <files>`

In this mode, every two files are horizontally splitted in separate tabs.

```
+----+----+                        
+----+----+-----------------------+
|                                 |
|                                 |
+---------------------------------+
|                                 |
|                                 |
+---------------------------------+
```

Note: File path expansions are also supported.
