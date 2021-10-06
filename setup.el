(require 'package)
(add-to-list
  'package-archives
  '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

(defvar drn-packages
  '(evil
    smartparens
    diminish
    dashboard
    all-the-icons
    magit
    org
    flycheck
    company
    company-box
    ivy
    editorconfig
    projectile
    guru-mode
    magit
    forge
    which-key
    exec-path-from-shell
    ag
    undo-tree
    hl-todo
    js2-mode
    rainbow-delimiters
    rainbow-mode
    clojure-mode
    cider
    lsp-mode
    lsp-ui
    yari
    inf-ruby
    web-mode
    tide
    ))

(dolist (pkg drn-packages)
  (package-install pkg))
