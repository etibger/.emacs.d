;;; init-40-coding-gen.el --- Code for general programming

;; Copyright (C) 2016 Tibor Gerlai

;; Author: Tibor Gerlai <tibi.gerlai@gmail.com>
;; Maintainer: Tibor Gerlai <tibi.gerlai@gmail.com>
;; Created: 18 Jan 2017

;; Keywords:
;; Homepage:
;; License: GNU General Public License (see init.el for details)

;;; Commentary:
;;; Code:
(defun toggle-comment-on-line ()
  "Comment or uncomment current line."
  (interactive)
  (comment-or-uncomment-region (line-beginning-position) (line-end-position)))

(global-set-key (kbd "C-x C-;") 'toggle-comment-on-line)
(provide 'init-100-custom-func)
;;; init-100-custom-func.el ends here
