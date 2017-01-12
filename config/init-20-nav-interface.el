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
  :config (powerline-center-evil-theme)
  )

;; (use-package solarized-theme
;;   :ensure t
;;   :config (load-theme 'solarized-dark)
;;   )
;; (use-package airline-themes
;;   :ensure t
;;   :config (load-theme 'airline-light)
;;   )

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
;; == Helm Mode ==
;; (use-package helm
;;   :ensure t
;;   :diminish helm-mode
;;   :init

;;   ;; Changes the helm prefix key
;;   (global-set-key (kbd "C-c h") 'helm-command-prefix)
;;   (global-unset-key (kbd "C-x c"))

;;   ;; Supress warning
;;   (setq ad-redefinition-action 'accept)

;;   :config

;;   (require 'helm)
;;   (require 'helm-files)
;;   (require 'helm-config) ; Necessary for helm-mode

;;   ;; Additional key bindings
;;   (bind-key "<tab>" 'helm-execute-persistent-action helm-map)
;;   (bind-key [escape] 'helm-keyboard-quit helm-map)
;;   (bind-key "C-l" (kbd "RET") helm-map)

;;   (setq helm-split-window-in-side-p           t
;; 	helm-move-to-line-cycle-in-source     t
;; 	helm-ff-search-library-in-sexp        t
;; 	helm-scroll-amount                    8
;; 	helm-M-x-fuzzy-match                  t
;; 	helm-ff-file-name-history-use-recentf t)


;;   (if (string-equal system-type "darwin")
;;       ;; This requires the 'ggrep' command to be installed for OSX
;;       (setq helm-grep-default-command
;; 	    "ggrep --color=always -d skip %e -n%cH -e %p %f"
;; 	    helm-grep-default-recurse-command
;; 	    "ggrep --color=always -d recurse %e -n%cH -e %p %f"))
;;   (if (string-equal system-type "gnu/linux")
;;       (setq helm-grep-default-command
;; 	    "grep --color=always -d skip %e -n%cH -e %p %f"
;; 	    helm-grep-default-recurse-command
;; 	    "grep --color=always -d recurse %e -n%cH -e %p %f"))

;;   (helm-mode 1)

;;   (defun spacemacs//hide-cursor-in-helm-buffer ()
;;     "Hide the cursor in helm buffers."
;;     (with-helm-buffer
;;       (setq cursor-in-non-selected-windows nil)))
;;   (add-hook 'helm-after-initialize-hook 'spacemacs//hide-cursor-in-helm-buffer)

;;   :bind (("C-x b" . helm-mini)
;; 	 ("C-x C-f" . helm-find-files)
;; 	 ("M-x" . helm-M-x)
;; 	 :map helm-map
;; 	 ("C-i" . helm-execute-persistent-action)
;; 	 ("C-z" . helm-select-action)
;; 	 ("C-j" . helm-next-line)
;; 	 ("C-k" . helm-previous-line)
;; 	 ("C-h" . helm-next-source)
;; 	 ("C-S-h" . describe-key)
;; 	 :map helm-find-files-map
;; 	 ("C-l" . helm-execute-persistent-action)
;; 	 ("C-h" . helm-find-files-up-one-level)
;; 	 :map helm-read-file-map
;; 	 ("C-l" . helm-execute-persistent-action)
;; 	 ("C-h" . helm-find-files-up-one-level)
;; 	 )
;;   )



;;; init-20-nav-interface.el ends here
