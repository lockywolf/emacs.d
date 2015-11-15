;; Config file directory
(let ((default-directory user-emacs-directory))
  (setq rc-dir-path (expand-file-name "rc.d")
        home-site-lisp-path (expand-file-name "site-lisp")))

;; Add directories to load path
(dolist (name '(rc-dir-path home-site-lisp-path))
  (add-to-list 'load-path (eval name)))

;; Custom file
(setq custom-file (expand-file-name "init-custom.el" user-emacs-directory))
(load custom-file 'noerror)

;; (require 'package)
;; (add-to-list 'package-archives
;;              '("melpa" . "http://melpa.org/packages/"))


;; Utilities for config file
(require 'rc-utils)

;; Package.el
(require 'rc-packages)

;; Other rc files
(require 'rc-look-and-feel)
(require 'rc-tramp)
(require 'rc-ido)
(require 'rc-ediff)
(require 'rc-uniquify)
(require 'rc-c)
(require 'rc-erc)

;; Additional packages
(require 'python)


;; Additional config
;; Indent
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)

;; Enable narrow-to-region
(put 'narrow-to-region 'disabled nil)

;; Dired customization
(put 'dired-find-alternate-file 'disabled nil)
(setq dired-dwim-target t)

