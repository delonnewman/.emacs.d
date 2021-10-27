(require 'elpy)

(defun drn-init-python-mode ()
  (elpy-enable))

(add-hook 'python-mode-hook #'drn-init-python-mode)

;; Enable Flycheck
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(provide 'drn-python)
