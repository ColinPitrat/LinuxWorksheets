# LinuxWorksheets

[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/ColinPitrat/LinuxWorksheets/blob/main/README.md)
[![fr](https://img.shields.io/badge/lang-fr-blue.svg)](https://github.com/ColinPitrat/LinuxWorksheets/blob/main/README-fr.md)

[![Release](https://github.com/ColinPitrat/LinuxWorksheets/actions/workflows/build.yml/badge.svg)](https://github.com/ColinPitrat/LinuxWorksheets/actions/workflows/build.yml)

Some worksheets to learn Linux CLI for kids.

See also [my Python worksheets](https://github.com/ColinPitrat/PythonWorksheets)

You can download all the sheets as PDF:
 - [one file per sheet (zip)](https://github.com/ColinPitrat/LinuxWorksheets/releases/download/latest/linux-sheets-en.zip)
 - [all sheets in one file (pdf)](https://github.com/ColinPitrat/LinuxWorksheets/releases/download/latest/linux-sheets-en.pdf)

## Building

To build the sheets from source, you need:
 - `make`
 - `typest`
 - the fonts `Linux Libertine` and `Fira Code`

To install the required packages on Debian and its derivatives:
```
sudo apt install make typest fonts-linuxlibertine fonts-firacode snapd
sudo snap install typst
```

Build the sheets from source with:
```
make
```
