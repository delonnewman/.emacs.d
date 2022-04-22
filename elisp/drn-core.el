(require 'cl-lib)

;; Recent File mode
(recentf-mode 1)

;; Evil
;; (evil-mode 1)

;; Counsel / Ivy
;(global-set-key (kbd "M-x") 'counsel-M-x)
(ivy-mode 1)
(diminish 'ivy-mode)

;; Projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-command-map (kbd "#") 'flycheck-projectile-list-errors)
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

;; supercharge your undo/redo with undo-tree
(require 'undo-tree)
;; autosave the undo-tree history
(setq undo-tree-history-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq undo-tree-auto-save-history t)
(global-undo-tree-mode)
(diminish 'undo-tree-mode)

;;; Colorize output of Compilation Mode, see
;;; http://stackoverflow.com/a/3072831/355252
(defun drn-colorize-compilation-buffer ()
  "Colorize a compilation mode buffer."
  (interactive)
  ;; we don't want to mess with child modes such as grep-mode, ack, ag, etc
  (when (eq major-mode 'compilation-mode)
    (let ((inhibit-read-only t))
      (ansi-color-apply-on-region (point-min) (point-max)))))
(add-hook 'compilation-filter-hook #'drn-colorize-compilation-buffer)

;; blatenly stolen from prelude
(defun drn-search (query-url prompt)
  "Open the search url constructed with the QUERY-URL.
PROMPT sets the `read-string prompt."
  (browse-url
   (concat query-url
           (url-hexify-string
            (if mark-active
                (buffer-substring (region-beginning) (region-end))
              (read-string prompt))))))

(defmacro drn-install-search-engine (search-engine-name search-engine-url search-engine-prompt)
  "Given some information regarding a search engine, install the interactive command to search through them"
  `(defun ,(intern (format "search-%s" search-engine-name)) ()
       ,(format "Search %s with a query or region if any." search-engine-name)
       (interactive)
       (drn-search ,search-engine-url ,search-engine-prompt)))

(drn-install-search-engine "google"     "http://www.google.com/search?q="              "Google: ")
(drn-install-search-engine "youtube"    "http://www.youtube.com/results?search_query=" "Search YouTube: ")
(drn-install-search-engine "github"     "https://github.com/search?q="                 "Search GitHub: ")
(drn-install-search-engine "duckduckgo" "https://duckduckgo.com/?t=lm&q="              "Search DuckDuckGo: ")
(drn-install-search-engine "wol"        "https://wol.jw.org/en/wol/tl/r1/lp-e?q="      "Search WOL: ")
(drn-install-search-engine "jworg"      "https://www.jw.org/en/search/?q="             "Search JW.org: ")

(provide 'drn-core)
