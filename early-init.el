(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("elpa" . "https://elpa.gnu.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")))

;; Disable package.el in favor of straight.el
(setq package-enable-at-startup nil)
