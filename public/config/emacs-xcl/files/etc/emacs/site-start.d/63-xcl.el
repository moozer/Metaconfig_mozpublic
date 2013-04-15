(require 'generic-x) ;; we need this

(define-generic-mode
  ;; Name of the mode to create
  'xcl-mode
  ;; Comments start with '%#'
  '("%#")
  ;; Keyword
  '("import" "modify" "foreach" "define" "method" "return" "break" "continue" "in" "or" "and" "if" "elif" "not" "end" "True" "False" "None")
  ;; Highlight rules
  '(("^\\(\\[[^]]+\\]\\)" 1 'font-lock-type-face)
    ("\\<print_\\(fatal\\|error\\|warn\\|note\\|hint\\|debug\\|minute\\|line\\)\\>" . font-lock-function-name-face)
    ("\\<\\(str\\|int\\|dict\\)\\>" . font-lock-type-face)
;    ("\\$" . font-lock-keyword-face)
    )
  ;; Files for which to activate this mode
  '("\\.xcl$" "/etc/metaconfig/node/\\(config\\|install\\)" "/etc/metaconfig/res/[^/]+/\\(config\\|install\\)$")
  ;; Other functions to call
  (list (lambda () (setq comment-start "%#")))
  "Major mode for XCL files"            ;; doc string for this mode
  )
