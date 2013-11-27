(load-file ".emacs.d/site-lisp/cedet/cedet-devel-load.el")

(semantic-mode 1)

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
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
;nothing to load yet
(load custom-file)

; set up current user settings
(setq user-settings-dir
      (concat user-emacs-directory "users/" user-login-name))

(add-to-list 'load-path user-settings-dir)

;;Add external projects to load path
(dolist (project (directory-files site-lisp-dir t "\\w+"))
  (when (file-directory-p project)
    (add-to-list 'load-path project)))

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
     cider-tracing
     auto-complete)))
  

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

(require 'key-bindings)

(require 'expand-region)


(require 'auto-complete-config)
(ac-config-default)
(setq-default ac-sources '(ac-source-semantic-raw))

