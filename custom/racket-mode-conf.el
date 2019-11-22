(add-hook 'racket-mode-hook
	  (lambda ()
	    (define-key racket-mode-map (kbd "M-'") 'racket-run)))
