#import "../template.typ": *

#show: doc => cs_sheet(
  title: "3. Making your mark: creating and deleting",
  lang: "en",
  doc,
)

= Creating and deleting directories and files

Last time, you explored the filesystem. Now you will learn to create your own directories and files, and also to delete them.

#attention[
The computer does EXACTLY what you say. When you delete something, it's GONE FOREVER. There is no "undo" button. Always double-check before deleting!
]

= The commands

Here are your four new tools:

#table(
  columns: 3,
  table.header([Command], [What it means], [What it does]),
  [`mkdir`],
  [#strong[M]a#strong[k]e #strong[dir]ectory],
  [Creates a new, empty directory],
  [`touch`],
  [Creates a file],
  [Creates a new, empty file],
  [`rm`],
  [#strong[R]e#strong[m]ove],
  [Deletes a file. Forever!],
  [`rmdir`],
  [#strong[R]e#strong[m]ove #strong[dir]ectory],
  [Deletes an *empty* directory],
)

#pro_tip[
You can use `rm -i` to ask for confirmation before deleting. The computer will ask "remove file?" and you type `y` (yes) or `n` (no).
]

#attention[
*No spaces in names!* Use `_` (underscore) or `-` (dash) instead.
- ✅ Good: `My_Fortress`
- ✅ Good: `My-Fortress`
- ❌ Bad: `My Fortress` (the computer sees TWO things!)

Linux is also *case-sensitive*! `MyFile` and `myfile` are TWO DIFFERENT FILES.
]

= Try it out

Open your terminal now. Follow these instructions in order. Write down what you see!

```
cd /tmp
mkdir Exercise
cd Exercise
mkdir School
cd School
mkdir Math Science
ls
cd Math
touch homework.txt
cd ../Science
touch project.txt
cd ../..
mkdir Games
cd Games
mkdir Minecraft Roblox
cd Minecraft
touch saves.txt
cd ../Roblox
touch settings.txt
cd ../../
```

#attention[
The exercise makes you move to `/tmp` at the beginning. That's a directory for temporary things. It's automatically erased when the computer restarts.
That's a good place to play, but never store important things there!
]

#experiment[
After you run all this, execute `ls -R` to see the structure you just created. You can try `tree` for a more graphical representation. You can also try deleting some files with `rm` and some empty directories with `rmdir`. What happens if you try to delete a directory that still has files in it?
]

= A quick look at wildcards

What if you have many files and want to operate on all of them at once? You can use wildcards.

- `*` = Anything (zero or more characters)
- `?` = One single character

For example, `*.txt` means "all files that end with `.txt`". And `foo?.txt` will match `foo1.txt`, `foo2.txt`, `fooa.txt`, etc ... but not `foo20.txt` (it has one more character).

= Cheat sheet

#table(
    columns: 2,
    [`mkdir FOLDER`], [Create a new directory],
    [`touch FILE`], [Create a new empty file],
    [`rm FILE`], [Delete a file],
    [`rm -i FILE`], [Delete with confirmation],
    [`rmdir FOLDER`], [Delete an empty directory],
    [`rm -r FOLDER`], [Delete a directory and all its contents (*beware!*)],
    [`*`], [Wildcard for "anything"],
    [`?`], [Wildcard for "one character"],
)
