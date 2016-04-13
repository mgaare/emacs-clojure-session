(defun package-require (pkg)
  "Install a package only if it's not already installed."
  (when (not (package-installed-p pkg))
    (package-install pkg)))

;; set ctrl-w to kill word; rebind ctrl-x ctrl-k to kill region
;; From Steve Yegge's emacs guide, backward-kill-word is too useful
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; turn off scroll bars
(scroll-bar-mode -1)



;;; folding

(package-require 'fold-dwim)
(require 'fold-dwim)

(global-set-key [(C tab)] 'fold-dwim-toggle)
