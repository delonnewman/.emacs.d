(require 'fira-code-mode)
(require 'ns-auto-titlebar)
(require 'powerline)
;(require 'color-theme-buffer-local)

;; font
(set-face-attribute 'default nil :font "Fira Code-15")
(set-frame-font "Fira Code-15" nil t)

;; add theme directory to load path
(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))

(defvar drn-theme 'nord)

(load-theme drn-theme t)
(set-frame-parameter nil 'background-mode 'dark)
(enable-theme drn-theme)

(column-number-mode t)
(tool-bar-mode -1)

(when window-system (set-frame-size (selected-frame) 120 80))

;; make titlebar transparent on macOS
(when (eq system-type 'darwin) (ns-auto-titlebar-mode))

;; load powerline theme
(powerline-center-evil-theme)

(provide 'drn-appearance)
