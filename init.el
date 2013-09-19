(setq my-user-emacs-directory user-emacs-directory)

(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

(add-to-list 'load-path my-user-emacs-directory)
(add-to-list 'load-path (expand-file-name "config" my-user-emacs-directory))

(setq custom-file (expand-file-name "config/custom.el" my-user-emacs-directory))
(unless (not (file-exists-p custom-file))
  (load custom-file))

(fset 'yes-or-no-p 'y-or-n-p)
(xterm-mouse-mode t)

(require 'init-functions)
(require 'init-packages)
(require 'init-el-get)
(require 'init-editor)
(require 'init-evil)
(require 'init-auto-complete)
(require 'init-projectile)
(require 'init-helm)
(require 'init-ido)
(require 'init-git)
(require 'init-vim)
(require 'init-markdown)
(require 'init-bindings)
(require 'init-flycheck)
(require 'init-eyecandy)

;;; (unload-feature 'foo)
