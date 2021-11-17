;; Add elisp dir
(add-to-list 'load-path "~/.emacs.d/elisp")

(require 'package)
(add-to-list
  'package-archives
  '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(require 'drn-appearance)
(require 'drn-core)
(require 'drn-editor)
(require 'drn-dashboard)

(require 'drn-git)
(require 'drn-programming)

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
   '("b30ab3b30e70f4350dad6bfe27366d573ace2190cc405c619bd5e602110c6e0c" default))
 '(package-selected-packages
   '(npm magit all-the-icons dashboard smartparens evil diminish))
 '(safe-local-variable-values
   '((projectile-globally-ignored-files "*.map"
                                        (\, "public/**/*"))
     (flycheck-disabled-checkers emacs-lisp-checkdoc))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)
