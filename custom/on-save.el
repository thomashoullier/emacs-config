;;;; What to do with buffer on saving them.
;;;; Eg. untabify, remove trailing white spaces.

;;; Untabify
;; Credit to https://unix.stackexchange.com/a/61864/350384
(defun untab-all ()
  (unless (and (stringp mode-name)
               (string= mode-name "GNUmakefile") )
    (untabify (point-min) (point-max)) )
  nil)

(defun indent-all ()
  (indent-region (point-min) (point-max) nil))

(add-hook 'prog-mode-hook
  (lambda () (add-to-list 'write-file-functions 'untab-all)))
(add-hook 'prog-mode-hook
  (lambda () (add-to-list 'write-file-functions 'delete-trailing-whitespace)))
(add-hook 'prog-mode-hook
  (lambda () (add-to-list 'write-file-functions 'indent-all)))
