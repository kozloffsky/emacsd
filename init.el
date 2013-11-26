;;; IDO MODE
(ido-mode t)
(setq ido-enable-flex-matching t)

;; Visual enhance
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; No splash screen
(setq inhibit-startup-message t)

;Set path for dependencies
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

;; Set up load path
(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path site-lisp-dir)



(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Key Mappings
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-x C-b") 'ibuffer)



