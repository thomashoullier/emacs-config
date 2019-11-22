(require 'paredit)
(add-hook 'emacs-lisp-mode-hook 'paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook 'paredit-mode)
(add-hook 'ielm-mode-hook 'paredit-mode)
(add-hook 'lisp-mode-hook 'paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'paredit-mode)
(add-hook 'scheme-mode-hook 'paredit-mode)
(add-hook 'slime-repl-mode-hook 'paredit-mode)

;; Stop SLIME's REPL from grabbing DEL,
;; which is annoying when backspacing over a '('
(defun override-slime-repl-bindings-with-paredit ()
  (define-key slime-repl-mode-map
  (read-kbd-macro paredit-backward-delete-key) nil))
(add-hook 'slime-repl-mode-hook 'override-slime-repl-bindings-with-paredit)

;; Racket-specific
(add-hook 'racket-mode-hook 'paredit-mode)
(add-hook 'racket-repl-mode-hook 'paredit-mode)
