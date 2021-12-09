;; Font size
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;; Start eshell or switch to it if it's active.
(global-set-key (kbd "C-x m") 'eshell)

;; Start a new eshell even if one is active.
(global-set-key (kbd "C-x M") (lambda () (interactive) (eshell t)))

(global-set-key (kbd "C-c C-/ j") 'search-jworg)
(global-set-key (kbd "C-c C-/ w") 'search-wol)
(global-set-key (kbd "C-c C-/ h") 'search-github)
(global-set-key (kbd "C-c C-/ y") 'search-youtube)
(global-set-key (kbd "C-c C-/ d") 'search-duckduckgo)
(global-set-key (kbd "C-c C-/ g") 'search-google)

(provide 'drn-global-keybindings)
