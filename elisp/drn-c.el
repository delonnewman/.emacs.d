(defun drn-init-c-mode ()
  (require 'semantic)
  (global-semanticdb-minor-mode 1)
  (global-semantic-idle-scheduler-mode 1)
  (semantic-mode 1)
  (semantic-enable))

(add-hook 'c-mode-hook #'drn-init-c-mode)

(provide 'drn-c)
