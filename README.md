# Norton-Style Storage Utility (C + ncurses)

A retro-inspired Norton/Lotus style storage and disk utility written in **C** with an **ncurses** interface.

---

## Overview

This project recreates the look and feel of classic DOS-era tools like **Norton Utilities** and **Lotus 1-2-3**, but runs on modern Linux systems.  
It provides a text-based menu system (`/` navigation like Lotus) with modules for viewing/editing files, disassembling ELF binaries, recovering deleted files, and performing disk checks.

- **Problem solved**: modern tools are powerful but lack the simplicity and elegance of retro utilities. This project offers a safe, modular, retro-style toolkit for learning and exploration.  
- **Why build it**: to combine low-level learning (C, syscalls, filesystems) with the fun nostalgia of retro user interfaces.  
- **Who it’s for**: anyone learning systems programming in C, retro enthusiasts, or developers who want hands-on experience with hex editors, disassemblers, and filesystem recovery.

---

## Features

- **Lotus-style `/` menu** navigation with single-letter commands.  
- **System Info**: CPU, RAM, partitions from `/proc`.  
- **Hex Editor**: view and edit files/devices in hex + ASCII.  
- **Disassembler**: integrated ELF instruction decoding (planned).  
- **Recovery Tools**: undelete for FAT/exFAT, file carving by signature.  
- **Disk Doctor Lite**: surface scan, partition/FS consistency checks.  
- **ncurses UI**: authentic retro feel with ASCII layouts.  

---

## Getting Started

### Prerequisites

You need the following tools/libraries:

- `gcc` (native compiler)  
- `make` (for build automation)  
- `libncurses-dev` (ncurses library for UI)  

On Debian/Ubuntu you can install them with:

```bash
sudo apt install build-essential libncurses-dev
