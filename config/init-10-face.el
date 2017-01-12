;;; init-10-face.el --- Customize the look of emacs

;; Copyright (C) 2016 Gregory J Stein

;; Author: Gregory J Stein <gregory.j.stein@gmail.com>
;; Maintainer: Gregory J Stein <gregory.j.stein@gmail.com>
;; Created: 20 Aug 2015

;; Keywords: configuration, zenburn
;; Homepage: https://github.com/gjstein/emacs.d
;; License: GNU General Public License (see init.el for details)

;;; Commentary:
;; Zenburn theme; default font is set to 'monaco'

;;; Code:
(require 'use-package)

;; Splash Screen to Org-mode
(setq inhibit-splash-screen t
      initial-scratch-message nil
      initial-major-mode 'markdown-mode)

;; == Load Custom Theme ==

;;; Zenburn
;;(use-package zenburn-theme
;;  :ensure t
;;  :config (load-theme 'zenburn t)
;;  )

;;; Solarized
;; (use-package color-theme :ensure t)
;; (use-package color-theme-solarized
;;   :ensure t
;;   :init (load-theme 'solarized t)
;;  )
;; (use-package solarized-theme
;;   :ensure t
;;   :init (load-theme 'solarized-dark t)
;;   )

;; Set default fill column
(setq-default fill-column 100)

;; quiet, please! No dinging!
;(setq visible-bell t)
(setq visible-bell nil) ;; The default
(setq ring-bell-function 'ignore)

;; Disable menu bars, etc.
(if window-system (scroll-bar-mode -1))
(tool-bar-mode -1)
(menu-bar-mode -1)

;; No Backup Files
(setq make-backup-files nil)

;;; init-10-face.el ends here
