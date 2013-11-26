(setq visible-bell t
      font-lock-maximum-decoration t
      colos-theme-is-global t
      truncate-partial-width-windows nil)

;; Highloight current line
(global-hl-line-mode 1)

;; set custom theme path
(setq custom-theme-directory (concat user-emacs-directory "themes"))

(dolist
    (path (directory-files custom-theme-directory t "\\w+"))
  (when (file-directory-p path)
    (add-to-list 'custom-theme-load-path path)))

;; Default theme

(defun use-presentation-theme ()
  (interactive)
  (disable-theme 'default-black)
  (load-theme 'prez))

(defun use-default-theme ()
  (interactive)
  (disable-theme 'prez)
  (load-theme 'default-black))

(use-default-theme)

;; Don`t defer screen updates
(setq redisplay-dont-pause t)
