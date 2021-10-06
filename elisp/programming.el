(require 'smartparens-config)
(require 'rainbow-delimiters)
(require 'editorconfig)
(require 'asdf-vm)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode) 
(add-hook 'prog-mode-hook #'smartparens-mode)

(editorconfig-mode 1)
(diminish 'editorconfig)

;; Configure path to recogize asdf-vm paths
(asdf-vm-init)

(provide 'programming)
