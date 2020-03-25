(defconst jg-logic-layer-packages
  '(
    ob-prolog
    (ob-ccalc :location local)
    (ob-clingo :location local)
    proof-general
    )
)


(defun jg-logic-layer/init-ob-ccalc ()
  (use-package ob-ccalc
    :init
    (org-babel-do-load-languages
     'org-babel-load-languages '((ccalc . t)))
    (push '("ccalc" . prolog) org-src-lang-modes)
    (add-to-list 'auto-mode-alist '("\\.ccalc$" . prolog-mode))
    )
  )
(defun jg-logic-layer/init-ob-clingo ()
  (use-package ob-clingo
    :init
    (org-babel-do-load-languages
     'org-babel-load-languages '((clingo . t)))
    (push '("clingo" . prolog) org-src-lang-modes)
    (add-to-list 'auto-mode-alist '("\\.lp$" . prolog-mode))
    )

  )
(defun jg-logic-layer/init-ob-prolog ()
  (use-package ob-prolog
    :init
    (org-babel-do-load-languages
     'org-babel-load-languages '((prolog . t)))
    (setq org-babel-prolog-command "swipl")
    (add-to-list 'auto-mode-alist '("\\.lp$" . prolog-mode))
    )
  )

(defun jg-logic-layer/init-proof-general ()
  (use-package proof-general
    :init
    (push 'coq-mode jg-spacemacs-main-layer/major-modes)
    :config
    )
  )
