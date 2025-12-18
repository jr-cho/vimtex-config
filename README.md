# LaTeX Only Vim Configuration

**vimtex + Catppuccin Mocha**

A minimal, distraction free Vim configuration designed **exclusively for writing LaTeX**. This setup prioritizes correctness, readability, and a stable academic workflow over IDE style features.

---

## Overview

This repository provides a single purpose Vim configuration for:

* Academic papers (IEEE, ASCE, journals)
* Reports, theses, and coursework
* Long form technical writing in LaTeX

It intentionally avoids:

* Language servers
* Autocompletion engines
* IDE abstractions

Instead, it relies on:

* `vimtex` for LaTeX tooling
* `latexmk` for deterministic compilation
* Catppuccin **Mocha** for a calm, low contrast writing environment

---

## Features

* Continuous LaTeX compilation via `latexmk`
* Forward and inverse SyncTeX
* Automatic error reporting via quickfix
* Spell checking for LaTeX documents
* Soft line wrapping at 80 columns
* Catppuccin Mocha colorscheme

---

## File Layout

After installation, the relevant files are:

```text
~/.vimrc
~/.vim/autoload/plug.vim
~/.vim/plugged/vimtex/
~/.vim/plugged/catppuccin/
```

No additional configuration files are required.

---

## Requirements

### Vim

* Vim 8+ (or newer)

### LaTeX Toolchain

You must have the following installed:

* `latexmk`
* `pdflatex` (or equivalent)
* A supported PDF viewer

Recommended:

* **macOS**: MacTeX
* **Linux**: TeX Live
* **Windows**: TeX Live

---

## Installation

### 1) Install vim-plug

```bash
mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### 2) Install the `.vimrc`

Place the provided `.vimrc` into:

```text
~/.vimrc
```

### 3) Install Plugins

Open Vim and run:

```vim
:PlugInstall
```

This installs:

* `lervag/vimtex`
* `catppuccin/vim`

---

## Usage Guide

### Open a LaTeX file

```bash
vim report.tex
```

Vim will automatically:

* Detect LaTeX
* Enable vimtex
* Enable spell checking
* Enable line wrapping

---

## Keybindings (Space Leader)

| Action               | Keys            |
| -------------------- | --------------- |
| Compile (continuous) | `Space` `l` `l` |
| View PDF             | `Space` `l` `v` |
| Stop compiler        | `Space` `l` `k` |
| Clean aux files      | `Space` `l` `c` |
| SyncTeX jump         | `Space` `l` `s` |

> All mappings are **Normal mode only**.

---

## Typical Workflow

1. Open `.tex` file
2. Press `Space + l + l` once
3. Write
4. Save (`:w`)
5. Errors update automatically
6. Use SyncTeX to inspect layout
7. Clean aux files when finished

No manual recompilation is required.

---

## PDF Viewers

Supported viewers:

* **macOS**: Skim 
* **Linux**: Zathura
* **Windows**: SumatraPDF

Ensure the viewer is installed and available on your system.

---

## Design Philosophy

This configuration is intentionally:

* Minimal
* Predictable
* Boring

It avoids feature creep to keep the writing environment stable during long academic sessions.

---

## Non Goals

This project does **not** aim to provide:

* Autocomplete
* Snippet engines
* LSP integration
* Code formatting
* UI widgets or dashboards

These are intentionally excluded.

---

## Customization

If you need more add these:

* Snippets (e.g., UltiSnips)
* Distraction free writing mode
* IEEE/ASCE specific conceal tuning

Keep extensions minimal to preserve stability.

---

## License

MIT License. Use, modify, and adapt freely.

---

## Acknowledgements

* `vimtex` by lervag
* Catppuccin community theme
* Vim community documentation
