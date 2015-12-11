;; default 
(setq default-tab-width 4)
(setq scroll-step 1)
(setq hscroll-step 1)
(setq inhibit-startup-message t)

(menu-bar-mode -1)
;; erlang
(setq load-path (cons "/usr/local/lib/erlang/lib/tools-2.8.1/emacs"
                         load-path))
(setq erlang-root-dir "/usr/local/")
(setq exec-path (cons "/usr/local/bin" exec-path))
(require 'erlang-start)
(require 'erlang-flymake)  
;; package
(require 'package)
(add-to-list 'package-archives
        '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; customize
(package-initialize)
;; my color
(require 'color-theme)
(load-file "~/.emacs.d/errai-theme.el")
(load-file "~/.emacs.d/errai2-theme.el")
(errai-theme)
(add-hook 'erlang-mode-hook 'errai-theme)
(add-hook 'elixir-mode-hook 'errai2-theme)
(add-hook 'elixir-mode-hook 'alchemist-mode)

;; company-mode
(add-hook 'after-init-hook 'global-company-mode)

;;(ujelly)

;;(setq neo-theme 'ascii)
(add-to-list 'load-path "/some/path/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(global-set-key (kbd "C-x <left>")  'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <up>")    'windmove-up)
(global-set-key (kbd "C-x <down>")  'windmove-down)

(setq linum-format "%d ")
;;(global-linum-mode 1)

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
