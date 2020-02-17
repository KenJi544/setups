;; -*- mode: elisp -*-

;; Disable the splash screen (to enable it agin, replace the t with 0)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  ;;(add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;;;;Org mode configuration
;; Enable Org mode
;; (require 'org)
;; Make Org mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen
(setq load-path (cons "~/Build/Emacs/org-mode/lisp" load-path))
(setq load-path (cons "~/Build/Emacs/org-mode/contrib/lisp"
load-path))

(require 'org-install)

(add-to-list 'load-path "~/.config/emacs/evil")
(require 'evil)
(evil-mode 1)

(setq org-todo-keywords
  '((sequence "TODO" "WIP" "WAITING" "DONE")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/work_org/openlm.org" "~/agenda.org")))
 '(package-selected-packages (quote (dockerfile-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; Add agenda shortcut
(global-set-key "\C-ca" 'org-agenda)

;; Add line numbers
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; Docker-mode
;;(add-to-list 'load-path "~/.config/emacs/dockerfile-mode/")
(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))
