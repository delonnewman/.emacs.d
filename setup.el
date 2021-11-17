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
    ivy
    undo-tree
    ag

    ;; OS / macOS
    exec-path-from-shell
    ;; osx-lib (see https://github.com/raghavgautam/osx-lib)
    ;; osx-trash (see https://github.com/emacsorphanage/osx-trash)
    ;; spotlight (see https://github.com/benmaughan/spotlight.el)

    ;; Productivity
    org
    
    ;; Writing
    ;; pdf-tools (see https://github.com/vedang/pdf-tools)
    ;; pdf-view-restory (see https://github.com/007kevin/pdf-view-restore)
    ;; poet (see https://github.com/kunalb/poet)

    ;; Eshell
    ;; esh-autosuggest (see https://github.com/dieggsy/esh-autosuggest)
    ;; eshell-prompt-extras (see https://github.com/zwild/eshell-prompt-extras)
    
    ;; Help
    guru-mode
    which-key

    ;; Programming
    editorconfig
    projectile
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
    git-gutter

    ;; Clojure
    clojure-mode
    cider

    ;; Common Lisp
    ;; slime

    ;; Scheme
    ;; geiser

    ;; Ruby
    yari
    inf-ruby
    yard-mode
    rspec-mode
    ;; enhanced-ruby-mode (see https://github.com/zenspider/enhanced-ruby-mode)
    ;; ruby-tools (see https://github.com/rejeep/ruby-tools.el)
    ;; ruby-end (see https://github.com/rejeep/ruby-end.el)
    ;; rube (see https://github.com/dgutov/robe)


    ;; Gehrkin
    feature-mode

    ;; Web Dev
    web-mode
    restclient
    impatient-mode
    ;; hyde Jekyll integration (see https://github.com/nibrahim/Hyde)
    
    ;; JavaScript
    tide
    js2-mode
    skewer-mode
    prettier-js
    npm
    ; indium ? (see https://indium.readthedocs.io/en/latest/)

    ;; Julia
    julia-mode

    ;; Python
    ;; elpy
    )
  )

(dolist (pkg drn-packages)
  (package-install pkg))
