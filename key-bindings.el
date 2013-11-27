;; realy Quit Emacs
(global-set-key (kbd "C-x r q") 'save-buffers-kill-terminal)
(global-set-key (kbd "C-x C-c") 'delete-frame)

(global-set-key (kbd "C-.") 'hippie-expand)
(global-set-key (kbd "C-,") 'completion-at-point)
(global-set-key (kbd "C-<tab>") 'completion-at-point)


;; SMEX

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; old M-X
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; expand region
(global-set-key (kbd "C-'") 'er/expand-region)


(provide 'key-bindings)
