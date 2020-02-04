;;;; Key-bindings
(evil-define-key 'normal evil-cleverparens-mode-map (kbd "M-o") nil)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-f") 'find-file)

(global-unset-key (kbd "M-'"))
(define-key lisp-mode-map (kbd "M-'") 'slime-compile-and-load-file)

(define-key paredit-mode-map (kbd "M-;") nil)
(global-unset-key (kbd "M-;"))
(define-key prog-mode-map (kbd "M-;") 'comment-line)

;; Jump to the REPL from wherever
(global-set-key 
  (kbd "M-\\") (lambda () (interactive) (switch-to-buffer "*slime-repl sbcl*")))

;; Magit status
(global-set-key (kbd "M-g") 'magit-status)

;; Unbind M-s
(with-eval-after-load 'evil-cleverparens
  (evil-define-key 'normal evil-cleverparens-mode-map (kbd "M-s") nil))
