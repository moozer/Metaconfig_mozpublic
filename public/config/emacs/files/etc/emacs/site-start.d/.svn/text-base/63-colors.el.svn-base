(defvar current-color-scheme 'blue)

#if setnu_mode
  (setnu-mode)
  (setnu-mode nil)
#end
(show-paren-mode)
(font-lock-mode)

(defun set-common-color-scheme ()
  (require 'cperl-mode)
  (set-face-attribute 'italic nil :italic nil)
  (set-face-attribute 'bold-italic nil :bold nil :italic nil)
  (set-face-attribute 'mode-line nil :foreground "black" :background "orange")
  (set-face-attribute 'region nil :foreground "black" :background "yellow")

  ; Show paren mode
  (set-face-attribute 'show-paren-match-face nil :foreground "white" :background "orange")

  ; any-ini mode
;  (set-face-attribute 'any-ini-section-face nil :foreground "red")
;  (set-face-attribute 'any-ini-param-face nil :foreground "green")
;  (set-face-attribute 'any-ini-value-face nil :foreground "yellow")
)

(defun set-current-color-scheme-white ()
  ;; Generic
  (set-face-attribute 'default nil :background "white" :foreground "black")
  (set-face-attribute 'highlight nil :foreground "white" :background "darkblue")

  ;; Mode specific
  (set-face-attribute 'cperl-array-face nil :background "white" :foreground "blue")
  (set-face-attribute 'cperl-hash-face nil :background "white" :foreground "red")
  #if setnu_mode
    (set-face-attribute 'setnu-line-number-face nil :foreground "black")
  #end

  ;; Font lock
  (set-face-attribute 'font-lock-type-face nil :foreground "blue3")
  (set-face-attribute 'font-lock-string-face nil :foreground "green4")
  (set-face-attribute 'font-lock-comment-face nil :foreground "orange2")
  (set-face-attribute 'font-lock-builtin-face nil :foreground "steelblue")
  (set-face-attribute 'font-lock-warning-face nil :foreground "red" :background "white")
  (set-face-attribute 'font-lock-keyword-face nil :foreground "blue3")
  (set-face-attribute 'font-lock-constant-face nil :foreground "steelblue")
  (set-face-attribute 'font-lock-function-name-face nil :foreground "red2")
  (set-face-attribute 'font-lock-variable-name-face nil :foreground "green4")
  )

(defun set-current-color-scheme-blue ()
  ;; Generic
  (set-face-attribute 'default nil :background "navy" :foreground "yellow")
  (set-face-attribute 'highlight nil :foreground "navy" :background "darkblue")

  ;; Mode specific
  (set-face-attribute 'cperl-array-face nil :background "navy" :foreground "blue")
  (set-face-attribute 'cperl-hash-face nil :background "navy" :foreground "red")
  #if setnu_mode
    (set-face-attribute 'setnu-line-number-face nil :foreground "white")
  #end

  ;; Font lock
  (set-face-attribute 'font-lock-type-face nil :foreground "DarkTurquoise")
  (set-face-attribute 'font-lock-string-face nil :foreground "red")
  (set-face-attribute 'font-lock-comment-face nil :foreground "grey70")
  (set-face-attribute 'font-lock-builtin-face nil :foreground "white")
  (set-face-attribute 'font-lock-warning-face nil :foreground "red" :background "navy")
  (set-face-attribute 'font-lock-keyword-face nil :foreground "white")
  (set-face-attribute 'font-lock-constant-face nil :foreground "steelblue")
  (set-face-attribute 'font-lock-function-name-face nil :foreground "yellow")
  (set-face-attribute 'font-lock-variable-name-face nil :foreground "yellow")
  )

(defun set-current-color-scheme (color)
  (setq current-color-scheme color)
  (set-common-color-scheme)
  (if (eq color 'white) (set-current-color-scheme-white)
    (if (eq color 'blue) (set-current-color-scheme-blue)
      (set-current-color-scheme-white)
    )))

(defun toggle-current-color-theme ()
    (interactive)
    (if (eq current-color-scheme 'blue)
	(set-current-color-scheme 'white)
      (set-current-color-scheme 'blue)
      ))

(set-current-color-scheme 'blue)
