;;;; Untabify files in prog mode on saving them.
;;;; Credit to https://unix.stackexchange.com/a/61864/350384

(defun untab-all ()
  (unless (and (stringp mode-name)
               (string= mode-name "GNUmakefile") )
    (untabify (point-min) (point-max)) )
  nil)

(add-hook 'prog-mode-hook
    (lambda ()
       (add-to-list 'write-file-functions 'untab-all)))
