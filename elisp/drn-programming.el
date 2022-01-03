(require 'smartparens-config)
(require 'rainbow-delimiters)
(require 'editorconfig)
(require 'asdf-vm)
(require 'hl-todo)
(require 'diminish)
(require 'prodigy)
(require 'flycheck-color-mode-line)
(require 'display-line-numbers)

(defcustom display-line-numbers-exempt-modes
  '(vterm-mode eshell-mode shell-mode term-mode ansi-term-mode inferior-emacs-lisp-mode nov-mode)
  "Major modes on which to disable line numbers."
  :group 'display-line-numbers
  :type 'list
  :version "green")

(defun display-line-numbers--turn-on ()
  "Turn on line numbers except for certain major modes.
Exempt major modes are defined in `display-line-numbers-exempt-modes'."
  (unless (or (minibufferp)
              (member major-mode display-line-numbers-exempt-modes))
    (display-line-numbers-mode)))

;; use global-display-line-numbers when available, linenum-mode breaks git gutter
(when (version<= "26.0.6" emacs-version)
  (global-display-line-numbers-mode))


(add-hook 'prog-mode-hook #'rainbow-delimiters-mode) 
(add-hook 'prog-mode-hook #'smartparens-mode)

(editorconfig-mode 1)
(diminish 'editorconfig-mode)

;; Configure path to recogize asdf-vm paths
(asdf-vm-init)

;; highlight annotations like TODO in source code
(global-hl-todo-mode +1)

;; git gutter
(global-git-gutter-mode +1)
(diminish 'git-gutter)

;(eval-after-load "flycheck"
;  '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))

(with-eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook 'flycheck-popup-tip-mode))

(provide 'drn-programming)
