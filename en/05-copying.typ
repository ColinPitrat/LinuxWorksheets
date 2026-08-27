#import "../template.typ": *

#show: doc => cs_sheet(
  title: "4. Moving and copying files",
  lang: "en",
  doc,
)

= Moving and copying files

Now that you can create and delete files, it's time to learn how to organize them! You'll learn to copy files, move them, and rename them.

#table(
  columns: 3,
  table.header([Command], [What it means], [What it does]),
  [`cp SOURCE DEST`],
  [#strong[C]o#strong[p]y],
  [Makes a copy of the source file],
  [`mv SOURCE DEST`],
  [#strong[M]o#strong[v]e],
  [Moves or renames a file],
  [`cp -r SOURCE DEST`],
  [Copy recursively],
  [Copies a directory and everything inside],
  [`mv SOURCE DEST`],
  [Move],
  [Moves a directory (no special flag needed)],
)

#attention[
`mv` is also how you rename files in Linux! There's no separate `rename` command.
]

#pro_tip[
You can use `cp` and `mv` with wildcards to work with many files at once! When you copy or move multiple files, the last argument must be a directory (the destination of the copy/move).
]

= Try it out

Open your terminal now. Let's practice simple copies and moves:

```
mkdir practice
cd practice
touch file1.txt file2.txt file3.txt
echo "Hello" > hello.txt
echo "World" > world.txt
ls
cp file1.txt file1_copy.txt
ls
mv file2.txt file2_renamed.txt
ls
```

#practice[
What do you think happens if you try to `mv file1.txt file3.txt` when both files exist? Try it!
]

Here is more practice for moving files between directories:

```
mkdir backup
ls
cp hello.txt backup/
ls backup/
mv world.txt backup/
ls
ls backup/
```

#practice[
How would you copy all `.txt` files to the `backup` directory in one command? (Hint: use a wildcard!)
]

Finally, let's practice copying and moving directories

```
cp -r backup backup_copy
ls
ls backup_copy
mv backup_copy old_backup
ls
```

#experiment[
What happens if you try to copy a directory without `-r`? Try `cp backup backup2` and see the error message!
]

= Wildcards in action

Now let's practice using wildcards with `cp` and `mv`.

```
touch note1.txt note2.txt note3.txt
touch photo1.jpg photo2.jpg photo3.jpg
touch README.md
ls
mkdir text_files images documentation
cp *.txt text_files/
cp *.jpg images/
mv *.md documentation/
```

#practice[
You want to move all files that start with "note" to a folder called `notes`. What command would you use?
]

= Cheat sheet

#table(
    columns: 2,
    [`cp SOURCE DEST`], [Copy a file],
    [`cp -r SOURCE DEST`], [Copy a directory and all its contents],
    [`mv SOURCE DEST`], [Move or rename a file or a directory],
    [`*.txt`], [Wildcard for all text files],
    [`file?.txt`], [Wildcard for single-character variation],
)

