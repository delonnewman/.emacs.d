(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))

(defun drn-nov-font-setup ()
  (setq nov-text-width t)
  (setq visual-fill-column-center-text t)
  (face-remap-add-relative 'variable-pitch :family "Palatino"
                                           :height 1.3))

(add-hook 'nov-mode-hook 'visual-line-mode)
(add-hook 'nov-mode-hook 'visual-fill-column-mode)
(add-hook 'nov-mode-hook 'drn-nov-font-setup)

(provide 'drn-epub)
