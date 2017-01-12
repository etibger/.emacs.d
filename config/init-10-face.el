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

;; == Set custom faces ==
;; increase default size
(custom-set-faces
'(default ((t (:inherit nil :stipple nil :background "#002b36" :foreground "#839496" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 136 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))
;; change the region color to something which is visible for solarized
(custom-set-faces '(region ((t (:background "#93a1a1" :foreground "DarkOrange3" :inverse-video t)))))
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
