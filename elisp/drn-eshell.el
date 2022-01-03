;; EShell Customization
(require 'esh-autosuggest)

(defun eshell/clear ()
  "Clear the eshell buffer."
  (interactive)
  (let ((inhibit-read-only t))
    (erase-buffer)))

(add-hook 'eshell-mode-hook #'esh-autosuggest-mode)

(setq ivy-do-completion-in-region t) ; this is the default

(defun setup-eshell-ivy-completion ()
  (define-key eshell-mode-map [remap eshell-pcomplete] 'completion-at-point)
  ;; only if you want to use the minibuffer for completions instead of the
  ;; in-buffer interface
  (setq-local ivy-display-functions-alist
              (remq (assoc 'ivy-completion-in-region ivy-display-functions-alist)
                    ivy-display-functions-alist)))

(add-hook 'eshell-mode-hook #'setup-eshell-ivy-completion)

(provide 'drn-eshell)
