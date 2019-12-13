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

;(smartparens-mode -1)
;(define-key evil-normal-state-map (kbd "M-s") nil)
;(evil-define-key smartparens-mode-map (kbd "M-s") nil)
;(evil-define-key 'normal smartparens-mode-map (kbd "M-s") nil)
;(add-hook 'prog-mode-hook (lambda () (smartparens-mode -1)) t)
;(eval-after-load "smartparens"
;  (define-key smartparens-mode-map (kbd "M-s") nil))
;(global-unset-key (kbd "M-s"))
;(global-set-key (kbd "M-s") 'save-buffer)
