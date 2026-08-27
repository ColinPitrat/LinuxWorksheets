#import "../template.typ": *

#show: doc => cs_sheet(
  title: "4. The Detective: reading and manipulating files",
  lang: "en",
  doc,
)

= Reading files

Last time, you learned to create files. But files are useless if you can't see what's inside them! Now you'll learn to be a detective – reading clues, writing notes, and combining commands.

= The commands

Here are your new tools:

#table(
  columns: 3,
  table.header([Command], [What it means], [What it does]),
  [`cat FILE`],
  [#strong[Cat]enate],
  [Shows the entire file content],
  [`less FILE`],
  [Less],
  [Shows the file page by page (use arrows to scroll)],
  [`head FILE`],
  [Head],
  [Shows the first 10 lines],
  [`tail FILE`],
  [Tail],
  [Shows the last 10 lines],
  [`echo TEXT`],
  [Echo],
  [Prints text to the terminal],
  [`echo TEXT > FILE`],
  [Redirect],
  [Writes text to a file (overwrites)],
  [`echo TEXT >> FILE`],
  [Append],
  [Adds text to the end of a file],
)

#attention[
`>` is dangerous! It replaces everything in the file. Be careful not to overwrite something important!
]

#pro_tip[
`head` and `tail` are great for big files. You can also use `head -n 5` to show the first 5 lines, or `tail -n 20` to show the last 20 lines.
]

= Creating notes with echo

You already know `touch` creates an empty file. Now let's put something inside it!

Try these commands:

```
echo "Hello, world!" > greeting.txt
cat greeting.txt
echo "Welcome to Linux!" >> greeting.txt
cat greeting.txt
```

= Try it out

Open your terminal now. Let's create a longer file and practice with it.

```
seq 1 1000 > numbers.txt
head numbers.txt
tail numbers.txt
head -n 5 numbers.txt
tail -n 20 numbers.txt
cat numbers.txt
```

= Reading with less

`less` is like `cat` but for big files. It lets you scroll up and down.

Try it with `numbers.txt`:

```
less numbers.txt
```

- Use the *arrow keys* (or `j`/`k`) to scroll.
- Press *Space* to go down a page.
- Press *b* to go back up a page.
- Press *q* to quit.

#practice[
Use `less` to look at two system files: `/etc/hostname` and `/etc/passwd`.
]

= Combining commands with pipes

The pipe (`|`) lets you chain commands together. It takes the output from the left command and feeds it into the right command.

Try these:

```
ls -l | head -n 5
cat numbers.txt | tail -n 3
cat numbers.txt | head -n 10 | tail -n 5
```

= Cheat sheet

#table(
 columns: 2,
 [`cat FILE`], [Show all of a file],
 [`less FILE`], [Browse a file page by page],
 [`head FILE`], [Show the first 10 lines],
 [`tail FILE`], [Show the last 10 lines],
 [`echo TEXT`], [Print text],
 [`echo TEXT > FILE`], [Write text to a file (overwrite)],
 [`echo TEXT >> FILE`], [Add text to a file (append)],
 [`COMMAND1 | COMMAND2`], [Pipe output from one command to another],
)
