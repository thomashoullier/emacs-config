;;;; Key-bindings
(evil-define-key 'normal evil-cleverparens-mode-map (kbd "M-o") nil)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-f") 'find-file)

(global-unset-key (kbd "M-'"))
(define-key lisp-mode-map (kbd "M-'") 'slime-compile-and-load-file)
