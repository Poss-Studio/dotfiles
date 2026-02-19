(use-package python-mode
  :ensure t)
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
  (nerd-icons-font-family "Cascadia Code NF")
  )
(use-package typescript-mode
  :ensure t)
