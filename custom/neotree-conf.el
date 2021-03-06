(require 'projectile)
(require 'neotree)

;;; Settings
;; Opening neotree at root of the git repository corresponding to open file.
(defun neotree-project-dir ()
    "Open NeoTree using the git root."
    (interactive)
    (let ((project-dir (projectile-project-root))
          (file-name (buffer-file-name)))
      (neotree-toggle)
      (if project-dir
          (if (neo-global--window-exists-p)
              (progn
                (neotree-dir project-dir)
                (neotree-find file-name)))
        (message "Could not find git project root."))))

;; Hide files matching the following regexps: 
(setq neo-hidden-regexp-list 
  '("^\\." "\\.pyc$" "~$" "^#.*#$" "\\.elc$" "\\.o$" "\\.fasl$"))
;; Hide the current folder line.
(setq neo-show-updir-line nil)
(setq neo-theme 'nerd)
;; No mode line
(setq neo-mode-line-type 'none)
;; Show VC status of files
(setq neo-vc-integration '(face))

;;; Bindings
(global-set-key [f8] 'neotree-project-dir)
(evil-define-key 'normal neotree-mode-map (kbd "w") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "g") 'neotree-refresh)
(evil-define-key 'normal neotree-mode-map (kbd "j") 'neotree-next-line)
(evil-define-key 'normal neotree-mode-map (kbd "k") 'neotree-previous-line)
(evil-define-key 'normal neotree-mode-map (kbd "A") 'neotree-stretch-toggle)
(evil-define-key 'normal neotree-mode-map (kbd "H") 'neotree-hidden-file-toggle)
(evil-define-key 'normal neotree-mode-map (kbd "h") 'neotree-select-up-node)
(evil-define-key 'normal neotree-mode-map (kbd "L") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "l") 'neotree-quick-look)
(evil-define-key 'normal neotree-mode-map (kbd "r") 'neotree-change-root)

;; Open while in evil buffer
;; USE GENERAL INSTEAD
(evil-define-key 
  'normal evil-cleverparens-mode-map (kbd "w") 'neotree-project-dir)
