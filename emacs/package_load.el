(use-package rust-mode
  :ensure t)
(use-package doom-modeline
 :ensure t
 :init (doom-modeline-mode 1))
(display-time-mode 1)
(use-package nerd-icons
  :custom
  ;; The Nerd Font you want to use in GUI
  ;; "Symbols Nerd Font Mono" is the default and is recommended
  ;; but you can use any other Nerd Font if you want
  (nerd-icons-font-family "Fira Code Nerd font mono")
  )
(use-package typescript-mode
  :ensure t)
(use-package nerd-icons-dired
  :ensure t
  :hook
  (dired-mode . nerd-icons-dired-mode))
(use-package cmake-mode
  :ensure t)
(use-package company
  :ensure t)
