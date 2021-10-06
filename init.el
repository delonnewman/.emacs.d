;; Add elisp dir
(add-to-list 'load-path "~/.emacs.d/elisp")

(require 'appearance)
(require 'core)
(require 'editor)
(require 'dashboard-config)

(require 'git)
(require 'programming)

;; TODO: autoload based on project
(require 'javascript)
(require 'ruby)
(require 'clojure)

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
