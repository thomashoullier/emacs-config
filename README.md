# Emacs configuration files for Common Lisp development
For reference, we use the vanilla Emacs with GTK3. We use `sbcl` as our Common
Lisp implementation. The default folder for this configuration is
`~/.emacs.d`. This configuration works for Linux.

⚠⚠⚠ This is a work in progress. This is not supposed to work for you out of the
box. Please use this only to gather information on which packages work together
and how to configure them. ⚠⚠⚠

![Emacs layout screenshot](doc/emacs-screenshot.png)

The visual aspect is pretty terse and with minimal distraction.

## Packages
We use the MELPA package repository. We use the following packages, listed under
`custom/package-list.el`:
* auto-package-update: Automatically keep the packages up to date.
* atom-one-dark-theme: Dark theme.
* slime: Interact with a Lisp. We load additional contributions listed under
`custom/slime-conf.el`.
* slime-repl: REPL for interacting with Lisp
* slime-autodoc: Documentation utilities for Common Lisp.
* slime-indentation: Indentation for Common Lisp throughout Emacs.
* company: Auto-completion.
* evil: Vi bindings and more.
* evil-cleverparens: Ensure that editing doesn't break the parentheses.
* column-enforce-mode: Highlight text that goes over a certain column.
* highlight-parentheses: Highlight matching parentheses.
* key-chord: Enable mapping functions to key sequences.
* neotree: File tree browser.
* projectile: Project/repository awareness.

## Key bindings
When designing Vi keyboard bindings:
* The home row is in your own house.
* The keys directly around it are within the town your house is in.
* The number row is in another country.
* The arrow keys are on the Moon and you're on foot.
* The mouse might as well be in another galaxy. It's so far away you're
not even sure it's there.

Very few keybindings are configured at the moment.

### Basic navigation
| Key | Function | Description |
| -------- | -------- | -------- |
| j | evil-next-line | Move the cursor **down** one line |
| k | evil-previous-line | **up** |
| l | evil-forward-char | Move the cursor **right** by one character |
| h | evil-backward-char | **left** |
| M-o | other-window | Cycle between open Emacs windows|
|kj (keychord)|evil-normal-state|Force evil normal state (eg. exit insert mode)|
| w | neotree-project-dir | Open neotree in the current project |
| M-\\ | (switch-to-buffer "\*slime-repl sbcl\*") | Switch to the repl in the current window |

### Edit
| Key | Function | Description |
| -------- | -------- | -------- |
| M-; | comment-line | Comment the current line. No parenthesis awareness |
| J | evil-join | Append next line to current line |
| M-( | insert-parentheses | Wrap parentheses around sexp |

### Files
| Key | Function | Description |
| -------- | -------- | -------- |
| M-f | find-file | Search and open a file|
| M-' | slime-compile-and-load-file | Compile the current file and load it|

### neotree
| Key | Function | Description |
| -------- | -------- | -------- |
| w | neotree-hide | Quit neotree |
| j | neotree-next-line | neotree navigation: down |
| k | neotree-previous-line | neotree navigation: up |
| l | neotree-quick-look | Open file but do not switch to it |
| L | neotree-enter | Open file and switch to it |
| h | neotree-select-up-node | Go up in the file tree |
| r | neotree-change-root | Current directory becomes root of neotree |
| H | neotree-hidden-file-toggle | Toggle hidden files display |

### magit
| Key | Function | Description |
| -------- | -------- | -------- |
| M-g | magit-status | Open magit |

### markdown-mode
| Key | Function | Description |
| -------- | -------- | -------- |
| C-c C-c p | markdown-command + preview | Calls [grip](https://github.com/joeyespo/grip) and a browser for preview |

The full list of bindings in `evil-magit` should be found on its
![github](https://github.com/emacs-evil/evil-magit/tree/1decef941f252bfd862be50d99bfbc0660dfa18c).

## Creating a SBCL core
This configuration loads a SBCL core with preloaded libraries:
* sb-bsd-sockets
* sb-posix
* sb-introspect
* sb-cltl2
* asdf

To create the SBCL core:
- Ensure that SBCL is mapped to `sbcl` in your `$PATH` on your system or adapt
it in `sbcl-core/generate-core.sh`.
- Run `sbcl-core/generate-core.sh`.
- Possibly fix the path to the core to load in `slime-conf.el`. The default
being `sbcl-core/sbcl.core-for-slime` in `sbcl-core/sbcl-init.sh`.
You need to regenerate such a core everytime SBCL is updated.

## References
* I took a lot of inspiration in https://github.com/portacle. If you are
looking for something that works out of the box and that you don't need to
configure then please go there.
* https://www.emacswiki.org/ for the configuration of some packages.

## Licensing
Some things are copy-pasted from the EmacsWiki, so we redistribute this work
under their GPLv2 license.
