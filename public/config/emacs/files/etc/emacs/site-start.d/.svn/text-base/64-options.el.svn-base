(column-number-mode t)
(set-language-environment "UTF-8")
(global-font-lock-mode t)

;; Disable zone mode
(if (fboundp 'zone-leave-me-alone) (zone-leave-me-alone))

(set-face-font  'default "-*-fixedsys-*-*-*--*-*-96-96-*-*-*-*")

(setq inhibit-startup-message t)
(setq inhibit-startup-buffer-menu t)

; retitle emacs window
(defun frame-retitle (title)
  (modify-frame-parameters
   nil (list (cons 'name title))
   )
  )

;; set a beautiful title bar
(setq frame-title-format
      '(buffer-file-name "%%f" (dired-directory dired-directory "%%b")))
