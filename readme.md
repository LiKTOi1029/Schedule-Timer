# Timing Application

This is an application I made for myself to be able to keep track of all of my day-to-day scheduling. This will be where 
the docs are located if I ever make any/if any are required to begin with.

## Changelogs

### 2025/12/2
- Project began
- Added `readme.md`, `main.lua`, `conf.lua`, `Schematics.png`, `Schematics.xcf`, and `LICENSE`

### 2025/12/10
- Reformatted frontend code
- Redoing the colour palette

### 2025/12/14

- Completed contents menu section.
- Separated files into their respective sub-files. Better organization of code.

### 2025/12/21

- Completed the input and date sections of the contents tabs.
- Adding menu back into `main.lua` due to maintainability and scalability issues.

## Roadmap

This project is intended to be finished by the first of January, 2026.

- Only one single menu to operate from
- Solely shortcut based, no mouse needed
- User Interface
- Built-In Timer
- System to log activities
- System to save logged activities to TOML file
- System to import and export log files (in TOML)

## Known Bugs

These are all bugs which I am aware of, however have not yet fixed/I am fixing as we speak.

### TimeConverter.lua

The `timeconverter.lua` script is unable to format all the values provided correctly. 
A reformat is in order very soon to make it more efficient.

Status: In Progress

## Current Works

This is a list of all of the things I am still working on implementing

### Scrollbar

This is simple concept, a scroll bar to scroll through the contents of a particualr .TOML log

Status: Not Started

### Interface To Build Contents

An interface or button to help build brand new contents from scratch (and delete them, possibly in bulk)

Status: Not Started

### Contents

The items contained within the application

Status: Finished

### TOML File Reading and Exporting

This is a .TOML log input/output system. Input a .TOML file, get its full statistics, 
output a full .TOML file, obtain an exported .TOML file containing every activity ever 
recorded on that particular log.

Status: Not Started