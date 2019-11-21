(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (racket-mode slime projectile neotree key-chord highlight-parentheses evil-cleverparens company column-enforce-mode auto-package-update atom-one-dark-theme)))
 '(safe-local-variable-values
   (quote
    ((Package . Lisp-Binary)
     (Syntax . Common-Lisp)
     (Base . 10)
     (Package . FLEXI-STREAMS)
     (Syntax . COMMON-LISP)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-to-list 'load-path "~/.emacs.d/custom")
(load "package-melpa")
(load "package-list")
(load "auto-package-update-conf")
(load "slime-conf")
(load-theme 'atom-one-dark t)
(load "company-conf")
(load "aesthetics")
(load "evil-conf")
(load "cem-conf")
(load "paredit-conf")
(load "evil-cleverparens-conf")
(load "show-paren-conf")
(load "highlight-parentheses-conf")
(load "on-save")
(load "on-exit")
(load "neotree-conf")
(load "images-conf")

(load "keybindings")
(load "key-chord-conf")

(desktop-save-mode 1)
