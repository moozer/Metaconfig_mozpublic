(require 'generic-x) ;; we need this

(define-generic-mode
  ;; Name of the mode to create
  'xms-mode
  ;; Comments start with '%#'
  '("%#%#")
  ;; Keyword
  '("%#import" "%#foreach" "%#define" "%#method" "%#return" "%#break" "%#continue" "in" "or" "and" "%#if" "%#elif" "not" "%#end")
  ;; Highlight rules
  '(
    ("%%[^(]+" . 'font-lock-type-face)
    ("%%\(.+\)" . 'font-lock-type-face)
    )
  ;; Files for which to activate this mode
  '("\\.xms$" "/etc/metaconfig/res/.*/files/.*")
  ;; Other functions to call
  "Major mode for XMS files"            ;; doc string for this mode
  )
