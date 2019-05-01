(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (atom-one-dark-theme auto-package-update))))
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
(desktop-save-mode 1)
