;;; init-20-nav-interface.el --- Customize emacs interface (mostly Counsel)

;; Copyright (C) 2016 Gregory J Stein

;; Author: Gregory J Stein <gregory.j.stein@gmail.com>
;; Maintainer: Gregory J Stein <gregory.j.stein@gmail.com>
;; Created: 20 Aug 2015

;; Keywords: configuration, helm
;; Homepage: https://github.com/gjstein/emacs.d
;; License: GNU General Public License (see init.el for details)

;;; Commentary:
;; Mostly configures helm-mode, which is great for getting around
;; For more on Helm, see:
;;     http://tuhdo.github.io/helm-intro.html
;;     https://github.com/emacs-helm/helm/wiki

;;; Code:
(require 'use-package)


;; == Evil Mode ==
(use-package evil-leader
  :ensure t
  :init
  (global-evil-leader-mode)
  (evil-leader/set-leader ",")
  (evil-leader/set-key "c" 'org-capture)
  (evil-leader/set-key "a" 'org-agenda)
  (evil-leader/set-key "g" 'magit-status)
  )

(use-package evil
  :ensure t
  :init
  (evil-mode 1)
  ;; (define-key evil-ex-map "b " 'helm-mini)
  (define-key evil-ex-map "e" 'counsel-find-file)
  ;; Resolve sentence jumping issue
  (setq sentence-end-double-space nil)
  )

;; == Powerline ==
(use-package powerline
  :ensure t
  :config (powerline-default-theme)
  )

;; == Load custom theme ==
(use-package solarized-theme
  :ensure t
  :config (load-theme 'solarized-dark t)
  )

;; == Customize powerline ==
(use-package airline-themes
  :ensure t
  :config
  (load-theme 'airline-light t)
  (setq airline-display-directory nil)
  (setq airline-utf-glyph-branch 57504)
  (setq airline-utf-glyph-linenumber 57505)
  (setq airline-utf-glyph-readonly 57506)
  (setq airline-utf-glyph-separator-left 57520)
  (setq airline-utf-glyph-separator-right 57522)
  (setq airline-utf-glyph-subseparator-left 57521)
  (setq airline-utf-glyph-subseparator-right 57523)
  )

;; == Counsel Mode ==
(use-package counsel
  :ensure t
  :init

  (global-set-key (kbd "C-s") 'swiper)
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (global-set-key (kbd "<f1> f") 'counsel-describe-function)
  (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
  (global-set-key (kbd "<f1> l") 'counsel-find-library)
  (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
  (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
  (global-set-key (kbd "C-c g") 'counsel-git)
  (global-set-key (kbd "C-c j") 'counsel-git-grep)
  (global-set-key (kbd "C-c k") 'counsel-ag)
  (global-set-key (kbd "C-x l") 'counsel-locate)
  (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)

  (global-set-key (kbd "C-c C-r") 'ivy-resume)
  :config
  (require 'ivy)
  )

;;; init-20-nav-interface.el ends here
