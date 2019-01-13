(add-to-list 'load-path "~/Documents/from-retina/Documents/10gen/dev/kernel-tools/codereview")

(require 'vc-hg)
(require 'vc-git)
(require 'vc-svn)
(require 'git-gutter-fringe)
(require 'cmake-mode)
(require 'markdown-mode)
(require 'clang-format)
(require 'xgen-cru)

(load-theme 'solarized-dark t)
(add-to-list 'default-frame-alist '(font . "Inconsolata-14"))

(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

(global-linum-mode t)

(setq prelude-clean-whitespace-on-save nil)

(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'after-init-hook #'global-flyspell-mode)

(setq whitespace-line-column 100) ;; limit line length

;; (setq uniquify-buffer-name-style 'post-forward)

(use-package company-lsp
  :ensure t
  :config
  (require 'company-lsp)
  (push 'company-lsp company-backends)
  (add-hook 'after-init-hook 'global-company-mode))

(use-package lsp-mode
  :ensure t
  :config
  (require 'lsp-mode))

(require 'lsp-clients)

(use-package lsp-ui
  :ensure t
  :config
  (require 'lsp-ui))

(global-company-mode)

(server-start)
