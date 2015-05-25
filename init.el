;; I like tabs
(setq tab-width 4)
(setq indent-tabs-mode t)

;; I like tabs, even in python.
(add-hook 'python-mode-hook
	  (lambda () (setq tab-width 4)(setq indent-tabs-mode t)))
