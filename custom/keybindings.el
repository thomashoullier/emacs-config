;;;; Key-bindings
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-f") 'find-file)

(define-key lisp-mode-map (kbd "M-'") 'slime-compile-and-load-file)
