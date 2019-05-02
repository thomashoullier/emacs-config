;;;; SLIME configuration
(require 'slime)
;;; Settings
(setq inferior-lisp-program "~/.emacs.d/sbcl-core/sbcl-init.sh")
;;; Loading slime contributions
(setq slime-contribs '(slime-repl slime-autodoc))
;;; Activating autodoc in Common-lisp modes
(add-hook 'lisp-mode-hook 'slime-autodoc-mode)
(add-hook 'lisp-interaction-mode-hook 'slime-autodoc-mode)
;;; Launching SLIME
(slime)
