;; no tool bar
(tool-bar-mode -1)
;; no scroll bar
(scroll-bar-mode -1)

(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))

(load-file "~/.emacs.d/emacs-for-python/epy-init.el")
(load-file "~/.emacs.d/haml/haml-mode.el")
(load-file "~/.emacs.d/jinja2-mode-master/jinja2-mode.el")

(epy-setup-checker "pyflakes %f")
(require 'highlight-indentation)
(add-hook 'python-mode-hook 'highlight-indentation)

(add-to-list 'load-path "~/.emacs.d/coffee-mode")
(require 'coffee-mode)

(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

(setq whitespace-action '(auto-cleanup)) ;; automatically clean up bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab)) ;; only show bad whitespace
(custom-set-variables
 '(tab-width 4))

;; The following key-binding iconifies a window -- we disable it:
(global-unset-key "\C-x\C-z")
;; The following key-binding quits emacs -- we disable it too:
(global-unset-key "\C-x\C-c")

;; windows alt+f4 quit
;; Disable binding of C-z to iconify a window.

(global-unset-key [C-z])
;; Permanent display of line and column numbers is handy.
(setq-default column-number-mode 't)

(global-set-key [C-tab] 'next-multiframe-window)

(global-set-key [f8] (lambda () (interactive) (replace-regexp " +$" "" nil (if (and transient-mark-mode mark-active) (region-beginning)) (if (and transient-mark-mode mark-active) (region-end))) ))

