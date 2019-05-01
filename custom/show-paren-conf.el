;;;; show-paren is built-in.
(defun lispy-parens ()
      "Setup parens display for lisp modes"
      (setq show-paren-delay 0)
      (setq show-paren-style 'parenthesis)
      (make-variable-buffer-local 'show-paren-mode)
      (show-paren-mode 1)
      (set-face-background 'show-paren-match-face (face-background 'default))
      (if (boundp 'font-lock-comment-face)
          (set-face-foreground 'show-paren-match-face 
     			   (face-foreground 'font-lock-comment-face))
        (set-face-foreground 'show-paren-match-face 
     			 (face-foreground 'default)))
      (set-face-attribute 'show-paren-match-face nil :weight 'extra-bold))

(add-hook 'emacs-lisp-mode-hook #'lispy-parens)
(add-hook 'eval-expression-minibuffer-setup-hook #'lispy-parens)
(add-hook 'ielm-mode-hook #'lispy-parens)
(add-hook 'lisp-mode-hook #'lispy-parens)
(add-hook 'lisp-interaction-mode-hook #'lispy-parens)
(add-hook 'scheme-mode-hook #'lispy-parens)
