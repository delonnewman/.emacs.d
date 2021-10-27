(require 'package)
(add-to-list
  'package-archives
  '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(defvar drn-packages
  '(
    ;; Editor ext.
    evil
    diminish
    dashboard
    all-the-icons
    org
    ivy
    editorconfig
    projectile
    exec-path-from-shell
    undo-tree
    ag

    ;; Help
    guru-mode
    which-key

    ;; Programming
    lsp-mode
    lsp-ui
    rainbow-delimiters
    rainbow-mode
    smartparens
    hl-todo
    flycheck
    company
    company-box

    ;; Services / devops
    docker

    ;; Git
    magit
    forge

    ;; Clojure
    clojure-mode
    cider

    ;; Scheme
    geiser

    ;; CommonLisp
    slime

    ;; Ruby
    yari
    inf-ruby

    ;; Web Dev
    web-mode

    ;; JavaScript
    tide
    js2-mode
    skewer-mode
    )
  )

(dolist (pkg drn-packages)
  (package-install pkg))
