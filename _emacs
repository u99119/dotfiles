(x-focus-frame nil)
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)

;; .emacs

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; always end a file with a newline
;(setq require-final-newline 'query)

;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)

;; disable splash screen
(setq-default inhibit-splash-screen t)

;;set initial frame geometry
(setq initial-frame-alist '((width . 200) (height . 50)))


(setq load-path
      (cons "/Users/maysingh/c/emacs/site-lisp" load-path))


;;(setq ps-multibyte-buffer ‘bdf-font-except-latin)

;;------------------------------------------------------------------------------

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; File name: ` ~/.emacs '
;;; ---------------------
;;;
;;; Copyright (c) 1997-2002 SuSE Gmbh Nuernberg, Germany.
;;;
;;; Author: Werner Fink, <feedback@suse.de> 1997,98,99,2002
;;; Author: Mayank, 2002 onwards
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Test of Emacs derivates
;;; -----------------------
(if (string-match "XEmacs\\|Lucid" emacs-version)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;; XEmacs
  ;;; ------
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (progn
     (if (file-readable-p "~/.xemacs/init.el")
        (load "~/.xemacs/init.el" nil t))
  )
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;; GNU-Emacs
  ;;; ---------
  ;;; load ~/.gnu-emacs or, if not exists /etc/skel/.gnu-emacs
  ;;; For a description and the settings see /etc/skel/.gnu-emacs
  ;;;   ... for your private ~/.gnu-emacs your are on your one.
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (if (file-readable-p "~/.gnu-emacs")
      (load "~/.gnu-emacs" nil t)
    (if (file-readable-p "/etc/skel/.gnu-emacs")
        (load "/etc/skel/.gnu-emacs" nil t)))

  ;; Custum Settings
  ;; ===============
  ;; To avoid any trouble with the customization system of GNU emacs
  ;; we set the default file ~/.gnu-emacs-custom
  (setq custom-file "~/.gnu-emacs-custom")
  (load "~/.gnu-emacs-custom" t t)
;;;
)
;;;

;;
;; Finally look for .customs.emacs file and load it if found
;; (if "~/.customs.emacs" 
;;     (load "~/.customs.emacs" t t))

;; scroll single line
(setq scroll-step 1)

;; Do-Not-Show matched parentheses highlighted
;;(setq-default show-paren-mode nil)

;; I want parenthesis matching
(show-paren-mode 1)

;; Show Column number
(column-number-mode 1)

;; Set the fill column
(setq-default fill-column 100)

;; I do not want a scroll bar
(scroll-bar-mode -1)


;; show time on display bar
(load "time" t t)
(display-time)

;; Fonts are automatically highlighted.  For more information
;; type M-x describe-mode font-lock-mode 
(global-font-lock-mode t)

;; Prompt mesg before QUITING
;;(setq kill-emacs-query-functions
;;  (list (function (lambda ()
;;                    (ding)
;;                    (y-or-n-p "Really quit......? ")))))

;; Some color stuff if you want it.
;; (cond (window-system
;;        (setq hilit-mode-enable-list  '(not text-mode)
;;              hilit-background-mode   'light
;;              hilit-inhibit-hooks     nil
;;              hilit-inhibit-rebinding nil)
;; 
;;        (require 'hilit19)
;;        ))

;; To remove the menu bar (file edit etc)
(menu-bar-mode -1)

;; To remove the Tool bar (cut copy paste etc)
(tool-bar-mode -1)

;; convert tabs to spaces
(setq-default indent-tabs-mode nil)

;; set various colors
(defun lighter () 
  " lighten background"
  (interactive)
  (custom-set-faces
   '(fringe ((((class color) (background light)) (:background "lavender" :foreground "black"))))
   '(mode-line ((((type x w32 mac) (class color)) (:background "navy blue" :foreground "beige" :box (:line-width -1 :style released-button) :family "helv"))))
   )
  ;; (set-background-color "lemon chiffon")
  ;; (set-background-color "honeydew")
  (set-background-color "mint cream")
  ;; (set-background-color "beige")
  ;; (set-background-color "bisque2")
  ;; (set-background-color "snow")
  ;; (set-background-color "tan2")
  ;; (set-background-color "moccasin")
  (set-foreground-color "navyblue") 
  (set-cursor-color "black")
  (set-border-color "red")
)

(defun darker () 
  " darken background"
  (interactive)
;;  (set-background-color "#2A0000")  ;; cool dark red
;;  (set-background-color "#002F05")  ;; solaris green
;;  (set-background-color "#00003A")  ;; cool dark blue
  (set-background-color "#000000")  ;; black
  (custom-set-faces
   '(fringe ((((class color) (background dark)) (:background "grey10" :foreground "black"))))
   '(mode-line ((((type x w32 mac) (class color)) (:background "navy blue" :foreground "beige" :box (:line-width -1 :style released-button) :family "helv"))))
   )
  (set-foreground-color "#FFFFFF") 
  (set-cursor-color "white")
  (set-border-color "black")
)
(darker)

;; set various highlight colors
;; set various highlight colors
(defface hi-thistle
  '((((background dark)) (:background "thistle" :foreground "black"))
    (t (:background "thistle")))
  "Face for hi-lock mode."
  :group 'hi-lock-faces)

(defface hi-cyan-b
  '((((background dark)) (:foreground "cyan" :bold t))
   )
  "Face for hi-lock mode."
  :group 'hi-lock-faces)

(defface hi-yellow-b
  '((((background dark)) (:foreground "yellow" :bold t))
   )
  "Face for hi-lock mode."
  :group 'hi-lock-faces)

(defface hi-gold-b
  '((((background dark)) (:foreground "DarkGoldenrod1" :bold t))
   )
  "Face for hi-lock mode."
  :group 'hi-lock-faces)

(defface hi-olive-b
  '((((background dark)) (:foreground "OliveDrab1" :bold t))
   )
  "Face for hi-lock mode."
  :group 'hi-lock-faces)

(defface hi-magenta-b
  '((((background dark)) (:foreground "magenta" :bold t))
   )
  "Face for hi-lock mode."
  :group 'hi-lock-faces)

(defface hi-red
  '((((background dark)) (:background "orange red" :foreground "black"))
    (t (:background "orange red")))
  "Face for hi-lock mode."
  :group 'hi-lock-faces)

(defface hi-yellow1
  '((((background dark)) (:background "lemon chiffon" :foreground "black"))
    (t (:background "lemon chiffon")))
  "Face for hi-lock mode."
  :group 'hi-lock-faces)
(defface hi-yellow2
  '((((background dark)) (:background "khaki1" :foreground "black"))
    (t (:background "khaki1")))
  "Face for hi-lock mode."
  :group 'hi-lock-faces)
(defface hi-gold
  '((((background dark)) (:background "gold" :foreground "black"))
    (t (:background "gold")))
  "Face for hi-lock mode."
  :group 'hi-lock-faces)
(defface hi-orange
  '((((background dark)) (:background "orange" :foreground "black"))
    (t (:background "orange")))
  "Face for hi-lock mode."
  :group 'hi-lock-faces)
(defface hi-magenta
  '((((background dark)) (:background "magenta" :foreground "black"))
    (t (:background "magenta")))
  "Face for hi-lock mode."
  :group 'hi-lock-faces)

(defface hi-cyan
  '((((background dark)) (:background "cyan" :foreground "black"))
    (t (:background "cyan")))
  "Face for hi-lock mode."
  :group 'hi-lock-faces)
(defface hi-cyan1
  '((((background dark)) (:background "pale turquoise" :foreground "black"))
    (t (:background "pale turquoise")))
  "Face for hi-lock mode."
  :group 'hi-lock-faces)
(defface hi-cyan2
  '((((background dark)) (:background "aquamarine1" :foreground "black"))
    (t (:background "aquamarine1")))
  "Face for hi-lock mode."
  :group 'hi-lock-faces)

(defface hi-pink1
  '((((background dark)) (:background "misty rose" :foreground "black"))
    (t (:background "misty rose")))
  "Face for hi-lock mode."
  :group 'hi-lock-faces)
(defface hi-pink2
  '((((background dark)) (:background "pink" :foreground "black"))
    (t (:background "pink")))
  "Face for hi-lock mode."
  :group 'hi-lock-faces)
(defface hi-pink3
  '((((background dark)) (:background "light coral" :foreground "black"))
    (t (:background "light coral")))
  "Face for hi-lock mode."
  :group 'hi-lock-faces)

(defface hi-green1
  '((((background dark)) (:background "DarkOliveGreen1" :foreground "cornsilk"))
    (t (:background "DarkOliveGreen1")))
  "Face for hi-lock mode."
  :group 'hi-lock-faces)
(defface hi-green2
  '((((background dark)) (:background "pale green" :foreground "black"))
    (t (:background "pale green")))
  "Face for hi-lock mode."
  :group 'hi-lock-faces)


;;(set-frame-font "-adobe-courier-bold-r-normal--14-100-100-100-m-90-iso8859-1")
;;(set-frame-font "-adobe-courier-bold-r-normal--12-*-75-75-m-70-iso8859-1")
;;(defun fontify-frame (frame)
;;  (set-frame-parameter frame 'font "-adobe-courier-bold-r-normal--12-*-75-75-m-70-iso8859-1"))

;; Fontify current frame
;;(fontify-frame nil)
;; Fontify any future frames
;;(push 'fontify-frame after-make-frame-functions)



;; set transparency
;; (set-frame-parameter (selected-frame) 'alpha '(90 50))
;; (add-to-list 'default-frame-alist '(alpha 90 50))

;; to toggle transparency C-c t
 (eval-when-compile (require 'cl))
 (defun toggle-transparency ()
   (interactive)
   (if (/=
        (cadr (frame-parameter nil 'alpha))
        100)
       (set-frame-parameter nil 'alpha '(100 100))
     (set-frame-parameter nil 'alpha '(50 50))))
 (global-set-key (kbd "C-c t") 'toggle-transparency)


;; ========== Set title to the current filename ==========
(defun title-set-title ()
   "Set title to current buffer's name"
   (let ((name (format "%s (emacs)" (buffer-name))))
   (modify-frame-parameters (selected-frame) 
      (list (cons `name name)))))

