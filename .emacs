;; default 
(setq default-tab-width 4)
(setq scroll-step 1)
(setq hscroll-step 1)
(setq inhibit-startup-message 1)

(menu-bar-mode -1)

;; c 
(setq c-default-style "linux"
      c-basic-offset 4)

;; erlang
(setq load-path (cons "/Users/kukhyun/.erl20/lib/tools-2.10/emacs"
                         load-path))
(setq erlang-root-dir "/Users/kukhyun/.erl20/")
(setq exec-path (cons "/usr/local/bin" exec-path))
(require 'erlang-start)
;;(require 'erlang-flymake)  

;; package
(require 'package)
(add-to-list 'package-archives
			 '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
			 '("elpy" . "https://jorgenschaefer.github.io/packages/"))
;; customize
(package-initialize)

;; google-c-style
;;(require 'google-c-style)
;;(add-hook 'c-mode-common-hook 'google-set-c-stye)
;;(add-hook 'c++-mode-common-hook 'google-set-c-style)
;;(add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; python
(add-hook 'python-mode-hook
		  (lambda ()
			(setq indent-tabs-mode nil)
			(setq tab-width 4)
			(setq python-indent 4)))

;; python
(elpy-enable)

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.eex\\'" . web-mode))

(add-hook 'web-mode-hook
		  (lambda ()
			(setq web-mode-markup-indent-offset 2)
			(setq web-mode-css-indent-offset 2)))

(add-hook 'rjsx-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil) 
            (setq js-indent-level 2) 
            (setq js2-strict-missing-semi-warning nil))) 

;; 빠르다
;;(when (version<= "26.0.50" emacs-version )
;;  (global-display-line-numbers-mode))
;;(setq display-line-numbers "%4d \u2502 ")

;; 느리다
;;(global-linum-mode t)
;;(setq-default truncate-lines t)

;;(defun linum-format-func (line)
;;  (let ((w (length (number-to-string (count-lines (point-min) (point-max))))))
;;     (propertize (format (format "%%%dd " w) line) 'face 'linum)))

;;(setq linum-format 'linum-format-func)
;; use customized linum-format: add a addition space after the line number



;; my color
(require 'color-theme)
(load-file "~/.emacs.d/errai-theme.el")
(load-file "~/.emacs.d/errai2-theme.el")
(errai2-theme)
(add-hook 'erlang-mode-hook 'errai2-theme)
(add-hook 'elixir-mode-hook 'errai2-theme)
(add-hook 'elixir-mode-hook 'alchemist-mode)

(add-hook 'erlang-mode-hook
		  (lambda ()
			(setq indent-tabs-mode nil)))

(add-hook 'elixir-mode-hook
		  (lambda ()
			(setq indent-tabs-mode nil)))

;; moe-theme
(require 'powerline)
(powerline-default-theme)
;;(require 'moe-theme)
;;(powerline-moe-theme)
;;(setq moe-light-pure-white-background-in-terminal t)
;;(moe-dark)

;; company-mode
(add-hook 'after-init-hook 'global-company-mode)

;;(ujelly)

;;(setq neo-theme 'ascii)
;;(add-to-list 'load-path "/some/path/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(global-set-key (kbd "C-x <left>")  'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <up>")    'windmove-up)
(global-set-key (kbd "C-x <down>")  'windmove-down)


(save-place-mode 1) 

(require 'projectile)
(setq projectile-enable-caching t)
(setq projectile-globally-ignored-directories (append '("node_modules" ".svn") projectile-globally-ignored-directories))
(projectile-mode t)
;; Show projectile lists by most recently active
(setq projectile-sort-order (quote recently-active))

(setq ido-decorations (quote ("\n↪ "     "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))


;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(linum ((t (:inherit (shadow default) :background "black" :foreground "#666")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("53a9ec5700cf2bb2f7059a584c12a5fdc89f7811530294f9eaf92db526a9fb5f" default)))
 '(package-selected-packages
   (quote
    (go-mode elm-mode rust-mode kotlin-mode rjsx-mode ag ujelly-theme projectile google-c-style web-mode markdown-mode alchemist magit elpy powerline neotree color-theme))))

