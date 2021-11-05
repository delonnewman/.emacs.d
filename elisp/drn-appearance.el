(require 'fira-code-mode)
;(require 'color-theme-buffer-local)

;; font
(set-face-attribute 'default nil :font "Fira Code-15")
(set-frame-font "Fira Code-15" nil t)

;; add theme directory to load path
(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))

(defvar drn-theme 'alabaster)

(load-theme drn-theme t)
(set-frame-parameter nil 'background-mode 'dark)
(enable-theme drn-theme)

;; Show line numbers
(global-linum-mode)

(column-number-mode t)
(tool-bar-mode -1)

(when window-system (set-frame-size (selected-frame) 120 80))

;(add-hook 'term-mode-hook
;          (lambda () (color-theme-buffer-local drn-theme (current-buffer))))

(provide 'drn-appearance)
