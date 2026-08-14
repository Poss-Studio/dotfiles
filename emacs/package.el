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
(use-package cmake-mode
  :ensure t)
(use-package eglot
  :hook ((c-mode c++-mode rust-mode typescript-mode cmake-mode) . eglot-ensure)
  :config
  (setq eglot-extend-to-xref t)
)
(require 'emms-setup)
(emms-all)
(setq emms-player-list '(emms-player-mpv))
(setq emms-source-file-default-directory "~/Music/")
(use-package corfu
  :ensure t
  :custom
  (corfu-cycle t)
  (corfu-auto t)
  (corfu-auto-delay 0)
  (corfu-auto-prefix 2)
  :init
  (global-corfu-mode))
(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless flex))
  (completion-category-overrides '((eglot (styles . (orderless flex))))))
