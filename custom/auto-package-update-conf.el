;;;; auto-package-update takes care of updating melpa packages automatically.

(require 'auto-package-update)

;;; Settings
;; Update every X days.
(setq auto-package-update-interval 2)
;; Delete old versions of packages
(setq auto-package-update-delete-old-versions t)

;;; Calls
;; Update packages at startup if the interval of time has passed since last
;; update.
(auto-package-update-maybe)
