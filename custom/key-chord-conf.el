(require 'key-chord)

(key-chord-define evil-insert-state-map "kj" 'evil-normal-state)
(setq key-chord-two-keys-delay 0.5)

(key-chord-mode 1)
