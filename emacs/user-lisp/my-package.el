;; -*- lexical-binding: t; -*-
(use-package rust-mode
  :ensure t)
(use-package doom-modeline
 :ensure t
 :init (doom-modeline-mode 1))
(display-time-mode 1)
(use-package nerd-icons
  :custom
  (nerd-icons-font-family "Meslolgs Nerd font mono")
  )
(use-package typescript-mode
  :ensure t)
(use-package nerd-icons-dired
  :ensure t
  :hook
  (dired-mode . nerd-icons-dired-mode))
;; (use-package eglot
;;   :hook ((python-mode asm-mode c-mode c++-mode rust-mode haskell-mode) . eglot-ensure)
;;   :config
;;   (setq eglot-extend-to-xref t)
;; )
;; (use-package corfu
;;   :ensure t
;;   :init
;;   (global-corfu-mode)
;;   :custom
;;   (corfu-cycle t)
;;   (corfu-auto-prefix 3)
;;   (corfu-auto t)
;;   )
(provide 'my-package)
(use-package gruber-darker-theme
  :ensure t
  :config(load-theme 'gruber-darker t))
(use-package markdown-mode
  :ensure t)
(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode 1))
(eval-and-compile
  (add-to-list 'load-path "~/.config/emacs/site-lisp/lsp-bridge")
  (add-to-list 'load-path "~/.config/emacs/site-lisp/acm-terminal"))
(use-package lsp-bridge
  :init
  (setq lsp-bridge-python-command "/usr/bin/python3")
  :config
  (global-lsp-bridge-mode)
  (with-eval-after-load 'acm
    (require 'acm-terminal)))
(require 'acm-terminal)
(setq lsp-bridge-c-lsp-server "clangd")
