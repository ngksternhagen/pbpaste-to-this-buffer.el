(defun append-string-to-buffer (string buffer)
  "Append STRING to the end of BUFFER."
  (with-current-buffer buffer
    (save-excursion
      (goto-char (point-max))
      (insert string))))

(defun pbpaste-to-this-buffer ()
  "paste to the current buffer using pbpaste"
  (interactive)
  (append-string-to-buffer (shell-command-to-string "pbpaste") (current-buffer)))
