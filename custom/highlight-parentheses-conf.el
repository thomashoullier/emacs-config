(require 'highlight-parentheses)

(add-hook 'emacs-lisp-mode-hook #'highlight-parentheses-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'highlight-parentheses-mode)
(add-hook 'ielm-mode-hook #'highlight-parentheses-mode)
(add-hook 'lisp-mode-hook #'highlight-parentheses-mode)
(add-hook 'lisp-interaction-mode-hook #'highlight-parentheses-mode)
(add-hook 'scheme-mode-hook #'highlight-parentheses-mode)
