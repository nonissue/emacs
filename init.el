;; Package settings
(require 'package)

(setq package-archives '(("gnu"          . "http://elpa.gnu.org/packages/")
                         ("melpa"        . "https://melpa.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/packages/")
                         ("org"          . "http://orgmode.org/elpa/")))

(setq package-archive-priorities
        '(("org"          . 30)
          ("melpa-stable" . 20)
          ("gnu"          . 10)
          ("melpa"        . 0)))

(setq package-menu-hide-low-priority t)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package use-package)
(use-package bind-key)

(setq use-package-always-ensure t)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; load other settings
(add-to-list 'load-path "~/.emacs.d/settings")

(unless (boundp 'window-system)
        (defvar window-system (framep-on-display)))

(require 'sane-defaults)
(require 'gui)
(require 'key-bindings)
(require 'defuns)
(require 'skunkworks) ;; stuff in progress im playing with
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ivy-mode t)
 '(package-selected-packages
   (quote
    (lua-mode counsel swiper spaceline spaceline-config ivy key-chord use-package heroku-theme heroku doom-themes))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
