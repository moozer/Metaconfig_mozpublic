
(global-set-key [f4] 'setnu-mode)

;(mouse-wheel-mode t)

;; Delphi mode
(setq delphi-indent-level 2)

;; c-mode
(c-set-offset 'substatement-open 0 nil)
(c-set-offset 'access-label 0 nil)
(c-set-offset 'case-label '+ nil)
(c-set-offset 'arglist-intro '+ nil)
(c-set-offset 'arglist-cont-nonempty '+ nil)
(c-set-offset 'arglist-close 0 nil)

;; Matlab mode
(add-hook 'matlab-mode-hook '(lambda() (auto-fill-mode 0)) t)

;; Delphi mode
(add-to-list 'auto-mode-alist '("\\.inc\\'" . delphi-mode))
(add-to-list 'auto-mode-alist '("\\.pas\\'" . delphi-mode))
(add-to-list 'auto-mode-alist '("\\.xmc\\'" . delphi-mode))

;; Python mode
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

#if anyinit_mode
  (require 'any-ini-mode)
  (add-to-list 'auto-mode-alist '(".*\\.ini$" . any-ini-mode))
  (add-to-list 'auto-mode-alist '(".*\\.conf$" . any-ini-mode))
#end

;(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
