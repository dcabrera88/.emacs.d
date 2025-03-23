
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file :no-error-if-file-is-missing)

;;; Set up the package manager

(require 'package)
(package-initialize)
(when (< emacs-major-version 29)
  (unless (package-installed-p 'use-package)
    (unless package-archive-contents
      (package-refresh-contents))
    (package-install 'use-package)))

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; Add local config path
(add-to-list 'load-path "~/.emacs.d/custom/")

(require 'setup-appearance)
(require 'setup-org)
(require 'setup-general)

