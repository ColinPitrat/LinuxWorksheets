#import "../template.typ": *

#show: doc => cs_sheet(
  title: "2. Where am I? Navigating the filesystem",
  lang: "en",
  doc,
)

= Directories and files

Imagine your computer is a giant filing cabinet with many drawers. Inside each drawer are folders, and inside those folders are papers, or more folders!

In a computer, the drawers and folders are called `directories` and the papers are called `files`. A directory is a container for more directories and for files. A file can be a document, a video, a picture, a sound, ...

Linux organizes everything as a tree starting from the root (`/`). You are standing somewhere in this tree right now, and you need to learn how to:

 - Ask where you are.
 - Look around you.
 - Move to different places.

= The filesystem tree

Look at this tree. The root (`/`) is at the very top. The branches go down to different folders.

```
          /
       /  |  \
    bin  home  etc
         /  \
      alice   bob
              /  \
           Music Documents
```

#practice[
What is the topmost folder called?
a) home b) root c) bin

If you are in /home/bob, which folder is below you?
a) Music b) alice c) etc

If you are in Music and want to go to Documents, where must you go first?
a) etc b) bob c) bin
]

= The commands

Here are your three tools for today:

#table(
  columns: 3,
  table.header([Command], [What it means], [What it does]),
  [`pwd`],
  [#strong[P]rint #strong[w]orking #strong[d]irectory],
  [Tells your current location],
  [`ls`],
  [#strong[L]i#strong[s]t],
  [Tells the names of everything in this directory],
  [`cd`],
  [#strong[C]hange #strong[d]irectory],
  [Move to a different directory],
)

#attention[
`cd` on its own (with nothing after it) is a "teleport home" – it always takes you back to your own home folder!
]
#pro_tip[
You don't have to type everything! The Tab key is your autocomplete friend. If you type `cd Doc` and press Tab, the computer finishes it to `cd Documents` (if that folder exists and no other starts with `Doc`)
]

= Try it out

Open your terminal now.

Follow these instructions in order. Write down what you see!

```
pwd
ls
cd /
pwd
ls
cd home
ls
cd
```

#experiment[
Now that you know the commands, use them to explore your home directory. Do you find anything interesting there? You can also explore the rest of your computer. Can you guess what the different directories contain?
]

= See a file's content

Type the commands corresponding to the following instructions:

 - Go to the root of the filesystem
 - See what files are there.
 - Do you see an `etc`? That's where the computer configuration is. Go there.
 - See what files are there. There are a lot. Can you see a file named `hostname`?
 - You can see the content of this file with `cat hostname`. What's the result? Do you know what this is?

= Cheat sheet

#table(
    columns: 2,
    [`pwd`], [Where am I?],
    [`ls`], [What's here?],
    [`ls /home`], [What's in `/home`?],
    [`cd`], [Go home],
    [`cd /`], [Go to the root],
    [`cd ..`], [Go back one folder],
    [Tab], [Autocomplete],
)
