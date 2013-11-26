;;; IDO MODE
(ido-mode t)
(setq ido-enable-flex-matching t)

;; Visual enhance
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))


(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Key Mappings
(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-x C-b") 'ibuffer)

