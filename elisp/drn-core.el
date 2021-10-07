;; Recent File mode
(recentf-mode 1)

;; Evil
(evil-mode 1)

;; Counsel / Ivy
;(global-set-key (kbd "M-x") 'counsel-M-x)
(ivy-mode 1)
(diminish 'ivy-mode)

;; Projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(setq projectile-project-search-path '("~/Projects/Personal"
                                       "~/Projects/Business"
                                       "~/Projects/Clients"
                                       "~/Projects/Open"
                                       "~/Projects/Theocratic"))
(setq projectile-completion-system 'ivy)
(setq projectile-dynamic-mode-line t)

;; Company
(setq company-idle-delay 0.5)
(setq company-show-numbers t)
(setq company-tooltip-limit 10)
(setq company-minimum-prefix-length 2)
(setq company-tooltip-align-annotations t)
;; invert the navigation direction if the the completion popup-isearch-match
;; is displayed on top (happens near the bottom of windows)
(setq company-tooltip-flip-when-above t)
(global-company-mode 1)
(diminish 'company-mode)

(require 'company-box)
(add-hook 'company-mode-hook 'company-box-mode)

;; Flycheck
(global-flycheck-mode)

;; guru-mode
(require 'guru-mode)
(guru-mode +1)
(setq guru-warn-only t)
(diminish 'guru-mode)

;; Which Key
(require 'which-key)
(which-key-mode +1)

;;; macOS

;; On macOS Emacs doesn't use the shell PATH if it's not started from
;; the shell. Let's fix that:
(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

;; Enable emoji, and stop the UI from freezing when trying to display them.
(when (fboundp 'set-fontset-font)
  (set-fontset-font t 'unicode "Apple Color Emoji" nil 'prepend))

(provide 'drn-core)
