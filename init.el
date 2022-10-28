;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

;; Hide bars
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; Tweaks
(show-paren-mode 1)
(setq-default show-trailing-whitespace t)
(global-unset-key (kbd "C-z")) ;; stop freezing on me
(setq shell-file-name "bash")
(setq shell-command-switch "-ic")

;; Compilation buffer ansi terminal colors
(add-hook 'compilation-filter-hook 'ansi-color-compilation-filter)

;; Relative line numbers
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)

;; Theme
(set-frame-font "JetBrains Mono 12" nil t)
(load-theme 'boron t)

;; multiple-cursors
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; AUCTeX
(setq TeX-auto-save t)
(setq TeX-parse-self t)

;; backup and autosave in one place. flat, no tree structure
(setq temporary-file-directory "~/.emacs.d/tmp")
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))
(setq auto-save-file-name-transforms `((".*" "~/.emacs.d/saves" t)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("00b463c48742afe509ae7d1dcfce09471f7203e13a118f1256b208017a978b4e" default))
 '(package-selected-packages
   '(cherry-blossom-theme boron-theme clang-format multiple-cursors auctex magit rustic lsp-mode gruber-darker-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
