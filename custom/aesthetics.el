;;;; Basic aesthetics correction to Emacs

;; Disable the very top menu bar
(menu-bar-mode -1)
;; Disable the toolbar
(tool-bar-mode -1)
;; Disable the scroll bars
(scroll-bar-mode -1)
;; Declutter the mode line, only display the name of the buffer
(setq-default mode-line-format (list "    %b"))
;; Fonts
(defun set-prog-font ()
	(interactive)
	(setq buffer-face-mode-face '(:family "Inconsolata" :height 150))
	(buffer-face-mode))
(add-hook 'prog-mode-hook 'set-prog-font)
(add-hook 'markdown-mode-hook 'set-prog-font)
