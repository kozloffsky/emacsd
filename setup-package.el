(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(unless (file-exists-p "~/.emacs.d/elpa/archives/melpa")
  (package-refresh-contents))


(defun packages-install (packages)
  (mapcar (lambda (package)
	   (when (not (package-installed-p package))
	     (package-install package)))
	  packages)
  (delete-other-windows))

;; installation of packages

(defun require-package (package &optional min-version no-refresh)
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contants) no-refresh)
	(package-install package)
      (progn
	(package-refresh-contents)
	(require-package package min-version t)))))

(provide 'setup-package)
