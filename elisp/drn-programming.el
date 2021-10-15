(require 'smartparens-config)
(require 'rainbow-delimiters)
(require 'editorconfig)
(require 'asdf-vm)
(require 'hl-todo)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode) 
(add-hook 'prog-mode-hook #'smartparens-mode)

(editorconfig-mode 1)
(diminish 'editorconfig)

;; Configure path to recogize asdf-vm paths
(asdf-vm-init)

;; highlight annotations like TODO in source code
(global-hl-todo-mode 1)

(provide 'drn-programming)