(defun title-set-title ()
 "Set title to current buffer's name"
 (let ((name (format "%s (%s)" (buffer-file-name) (system-name))))
   (modify-frame-parameters (selected-frame) 
                            (list (cons `name name)))))

(defun title-set-title ()
  "Set title to current buffer's name"
  (let ((name (format "%s" (buffer-file-name) )))
    (modify-frame-parameters (selected-frame) 
                             (list (cons `name name)))))

(add-hook `post-command-hook
   (lambda ()
      (title-set-title)))

;; ===== Set the highlight current line minor mode =====
;; In every buffer, the line which contains the cursor will be fully highlighted
;;(global-hl-line-mode 1)
;;(set-face-background 'hl-line "wheat3")

;; sets the fringe color to black. Fringe are the two stripes inside of the left and right border of the frame
(custom-set-faces
'(fringe ((((class color) (background light)) (:background "black" :foreground "white"))))
'(mode-line ((((type x w32 mac) (class color)) (:background "black" :foreground "lightblue" :box (:line-width -1 :style released-button) :family "helv"))))
)

;; sets the fringe color to black. Fringe are the two stripes inside of the left and right border of the frame
;; (custom-set-faces
;; '(fringe ((((class color) (background light)) (:background "black" :foreground "moccasin"))))
;; '(mode-line ((((type x w32 mac) (class color)) (:background "beige" :foreground "navyblue" :box (:line-width -1 :style released-button) :family "helv"))))
;; )


; Update string in the first 8 lines looking like Timestamp: <> or " "
(setq time-stamp-format "%:y-%02m-%02d %02H:%02M:%02S %u %f")
(add-hook 'write-file-hooks 'time-stamp)

(defun timestamp ()
"Insert at point the dummy time stamp string to activate the time stamp facility."
(interactive "*")
(insert "Time-stamp: <>")
(time-stamp)
)

;; fic mode:
;;ms: (require 'fic-mode)
;;ms: (add-hook 'c++-mode-hook 'turn-on-fic-mode)
;;ms: (add-hook 'emacs-lisp-mode-hook 'turn-on-fic-mode)

;; (defun add-something-to-mode-hooks (mode-list something)
;;   "helper function to add a callback to multiple hooks"
;;   (dolist (mode mode-list)
;;     (add-hook (intern (concat (symbol-name mode) "-mode-hook")) something)))

;; (add-something-to-mode-hooks '(c++ tcl emacs-lisp) 'turn-on-fic-mode)




;; User-Defined functions
;; To count number of words in a buffer
(defun wc ()
  "Count the words in the current buffer, show the result in the minibuffer"
  (interactive)          ; *** This is the line that you need to add
  (save-excursion 
    (save-restriction
      (widen)
      (goto-char (point-min))
      (let ((count 0))
      (while (forward-word 1)
	(setq count(1+ count)))
      (message "There are %d words in the buffer" count)))))

(defun mr-customized-faces ()
  "A selection of fonts in black-and-white, suitable for printing with
`ps-print-buffer-with-faces'. Has room for improvement."
  (interactive)
  (custom-set-faces
   '(show-paren-match-face ((t (:bold t))))
   '(show-paren-mismatch-face ((t (:bold t :underline t))))
   '(font-lock-comment-face ((t (:italic t))))
   '(font-lock-string-face ((t (:italic t))))
   '(font-lock-keyword-face ((t (:bold t))))
   '(font-lock-constant-face ((t (:bold t :underline t :italic t))))
   '(font-lock-type-face ((t (:underline t))))
   '(font-lock-variable-name-face ((t (:underline t :italic t))))
   '(font-lock-function-name-face ((t (:bold t :italic t))))
   '(font-lock-builtin-face ((t (:bold t :underline t))))))

;; SMARTER SHORTCUTS -->

;; Enhanced C-x b
(require 'iswitchb)
;; obsolete: (iswitchb-default-keybindings)
(iswitchb-mode)

;; Enable some ADVANCED Commands ;;
(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(custom-set-variables
 '(revert-without-query (quote (""))))

;;desktop start
(custom-set-variables
 ;; '(desktop-enable t nil (desktop)))
 '(save-place t nil (saveplace)))

;;(require 'desktop)
;;(setq desktop-path '("~/.emacs.d/"))
;;(setq desktop-dirname "~/.emacs.d/")

;;(desktop-save-mode 1)
;;(add-hook 'auto-save-hook (lambda () (desktop-save-in-desktop-dir)))

(setq *foo-desktop-dir* (expand-file-name "~/.emacs.d/desktop"))
(setq desktop-dir *foo-desktop-dir*)
(setq desktop-path (list *foo-desktop-dir*))
(desktop-save-mode 1) ;; Switch on desktop.el
(setq *foo-desktop-file* (concat  desktop-dir "/" desktop-base-file-name))
(setq *foo-desktop-lock* (concat desktop-dir "/" desktop-base-lock-name))

(defun desktop-in-use-p ()
  (and (file-exists-p *foo-desktop-file*) (file-exists-p *foo-desktop-lock*)))

(defun autosave-desktop ()
  (if (desktop-in-use-p) (desktop-save-in-desktop-dir)))
;; Can be switched off with (cancel-timer *foo-desktop-saver-timer*)

(add-hook 'after-init-hook
          (lambda ()
            (setq *foo-desktop-saver-timer*
                  (run-with-timer 5 300 'autosave-desktop))))
(add-hook 'desktop-no-desktop-file-hook
          (lambda ()
            (desktop-save-in-desktop-dir)))
;;desktop end

(fset 'read-file
   [return ?\M-x ?r ?e ?v ?e ?r ?t return ?\C-x ?b return down])

;;(global-set-key [3 12] 'goto-line)

;; Alternate Line number mode (Less/vi style)
(require 'linum)
(global-linum-mode 1)

;; TODO: describe
;;(require 'csv-mode)

;; Alternate Line number mode (Less/vi style)
;ms: (require 'rtf-mode)
;ms: (autoload 'rtf-mode "rtf-mode" "RTF mode" t)
;ms: (add-to-list 'auto-mode-alist
;ms:   '("\\.rtf$" . rtf-mode))


;;---> highlighting --->
;; highlight lines containing REGEXs when opening any file *.log
(defun ms-hi-log ()
  "Highlight certain lines "
  (interactive)
  (if (equal "log" (file-name-extension (buffer-file-name)))
      (progn
        ;;(highlight-lines-matching-regexp "ERROR:" 'hi-red-b) 
        (highlight-lines-matching-regexp "ms: " 'hi-red-b)
        (highlight-lines-matching-regexp " unusual] " 'hi-red)
        (highlight-lines-matching-regexp "ADC" 'hi-cyan)
        (highlight-regexp "b>.*<b"  'hi-red)
        (highlight-regexp "dir=uplink"   'hi-red)
        (highlight-regexp "dir=downlink" 'hi-green)
        (highlight-regexp "ruledef:.*"    'hi-yellow1)
        (highlight-regexp "http header.*" 'hi-yellow1)
        (highlight-regexp "CCR.*"                    'hi-cyan1)
        (highlight-regexp "Tx timer started; peer \'minid-gy.*" 'hi-cyan1)
        (highlight-regexp "DCCA charge evaluation.*" 'hi-cyan1)
        (highlight-regexp "quota newly exceeded" 'hi-blue)
        (highlight-regexp "previously exceeded"  'hi-blue)
        (highlight-regexp "tcp ooo.*"  'hi-yellow2)
        (highlight-regexp "TCP .*"  'hi-yellow2)
        (highlight-regexp "charging-action \(.*"  'hi-yellow1)
        (highlight-regexp "teth.*" 'hi-pink1)
        (highlight-regexp "_td.*"  'hi-pink1)
        (highlight-regexp "Teth.*" 'hi-pink1)

        )
    ;; else
    (if (equal "code" (file-name-extension (buffer-file-name)))
        (progn
          (highlight-lines-matching-regexp "done" 'hi-green2)
          (highlight-lines-matching-regexp "todo" 'hi-yellow2)
          (highlight-regexp "search:" 'hi-pink2)
          ))
    ))
(add-hook 'find-file-hook 'ms-hi-log)


(setq phrase-buffer nil)
(defun vjo-forward-current-word-keep-offset ()
  " (Vagn Johansen 1999)"
  (interactive)
  (let ((re-curword) (curword) (offset (point))
		(old-case-fold-search case-fold-search))
	(setq curword (thing-at-point 'symbol))
	;;(unhighlight-regexp phrase-buffer)
	(setq phrase-buffer (setq re-curword (concat "\\<" (thing-at-point 'symbol) "\\>")))
	(highlight-phrase re-curword 'hi-yellow)
	(beginning-of-thing 'symbol)
	(setq offset (- offset (point)))  ; offset from start of symbol/word
	(setq offset (- (length curword) offset)) ; offset from end
	(forward-char)
	(setq case-fold-search nil)
	(if (re-search-forward re-curword nil t)
		(backward-char offset)
	  ;; else
	  (progn (goto-char (point-min))
			 (if (re-search-forward re-curword nil t)
				 (progn (message "Searching from top. %s" (what-line))
						(backward-char offset))
			   ;; else
			   (message "Searching from top: Not found"))
			 ))
	(setq case-fold-search old-case-fold-search)
	))
(defun vjo-backward-current-word-keep-offset ()
  " (Vagn Johansen 2002)"
  (interactive)
  (let ((re-curword) (curword) (offset (point))
		(old-case-fold-search case-fold-search) )
	(setq curword (thing-at-point 'symbol))
	;;(unhighlight-regexp phrase-buffer)
	(setq phrase-buffer (setq re-curword (concat "\\<" (thing-at-point 'symbol) "\\>")))
	(highlight-phrase re-curword 'hi-yellow)
	(beginning-of-thing 'symbol)
	(setq offset (- offset (point)))  ; offset from start of symbol/word
	(setq offset (- (length curword) offset)) ; offset from end
	(forward-char)
	(setq case-fold-search nil)
	(if (re-search-backward re-curword nil t)
		(forward-char offset)
	  ;; else
	  (progn (goto-char (point-max))
			 (if (re-search-backward re-curword nil t)
				 (progn (message "Searching from bottom. %s" (what-line))
						(forward-char offset))
			   ;; else
			   (message "Searching from bottom: Not found"))
			 ))
	(setq case-fold-search old-case-fold-search)
	))
(defun vjo-current-word-keep-offset ()
  " (Vagn Johansen 1999)"
  (interactive)
  (let ((re-curword) (curword) (offset (point))
		(old-case-fold-search case-fold-search))
	(setq curword (thing-at-point 'symbol))
	;;(unhighlight-regexp phrase-buffer)
	(setq phrase-buffer (setq re-curword (concat "\\<" (thing-at-point 'symbol) "\\>")))
	(highlight-phrase re-curword 'hi-green)
	))
(defun vjo-current-word-keep-offset-duplicate ()
  " (Vagn Johansen 1999)"
  (interactive)
  (let ((re-curword) (curword) (offset (point))
		(old-case-fold-search case-fold-search))
	(setq curword (thing-at-point 'symbol))
	;;(unhighlight-regexp phrase-buffer)
	(setq phrase-buffer (setq re-curword (concat "\\<" (thing-at-point 'symbol) "\\>")))
	(highlight-phrase re-curword 'hi-yellow)
	))
(defun vjo-current-word-keep-offset-interactive (color)
  " (Mayank apr 2011)"
  (interactive "shi color:")
  (let ((re-curword) (curword) (offset (point))
		(old-case-fold-search case-fold-search))
	(setq curword (thing-at-point 'symbol))
	;;(unhighlight-regexp phrase-buffer)
	(setq phrase-buffer (setq re-curword (concat "\\<" (thing-at-point 'symbol) "\\>")))
	(highlight-phrase re-curword color)
	))
(defun vjo-unhighlight-current-word-keep-offset ()
  " (Vagn Johansen 2002)"
  (interactive)
  (let ((re-curword) (curword) (offset (point))
		(old-case-fold-search case-fold-search) )
	(setq curword (thing-at-point 'symbol))
	(setq phrase-buffer (setq re-curword (concat "\\<" (thing-at-point 'symbol) "\\>")))
	(unhighlight-regexp phrase-buffer)
	;;(highlight-phrase re-curword 'hi-yellow)
	(beginning-of-thing 'symbol)
	))

;; (defun ms-current-line-keep-offset ()
;;   " (Mayank 2011)"
;;   (interactive)
;;   (let ((re-curword) (curword) (offset (point))
;;   (old-case-fold-search case-fold-search))
;; 	(setq curword (thing-at-point 'line))
;; 	;;(unhighlight-regexp phrase-buffer)
;; 	(setq phrase-buffer (setq re-curword (concat "\\<" (thing-at-point 'line) "\\>")))
;; 	(highlight-phrase re-curword 'hi-green)
;; 	))
(defun vjo-line-with-current-word-keep-offset-interactive (color)
  " (Mayank oct 2012)"
  (interactive "shi color:")
  (let ((re-curword) (curword) (offset (point))
        (old-case-fold-search case-fold-search))
    (setq curword (thing-at-point 'symbol))
    ;;(unhighlight-regexp phrase-buffer)
    (setq phrase-buffer (setq re-curword (concat "\\<" (thing-at-point 'symbol) "\\>")))
    (highlight-lines-matching-regexp re-curword color)
    ))
(global-set-key [f7] 'vjo-current-word-keep-offset)
(global-set-key [f6] 'vjo-current-word-keep-offset-duplicate)
;;(global-set-key [f6] 'vjo-forward-current-word-keep-offset)
(global-set-key [f8] 'vjo-unhighlight-current-word-keep-offset)
(global-set-key [f9] 'vjo-current-word-keep-offset-interactive)
(global-set-key [f11] 'vjo-line-with-current-word-keep-offset-interactive)

(require 'thingatpt+)
(require 'hide-comnt)
(require 'thing-cmds)

;; paren mode highlighting
;;(require 'highlight-parentheses)

;;<--- highlighting <---



;; Keep Emacs from executing file local variables.
;; (this is also in the site-init.el file loaded at emacs dump time.)
(setq inhibit-local-variables t  ; v18
      enable-local-variables nil ; v19
      enable-local-eval nil)     ; v19

;; Swap Backspace and Delete keys, except for v19 running under X.  This works
;; on both HPs and Suns.
;; (or (and (eq window-system 'x)
;;         (string-match "\\`19\\." emacs-version))
;;    (load "term/bobcat"))

;; Cause the region to be highlighted and prevent region-based commands
;; from running when the mark isn't active.
 
(pending-delete-mode t)
 (setq transient-mark-mode t)

;; 
;; Example of how to set the highlighting of color defaults.
;; (if (fboundp 'set-face-background)
;;     (progn
;;      (set-face-background (quote highlight) "yellow")
;;      (set-face-foreground (quote highlight) "black")))


;; Below are changes taken from the tutor .emacs file
;; Added by Craig Ruefenacht

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;
;;;; This provides customized support for writing programs in different kinds
;;;; of programming languages.
;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Load the C++ and C editing modes and specify which file extensions
;; correspond to which modes.
(autoload 'python-mode "python-mode" "Python editing mode." t)
    (setq auto-mode-alist
           (cons '("\\.py$" . python-mode) auto-mode-alist))
     (setq interpreter-mode-alist
           (cons '("python" . python-mode) interpreter-mode-alist))

(autoload 'c++-mode "cc-mode" "C++ Editing Mode" t)
;;(autoload 'c-mode "c-mode" "C Editing Mode"   t)
(setq auto-mode-alist
      (append '(("\\.C\\'" . c++-mode)
                ("\\.cc\\'" . c++-mode)
		("\\.c\\'" . c-mode)
                ("\\.h\\'"  . c++-mode))
	      auto-mode-alist))

;; set tab distance to something, so it doesn't change randomly and confuse people
(setq c-basic-offset 4)

;; This function is used in various programming language mode hooks below.  It
;; does indentation after every newline when writing a program.

(defun newline-indents ()
  "Bind Return to `newline-and-indent' in the local keymap."
  (local-set-key "\C-m" 'newline-and-indent))


;; Tell Emacs to use the function above in certain editing modes.

(add-hook 'lisp-mode-hook             (function newline-indents))
(add-hook 'emacs-lisp-mode-hook       (function newline-indents))
(add-hook 'lisp-interaction-mode-hook (function newline-indents))
(add-hook 'scheme-mode-hook           (function newline-indents))
;;(add-hook 'c-mode-hook                (function newline-indents))
(add-hook 'c++-mode-hook              (function newline-indents))


;; Fortran mode provides a special newline-and-indent function.

(add-hook 'fortran-mode-hook
	  (function (lambda ()
		      (local-set-key "\C-m" 'fortran-indent-new-line))))


;; Text-based modes (including mail, TeX, and LaTeX modes) are auto-filled.

(add-hook 'text-mode-hook (function turn-on-auto-fill))


;; This is how emacs tells the file type by the file suffix.
(setq auto-mode-alist
      (append '(("\\.mss$" . scribe-mode))
	      '(("\\.bib$" . bibtex-mode))
	      '(("\\.tex$" . latex-mode))
	      '(("\\.obj$" . lisp-mode))
	      '(("\\.st$"  . smalltalk-mode))
	      '(("\\.Z$"   . uncompress-while-visiting))
	      '(("\\.cs$"  . indented-text-mode))
	      '(("\\.C$"   . c++-mode))
	      '(("\\.cc$"  . c++-mode))
	      '(("\\.icc$" . c++-mode))
	      '(("\\.c$"   . c-mode))
	      '(("\\.y$"   . c-mode))
	      '(("\\.h$"   . c++-mode))
	      '(("\\.jsp$" . sgml-mode))
	      '(("\\.bsh$" . java-mode))
	      '(("\\.js$"  . java-mode))
	      auto-mode-alist))

;; Java-mode hook.
(defun timo-java-mode-hook ()
  "Timo's Java-mode"
  (c-set-style "java")
  (c-set-offset 'topmost-intro-cont 0)
  (setq c-basic-offset 4)
  (setq indent-tabs-mode nil)
  (c-set-offset 'arglist-close 0)
  (c-set-offset 'arglist-intro '+)
  (c-set-offset 'substatement-open 0)
  (c-set-offset 'inline-open 0)
  (setq tab-width 4))

(add-hook 'java-mode-hook 'timo-java-mode-hook)

(put 'downcase-region 'disabled nil)

;; some c++ indentation - Mayank: 30th june 2006
(c-set-offset 'defun-block-intro 4)
(c-set-offset 'substatement-open 0)
(c-set-offset 'topmost-intro 0)
(c-set-offset 'statement-block-intro 4)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; org mode
(require 'org-install)

;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; (define-key mode-specific-map [?a] 'org-agenda)

;; (eval-after-load "org"
;;   '(progn
;;      (define-prefix-command 'org-todo-state-map)

;;      (define-key org-mode-map "\C-cx" 'org-todo-state-map)

;;      (define-key org-todo-state-map "x"
;;        #'(lambda nil (interactive) (org-todo "CANCELLED")))
;;      (define-key org-todo-state-map "d"
;;        #'(lambda nil (interactive) (org-todo "DONE")))
;;      (define-key org-todo-state-map "f"
;;        #'(lambda nil (interactive) (org-todo "DEFERRED")))
;;      (define-key org-todo-state-map "l"
;;        #'(lambda nil (interactive) (org-todo "DELEGATED")))
;;      (define-key org-todo-state-map "s"
;;        #'(lambda nil (interactive) (org-todo "STARTED")))
;;      (define-key org-todo-state-map "w"
;;        #'(lambda nil (interactive) (org-todo "WAITING")))

;;      (define-key org-agenda-mode-map "\C-n" 'next-line)
;;      (define-key org-agenda-keymap "\C-n" 'next-line)
;;      (define-key org-agenda-mode-map "\C-p" 'previous-line)
;;      (define-key org-agenda-keymap "\C-p" 'previous-line)))

;; (require 'remember)

;; (add-hook 'remember-mode-hook 'org-remember-apply-template)

;; (define-key global-map [(control meta ?r)] 'remember)

;; (custom-set-variables
;;  '(org-agenda-files (quote ("~/c/pers/org/work.org")))
;;  '(org-default-notes-file "~/c/pers/org/notes.org")
;;  '(org-agenda-ndays 7)
;;  '(org-deadline-warning-days 14)
;;  '(org-agenda-show-all-dates t)
;;  '(org-agenda-skip-deadline-if-done t)
;;  '(org-agenda-skip-scheduled-if-done t)
;;  '(org-agenda-start-on-weekday nil)
;;  '(org-reverse-note-order t)
;;  '(org-fast-tag-selection-single-key (quote expert))
;;  '(org-agenda-custom-commands
;;    (quote (("d" todo "DELEGATED" nil)
;;        ("c" todo "DONE|DEFERRED|CANCELLED" nil)
;;        ("w" todo "WAITING" nil)
;;        ("W" agenda "" ((org-agenda-ndays 21)))
;;        ("A" agenda ""
;;         ((org-agenda-skip-function
;;           (lambda nil
;;         (org-agenda-skip-entry-if (quote notregexp) "\\=.*\\[#A\\]")))
;;          (org-agenda-ndays 1)
;;          (org-agenda-overriding-header "Today's Priority #A tasks: ")))
;;        ("u" alltodo ""
;;         ((org-agenda-skip-function
;;           (lambda nil
;;         (org-agenda-skip-entry-if (quote scheduled) (quote deadline)
;;                       (quote regexp) "<[^>\n]+>")))
;;          (org-agenda-overriding-header "Unscheduled TODO entries: "))))))
;;  '(org-remember-store-without-prompt t)
;;  '(org-remember-templates
;;    (quote ((116 "* TODO %?\n  %u" "~/todo.org" "Tasks")
;;        (110 "* %u %?" "~/notes.org" "Notes"))))
;;  '(remember-annotation-functions (quote (org-remember-annotation)))
;;  '(remember-handler-functions (quote (org-remember-handler))))



(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-agenda-files (list "~/c/pers/org/work.org"
                             "~/c/pers/org/home.org"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;; vc-clearcase 03feb2007 ;;;;;
;;
;;(add-to-list 'load-path (expand-file-name "/home/mayanks/.emacsels"))
;;(require 'vc-clearcase)
;; (setq load-path
;;       (cons "/home/mayanks/c/emacs/site-lisp/vc-clearcase-1.115" load-path))
;; (setq load-path
;;       (cons "/home/mayanks/c/emacs/site-lisp/emacs" load-path))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; cscope
;; (require 'bscope)
;; (require 'xcscope)
;; mayank:init and key bindings defined in section :CSCOPE:

;; --> :CSCOPE: -->
;;(setq bscope-init '~/c/views/ms_DCA-ENG-1.2_VXP_1.0)
;;(setq bscope-init '/home/mayank/development)

;; -- :CSCOPE keybindings: --
(define-key global-map [(control f3)]  'cscope-set-initial-directory)
(define-key global-map [(control f4)]  'cscope-unset-initial-directory)
(define-key global-map [(control f5)]  'cscope-find-this-symbol)
(define-key global-map [(control f6)]  'cscope-find-global-definition)
(define-key global-map [(control f7)]  'cscope-find-global-definition-no-prompting)
(define-key global-map [(control f8)]  'cscope-pop-mark)
(define-key global-map [(control f9)]  'cscope-next-symbol)
(define-key global-map [(control f10)] 'cscope-next-file)
(define-key global-map [(control f11)] 'cscope-prev-symbol)
(define-key global-map [(control f12)] 'cscope-prev-file)

(define-key global-map [(meta f9)]     'cscope-display-buffer)
(define-key global-map [(meta f10)]    'cscope-display-buffer-toggle)
;; <-- CSCOPE <--

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;
;;XML!! PSGML mode XML stuff
;;
(autoload 'sgml-mode "psgml" "Major mode to edit SGML files." t)
(autoload 'xml-mode "psgml" "Major mode to edit XML files." t)

;;(setq sgml-mode-hook '(lambda () "Defaults for XML mode." (turn-on-auto-fill) 
;;(setq fill-column 80)))
(setq tab-width 4)

(defun My-XML-keymap ()
   (local-set-key [(alt i)] 
                  '(lambda ()
                     (interactive)
                     (sgml-indent-line)
                     (sgml-insert-element 'item)
                     (sgml-indent-line)))
   (local-set-key [(alt l)] 
                  '(lambda ()
                     (interactive)
                     (sgml-insert-element 'list)
                     (sgml-insert-element 'item)
                     (sgml-indent-line)))
   (local-set-key [(alt p)]
                  '(lambda ()
                     (interactive)
                     (sgml-indent-line)
                     (sgml-insert-element 'para)
                     (sgml-indent-line)))
   (local-set-key [(alt -)]
                  '(lambda ()
                     (interactive)
                     (insert "Ã¢ÂÂ"))))      

(add-hook 'sgml-mode-hook 'My-XML-keymap)

;; ;;
;; ;; Fix up indentation of data...
;; ;;

(setq-default sgml-indent-data t)


;;
;; XML markup faces.
;;

(setq-default sgml-set-face t)


 (make-face 'sgml-comment-face)
 (make-face 'sgml-doctype-face)
 (make-face 'sgml-end-tag-face)
 (make-face 'sgml-entity-face)
 (make-face 'sgml-ignored-face)
 (make-face 'sgml-ms-end-face)
 (make-face 'sgml-ms-start-face)
 (make-face 'sgml-pi-face)
 (make-face 'sgml-sgml-face)
 (make-face 'sgml-short-ref-face)
 (make-face 'sgml-start-tag-face)

 (set-face-foreground 'sgml-comment-face "red")
 (set-face-foreground 'sgml-doctype-face "dark green")
 (set-face-foreground 'sgml-end-tag-face "dark green")
 (set-face-foreground 'sgml-entity-face "red2")
 (set-face-foreground 'sgml-ignored-face "maroon")
 (set-face-background 'sgml-ignored-face "gray90")
 (set-face-foreground 'sgml-ms-end-face "maroon")
 (set-face-foreground 'sgml-ms-start-face "maroon")
 (set-face-foreground 'sgml-pi-face "maroon")
 (set-face-foreground 'sgml-sgml-face "maroon")
 (set-face-foreground 'sgml-short-ref-face "goldenrod")
 (set-face-foreground 'sgml-start-tag-face "navy blue")

 (setq-default sgml-markup-faces
               '((comment . sgml-comment-face)
                 (doctype . sgml-doctype-face)
                 (end-tag . sgml-end-tag-face)
                 (entity . sgml-entity-face)
                 (ignored . sgml-ignored-face)
                 (ms-end . sgml-ms-end-face)
                 (ms-start . sgml-ms-start-face)
                 (pi . sgml-pi-face)
                 (sgml . sgml-sgml-face)
                 (short-ref . sgml-short-ref-face)
                 (start-tag . sgml-start-tag-face)))


(defun docbook-mode ()
  (sgml-mode)
)

;;
;;End XML STUFF
;;

;;; imdb
;; (require 'imdb-adds)
;;; Force IMDb adds mode
;; (setq auto-mode-alist (cons '("contrib\\..*$" . imdb-adds-mode) 
;;                             auto-mode-alist))
;; (autoload 'imdb-adds-mode "imdb-adds-mode" nil t)
;; (setq imdb-adds-beginner-mode t)
;; (defun my-make-imdb-submission-template ()
;;   (interactive)
;;   (switch-to-buffer (generate-new-buffer "New IMDb submission"))
;;   (imdb-adds-mode)
;;   (imdb-adds-insert-new-template))

;;; imdb
;; (require 'table)

;; (require 'imimacs)
;; ; interface that the server listens on:
;; (setq imimacs-listen-interface "eth0")
;; ; predefined peers available via M-n and M-p in minibuffer:
;; (setq imimacs-peers '("192.168.75.201" "krishna.dilith.net"))
;; ; arbitrary (nick-)name, prepended to outgoing messages if non-nil
;; (setq imimacs-user-name "mayank")
;; (imimacs-init)
;; (global-set-key [f5] 'imimacs-send)

;;;_ , Word documents
(when (locate-library "no-word")
  (require 'no-word)
  (add-to-list 'auto-mode-alist '("\\.doc\\'" . no-word)))

;; store tilde ~ files in backup directory
(defun make-backup-file-name (file)
(concat "~/.emacs_backups/" (file-name-nondirectory file) "~"))

;; 13
(fset '\3
   [?\C-1 ?\C-4 C-right C-left return])
(global-set-key [3 67108915] '\3)


;; 12
(fset '\2
   [?\C-1 ?\C-3 C-right C-left return])
(global-set-key [3 67108914] '\2)

;; unwrap a line
(fset 'unwrap
   [?\C-e right tab ?\C-k ?\C-a left ?  ?\C-y right ?\C-k left])
(global-set-key [3 117] 'unwrap)

;; add line breaks per packet for a ASR5k specific log : C-c b
(fset 'ms-log-lb
   [?\C-s ?d ?i ?r ?= ?\C-a up return ?\C-e right ?\C-e right])
(global-set-key [3 98] 'ms-log-lb)

(fset 'wiki-1
   [?| ?  ?h ?6 ?. ?  ?\C-e return ?< ?t ?o ?d ?o ?: ?a ?n ?s ?w ?e ?r ?> ?  ?| ?- ?| right])
(global-set-key [3 119] 'wiki-1)

  (setq ps-lpr-command "print_preview")

(fset 'try0
   [?\C-  ?\C-e ?\M-w right ?\C-  C-down left ?\C-a ?\C-x ?r ?t ?\C-y ?, return ?\M-x ?r ?e ?p ?l ?a ?c ?e ?0 backspace ?- ?s ?t ?r ?i ?n ?g return ?\{ return return escape ?< ?\M-x ?r ?e ?p ?l ?a ?c ?e ?- ?s ?t ?r ?i ?n ?g return ?\} return return escape ?< ?\C-  down backspace])
(global-set-key [3 48] 'try0)


(fset 'try1
   [?\C-s ?: right ?\C-  ?\C-r ?\" ?\C-r left right ?\C-w])
(global-set-key [3 49] 'try1)
