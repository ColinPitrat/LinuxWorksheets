#import "../template.typ": *

#show: doc => cs_sheet(
  title: "1. Qu'est-ce qu'un ordinateur ?",
  lang: "en",
  doc,
)

// TODO: translate!
= The analogy

Imagine you want to make a sandwich.

The bread, ham, and cheese are the `hardware`: the physical stuff you can touch.

The recipe that tells you how to put it together is the `software`: the instructions.

The knife you use to cut the sandwich is the `command line`: a tool that follows your instructions exactly.

#table(
    columns: 3,
    table.header([🖥️ Hardware], [📋 Software], [⌨️ Your job]),
    [- Screen
    - Keyboard
    - Mouse
    - CPU (the brain)
    - RAM (short term memory)
    - Hard Drive (long term memory)
    ], [- Operating system (Linux, Windows, macOS)
    - Programs (Games, browser, text editor)
    ], [You type commands to tell the computer what to do]
)

#attention[
- CPU means Central Processing Unit
- RAM means Random Access Memory
]

#pro_tip[
Linux is the Operating system that runs most of the world's servers, Android phones, smart TVs, etc...
It's free and open. Anyone can see its source code (recipe) and contribute to it.
]

= Peripherals

In theory, a computer doesn't need more than a CPU and some RAM (and a program to execute, which could be stored in ROM, read-only memory).

In practice, there are always many things attached to a computer. These are called peripherals. There are *input peripherals*, allowing to provide information to the computer, and *output peripherals* allowing the computer to provide information to the outside world.

For example, a keyboard is an input peripheral, allowing users to send information to the computer. The screen is an output peripheral, displaying information to users.

Some peripherals are both input & output, for example a USB drive. It can be used to read (input) and write (output) files.

= Label the computer

Can you tell where the following parts of the computer sit and what they are doing? Are they peripherals? If so, are they input, output or both?
 - 🧠 CPU
 - 💭 RAM
 - 🗃️ Hard drive
 - 🖥️ Monitor
 - ⌨️  Keyboard
 - 🖱️ Mouse
 - 🔲 CPU
 - 🛜 Network controller
 - 🎮 Game controller
 - 🖨️ Printer

You can connect things to your computer through "ports". Can you identify all the ports available on your computer?
In particular:
 - HDMI port
 - USB port
 - Ethernet port (for network)

= RAM vs. Hard drive

The RAM and hard drive may look like they are the same: they are both memory. But they are actually very different.

The RAM is very fast, but because it is expensive it is much smaller than the hard drive. It needs to be powered to store things, so when the computer restarts, everything that was in RAM disappears.

The hard drive is slower but much bigger than the RAM. It can store information even when the computer is powered down.

= CLI or GUI

There are two ways to talk to a computer:

Through a *GUI* (Graphical User Interface) which uses icons, pictures, buttons, etc... You usually use the mouse to interact with it. This is what most people use nowadays when they interact with a computer.

Through a *CLI* (Command Line Interface) which uses text. This is used by people who are experienced with computers.

#pro_tip[
Although a GUI might seem easier, a CLI can be extremely powerful. Imagine you want to rename 100 photos from `pic1.jpg` to `holiday1.jpg`. With a GUI, you'd have to click on each photo, select `pic` and type `holiday` instead. In the CLI, you can just type 
```
for file in pic*.jpg; do mv $file $(echo $file | sed 's/pic/holiday/'); done
```

This is a mouthful, but it only takes a few seconds of your time whereas manually renaming each picture would take an hour and be very boring.
]
