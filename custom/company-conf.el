(require 'company)

(add-hook 'prog-mode-hook 'company-mode)
(add-hook 'slime-repl-mode-hook 'company-mode)
