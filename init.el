;; Add elisp dir
(add-to-list 'load-path "~/.emacs.d/elisp")

(require 'drn-appearance)
(require 'drn-core)
(require 'drn-editor)
(require 'drn-dashboard)

(require 'drn-git)
(require 'drn-programming)

;; TODO: autoload based on project
(require 'drn-javascript)
(require 'drn-ruby)
(require 'drn-clojure)

(require 'server)
(unless (server-running-p)
  (server-start))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(magit all-the-icons dashboard smartparens evil diminish))
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
