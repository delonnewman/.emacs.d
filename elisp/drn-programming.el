(require 'smartparens-config)
(require 'rainbow-delimiters)
(require 'editorconfig)
(require 'asdf-vm)
(require 'hl-todo)
(require 'diminish)
(require 'prodigy)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode) 
(add-hook 'prog-mode-hook #'smartparens-mode)

(editorconfig-mode 1)
(diminish 'editorconfig-mode)

;; Configure path to recogize asdf-vm paths
(asdf-vm-init)

;; highlight annotations like TODO in source code
(global-hl-todo-mode +1)

;; git gutter
(global-git-gutter-mode +1)
(diminish 'git-gutter)

;; use global-display-line-numbers when available, linenum-mode breaks git gutter
(when (version<= "26.0.6" emacs-version)
  (global-display-line-numbers-mode))

(provide 'drn-programming)
