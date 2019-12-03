(require 'evil-cleverparens)

(add-hook 'emacs-lisp-mode-hook #'evil-cleverparens-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'evil-cleverparens-mode)
(add-hook 'ielm-mode-hook #'evil-cleverparens-mode)
(add-hook 'lisp-mode-hook #'evil-cleverparens-mode)
(add-hook 'lisp-interaction-mode-hook #'evil-cleverparens-mode)
(add-hook 'racket-mode-hook #'evil-cleverparens-mode)
