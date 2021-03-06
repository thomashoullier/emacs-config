;;;; List here the packages that need to be installed from the Melpa repository
(setq package-list
      '(auto-package-update atom-one-dark-theme slime
        company evil column-enforce-mode paredit evil-cleverparens
        highlight-parentheses key-chord neotree projectile
	racket-mode magit evil-magit markdown-mode))

;; Automatically launch the installation
(unless package-archive-contents
  (package-refresh-contents))
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
