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

;; keep emacs custom-settings in separate file
;;(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
;nothing to load yet
;(load custom-file)

;Set up appearance
(require 'appearance)

(require 'setup-package)

(defun init--install-packages ()
  (packages-install
   '(magit
     move-text
     god-mode
     gist
     htmlize
     visual-regexp
     flycheck
     css-eldoc
     yasnippet
     ido-vertical-mode
     ido-at-point
     simple-httpd
     nodejs-repl
     restclient
     highlight-escape-sequences
     whitespace-cleanup-mode
     elisp-slime-nav
     git-commit-mode
     gitconfig-mode
     gitignore-mode
     smex
     clojure-mode
     cider
     cider-tracing)))
  

(condition-case nil
    (init--install-packages)
  (error
   (package-refresh-contents)
   (init--install-packages)))


(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Key Mappings
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-x C-b") 'ibuffer)


;; god-mode
(require 'god-mode)
(global-set-key (kbd "<escape>") 'god-local-mode)

;smex
(smex-initialize)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("c03d60937e814932cd707a487676875457e0b564a615c1edfd453f23b06fe879" "9527feeeec43970b1d725bdc04e97eb2b03b15be982ac50089ad223d3c6f2920" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
