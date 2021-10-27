(require 'ruby-electric)

;; Map yari to C-h R
(define-key 'help-command (kbd "R") 'yari)

(with-eval-after-load 'ruby-mode
  (defun drn-ruby-mode-defaults ()
    ;; Don't auto-insert encoding comments
    ;; Those are almost never needed in Ruby 2+
    (setq ruby-insert-encoding-magic-comment nil)
    (inf-ruby-minor-mode +1)
    ;; CamelCase aware editing operations
    (subword-mode +1))

  (add-hook 'ruby-mode-hook (lambda () (run-hooks 'drn-ruby-mode-defauls))))

(add-hook 'ruby-mode-hook 'yard-mode)
(add-hook 'ruby-mode-hook 'eldoc-mode)

(provide 'drn-ruby)
