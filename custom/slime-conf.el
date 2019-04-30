;;;; SLIME configuration
(require 'slime)
;;; Settings
(setq inferior-lisp-program "~/.emacs.d/sbcl-core/sbcl-init.sh")
;;; Loading slime contributions
(setq slime-contribs '(slime-repl))
;;; Launching SLIME
(slime)
