;;;; SLIME configuration
(require 'slime)
;;; Settings
(setq inferior-lisp-program "/bin/sbcl")
;;; Loading slime contributions
(setq slime-contribs '(slime-repl))
;;; Launching SLIME
(slime)
