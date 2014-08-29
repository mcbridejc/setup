; Just assume all .h files are C++
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(c-add-style "micasense"
	     '("stroustrup"
	       (indent-tabs-mode . nil)    ; use spaces rather than tabs
               (c-basic-offset . 3)        ; indentation offset
               ))

(defun my-c++-mode-hook()
  (c-set-style "micasense")
  (auto-fill-mode)
  (c-toggle-auto-hungry-state 1))

(add-hook 'c++-mode-hook 'my-c++-mode-hook)

;; Add shortcut for quick switching between cpp and header file
(add-hook 'c++-mode-hook
  (lambda() 
    (local-set-key  (kbd "C-c o") 'ff-find-other-file)))
