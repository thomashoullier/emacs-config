(require 'column-enforce-mode)
(setq column-enforce-column 80)
(add-hook 'prog-mode-hook 'column-enforce-mode)
(add-hook 'markdown-mode-hook 'column-enforce-mode)
