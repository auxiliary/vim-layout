# vim-layout

Opens multiple files in Vim with automatic layouts. 

Installation with Vundle/Pathogen
---
Add `Plugin "auxiliary/vim-layout"` to your plugin list

Modes
---

- simple two-file mode: `vim <file1> <file2>` 
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
- simple three-file mode: `vim <file1> <file2> <file3>`

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

- simple four-file mode `vim <file1> <file2> <file3> <file4>`

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

- tabbed mode: `vim <more than four files>`

In this mode, every four files are splitted in separate tabs.

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
