; Install straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

; Install 'use-package with straight.el
(straight-use-package 'use-package)
; Make calls to 'use-package become 'straight-use-package
(setq straight-use-package-by-default t)
; Finaliza 'use-package and straight.el integration. This allows us
; to use 'use-package with straight.el without requiring :straight t option.
(use-package straight
             :custom (straight-use-package-by-default t))
; Make sure that native compilation sends the compiled files to the right directory
; TODO: Figure out why this doesn't work
;(add-to-list 'native-comp-eln-load-path (expand-file-name "eln-cache/" user-emacs-directory))


(setq-default
  ; Prefers spaces over tabs, tabs are evil
  indent-tabs-mode nil
  ; Set width for tabs
  tab-width 2
  ; Prefers the newest version of a file
  load-prefer-newer t
  ; Set the full name of the user
  user-full-name "Alejandro Sánchez Medina"
  ; Set the email address of the user
  user-mail-address "alejandrosanchzmedina@gmail.com"
  ; The confirmation string when exiting Emacs
  confirm-kill-emacs 'y-or-n-p)
 
;; Enable the following minor modes globally
 
; Show the column number
(column-number-mode 1)
; Display time in the mode-line
(display-time-mode 1)
; Replace yes/no prompts with y/n
(fset 'yes-or-no-p 'y-or-n-p)
; Highlight current line
(global-hl-line-mode)
; Show the matching set of parentheses
(show-paren-mode 1)
; Display battery percentage
(display-battery-mode 1)

; Set external file created by Custom
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)
