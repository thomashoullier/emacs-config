(require 'evil)
(evil-mode 1)

;; Disable evil for the REPL buffers
(evil-set-initial-state 'slime-repl-mode 'emacs)
