(require 'fira-code-mode)
(require 'ns-auto-titlebar)
(require 'powerline)
;(require 'color-theme-buffer-local)

;; font
(setq default-frame-alist '((font . "Fira Code-15")))

;; add theme directory to load path
(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/"))

;(setq custom-enabled-themes '(nord))

                                        ;(defvar drn-theme 'nord)
(if (daemonp)
    (add-hook 'after-make-frame-functions
        (lambda (frame)
            (with-selected-frame frame
              (set-frame-size (selected-frame) 120 80)
              (load-theme 'nord t))))
    (load-theme 'nord t))

(column-number-mode t)
(tool-bar-mode -1)


;; make titlebar transparent on macOS
(when (eq system-type 'darwin) (ns-auto-titlebar-mode))

;; load powerline theme
(powerline-center-evil-theme)

(provide 'drn-appearance)
