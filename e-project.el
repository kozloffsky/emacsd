;; Project management module for emacs

(defun e-project-create (name)
  ;find path of current buffer				       
  (let ((current-path 
	 (file-name-directory (buffer-file-name))))
    (read-from-minibuffer 
     "Enter project path: "
     current-path)))

(provide e-project)

(e-project-create "test")


