(require 'dashboard)
(require 'all-the-icons)

;; projects
(setq dashboard-projects-backend 'projectile)

;; show dashboard in new frames
(setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))

;; Set the title
(setq dashboard-banner-logo-title "Hello Delon!")

;; Set the banner
(setq dashboard-startup-banner 'logo)
;; Value can be
;; 'official which displays the official emacs logo
;; 'logo which displays an alternative emacs logo
;; 1, 2 or 3 which displays one of the text banners
;; "path/to/your/image.png" or "path/to/your/text.txt" which displays whatever image/text you would prefer

;; Content is not centered by default. To center, set
;; (setq dashboard-center-content t)

;; To disable shortcut "jump" indicators for each section, set
;;(setq dashboard-show-shortcuts nil)

(setq dashboard-items '(
                        (projects . 5)
                        (recents  . 5)
                        (bookmarks . 5)
                        (agenda . 5)
                       ;(registers . 5)
                        ))

(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)

(setq dashboard-set-footer nil)

(dashboard-setup-startup-hook)

(provide 'dashboard-config)
