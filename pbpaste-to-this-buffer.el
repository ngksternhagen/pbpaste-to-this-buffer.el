;;; pbpaste-to-this-buffer.el --- paste to the current buffer using pbpaste

;;; Version: 0.0.0
;;; Author: NGK Sternhagen <sternhagen@protonmail.ch>
;;; Keywords: pbpaste
;;; Created: 05 January 2017

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

;; TODO handle case where current buffer is remote, such as TRAMP, ssh, etc

(provide 'pbpaste-to-this-buffer)

;;; pbpaste-to-this-buffer.el ends here
