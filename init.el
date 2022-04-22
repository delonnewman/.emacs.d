;; Add elisp dir
(add-to-list 'load-path "~/.emacs.d/elisp")

(require 'package)
(add-to-list
  'package-archives
  '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(require 'drn-appearance)
(require 'drn-core)
(require 'drn-global-keybindings)

(require 'drn-editor)
(require 'drn-dashboard)
;(require 'drn-eshell)

(require 'drn-programming)
(require 'drn-git)

;(require 'drn-epub)

(require 'drn-docker)
(require 'drn-yaml)
(require 'drn-sql)

(require 'drn-clojure)
(require 'drn-ruby)
(require 'drn-javascript)

(require 'server)
(unless (server-running-p)
  (server-start))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "b30ab3b30e70f4350dad6bfe27366d573ace2190cc405c619bd5e602110c6e0c" default))
 '(package-selected-packages
   '(coffee-mode vterm esh-autosuggest visual-fill-column nov elpygen flycheck-projectile projectile-rails enh-ruby-mode git-timemachine flycheck-popup-tip flycheck-color-mode-line powerline smart-mode-line npm magit all-the-icons dashboard smartparens diminish))
 '(safe-local-variable-values
   '((eval prettier-mode t)
     (projectile-globally-ignored-files "*.map")
     (projectile-globally-ignored-files "*.map"
                                        (\, "public/**/*"))
     (flycheck-disabled-checkers emacs-lisp-checkdoc))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)
