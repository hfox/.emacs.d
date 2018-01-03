;; I like tabs

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq tab-width 4)
(setq indent-tabs-mode t)

;; I like tabs, even in python.
(add-hook 'python-mode-hook
	  (lambda ()
	    (setq tab-width 4)
	    (setq python-indent-offset 4)
	    (setq indent-tabs-mode t)))


;; org-mode, append time of closure to todos
(setq org-log-done 'time)

;; MELPA
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(load "~/.emacs.d/secret.el")
