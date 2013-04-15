; C-Tab support
(defun raise-buffer ()
  (interactive)
  (let ((buffer-list (nreverse (buffer-list))) buffer)
    (while (string-match "\\` "
    (buffer-name
     (prog1 (setq buffer (car buffer-list))
       (setq buffer-list (cdr buffer-list))))))
    (switch-to-buffer buffer)))

(defun bury-file-buffer ()
  (interactive)
  (bury-buffer)
  (while (null buffer-file-name)
    (bury-buffer)))

(defun unbury-file-buffer ()
  (interactive)
  (raise-buffer)
  (while (null buffer-file-name)
    (raise-buffer)))

;; (defun x-comment-region (beg end)
;;   (interactive "r")
;;   (comment-region beg end -1))

;; (defun x-uncomment-region (beg end)
;;   (interactive "r")
;;   (comment-region beg end -1))

;; Key bindings
(global-set-key [(control f4)] 'kill-buffer)
(global-set-key [(control tab)] 'unbury-file-buffer)
(global-set-key [(control shift iso-lefttab)] 'bury-file-buffer)
(global-set-key [(control shift tab)] 'bury-file-buffer)
(global-set-key [(shift delete)] 'kill-region)
(global-set-key [(shift insert)] 'yank)
(global-set-key [(shift f8)] 'toggle-current-color-theme)
(global-set-key [(f32)] 'toggle-current-color-theme)
(global-set-key [(meta g)] 'goto-line)
(global-set-key [(meta s)] 'comment-or-uncomment-region)
(global-set-key [(meta a)] 'indent-region)
(global-set-key [(meta o)] 'whitespace-cleanup)
(global-set-key [(meta p)] 'query-replace-regexp)
;(global-set-key [(meta %#)] 'query-replace-regexp)
;(global-set-key [(meta '")] 'query-replace-regexp)
