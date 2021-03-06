;; this file not part of emacs or whatever
(defun xah-syntax-color-hex ()
"Syntax color hex color spec such as 「#ff1100」 in current buffer."
  (interactive)
  (font-lock-add-keywords
   nil
   '(("#[abcdef[:digit:]]\\{6\\}"
      (0 (put-text-property
          (match-beginning 0)
          (match-end 0)
          'face (list :background (match-string-no-properties 0)))))))
  (font-lock-fontify-buffer))

(deftheme base16-ocean-brian)

(let ((base00 "#2b303b")
      (base01 "#343d46")
      (base02 "#4f5b66")
      (base03 "#65737e")
      (base04 "#a7adba")
      (base05 "#c0c5ce")
      (base06 "#dfe1e8")
      (base07 "#eff1f5")

      (red-dark     "#a64851")
      (red          "#bf616a")
      (red-light    "#d97b84")
      (orange-dark  "#b76e57")
      (orange       "#d08770")
      (orange-light "#eaa18a")
      (yellow-dark  "#d2b272")
      (yellow       "#ebcb8b")
      (yellow-light "#ffe5a5")
      (green-dark   "#8aa573")
      (green        "#a3be8c")
      (green-light  "#bdd8a6")
      (teal-dark    "#7d9c9b")
      (teal         "#96b5b4")
      (teal-light   "#b0cfce")
      (slate-dark   "#76889a")
      (slate        "#8fa1b3")
      (slate-light  "#a9bbcd")
      (purple-dark  "#9b7594")
      (purple       "#b48ead")
      (purple-light "#cea8c7")
      (brown-dark   "#92604e")
      (brown        "#ab7967")
      (brown-light  "#c59381"))

  (custom-theme-set-faces
   'base16-ocean-brian

   ;; default stuff (Emacs 23)
   `(default ((t (:background ,base01 :foreground ,base06))))
   `(fringe ((t (:background ,base00))))
   `(minibuffer-prompt ((t (:foreground ,slate))))
   `(mode-line ((t (:background ,base03))))
   `(region ((t (:background ,base00))))
   `(sp-pair-overlay-face ((t (:background ,base02))))

   ;; Term faces
   `(term-color-black ((t (:foreground ,base00))))
   `(term-color-white ((t (:foreground ,base07))))
   `(term-color-red ((t (:foreground ,red))))
   `(term-color-green ((t (:foreground ,green))))
   `(term-color-yellow ((t (:foreground ,yellow))))
   `(term-color-cyan ((t (:foreground ,teal))))
   `(term-color-blue ((t (:foreground ,slate))))
   `(term-color-purple ((t (:foreground ,purple))))

   ;; Font-lock stuff
   `(font-lock-comment-face ((t (:foreground ,slate))))
   `(font-lock-constant-face ((t (:foreground ,green))))
   `(font-lock-doc-string-face ((t (:foreground ,slate))))
   `(font-lock-function-name-face ((t (:foreground ,teal))))
   `(font-lock-keyword-face ((t (:foreground ,purple))))
   `(font-lock-string-face ((t (:foreground ,green))))
   `(font-lock-type-face ((t (:foreground ,yellow))))
   `(font-lock-variable-name-face ((t (:foreground ,red))))
   `(font-lock-warning-face ((t (:foreground ,red))))

   ;; hl-line-mode
   `(hl-line ((t (:background ,base00))))

   ;; linum-mode
   `(linum ((t (:background ,base00 :foreground ,base06))))

   ;; show-paren-mode
   `(show-paren-match ((t (:background ,slate :foreground ,base06))))
   `(show-paren-mismatch ((t (:background ,orange :foreground ,red))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,purple))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,slate))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,teal-light))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,teal-dark))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,yellow))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,orange-light))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,orange-dark))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,brown))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,base07))))

   ;; org-mode
   `(org-agenda-block-count ((t (:weight bold :foreground ,base06))))
   `(org-agenda-calendar-event ((t (:weight bold :foreground ,slate))))
   `(org-agenda-calendar-sexp ((t (:foreground ,base07))))
   `(org-agenda-clocking ((t (:foreground ,yellow :background ,base02))))
   `(org-agenda-current-time ((t (:foreground ,teal))))
   `(org-agenda-date ((t (:height 1.4 :weight bold))))
   `(org-agenda-date-today ((t (:height 1.4 :weight bold))))
   `(org-agenda-date-weekend ((t (:height 1.4 :weight bold :foreground ,base05))))
   `(org-agenda-diary ((t (:weight bold :background ,green))))
   `(org-agenda-dimmed-todo-face ((t (:background ,yellow))))
   `(org-agenda-done ((t (:foreground ,green))))
   `(org-agenda-filter-category ((t (:weight bold :foreground ,orange))))
   `(org-agenda-filter-tags ((t (:weight bold :foreground ,orange))))
   `(org-agenda-restriction-lock ((t (:background ,red))))
   `(org-agenda-structure ((t (:height 1.4 :weight bold :foreground ,teal))))
   `(org-archived ((t (:foreground ,base05))))
   `(org-beamer-tag ((t (:box (:line-width 1 :color ,yellow) :foreground ,base05))))
   `(org-block ((t (:background ,yellow :foreground ,base00))))
   `(org-block-background ((t (:foreground ,yellow))))
   `(org-block-begin-line ((t (:underline ,base07 :foreground ,base06 :background ,orange))))
   `(org-block-end-line ((t (:overline ,base07 :foreground ,base06 :background ,orange))))
   `(org-checkbox ((t (:weight bold :box (:line-width 1 :style pressed-button) :foreground ,base00 :background ,base06))))
   `(org-clock-overlay ((t (:foreground ,teal))))
   `(org-date ((t (:underline t :foreground ,slate))))
   `(org-default ((t (:foreground ,base06 :background ,base00))))
   `(org-dim ((t (:foreground ,base04))))
   `(org-document-info ((t (:foreground ,base04))))
   `(org-document-info-keyword ((t (:foreground ,teal))))
   `(org-document-title ((t (:family "sans serif" :height 1.8 :weight bold))))
   `(org-done ((t (:weight bold :foreground ,green))))
   `(org-drawer ((t (:foreground ,green))))
   `(org-ellipsis ((t (:underline nil :box (:line-width 1 :color ,base04) :background ,yellow))))
   `(org-example ((t (:foreground ,base05))))
   `(org-footnote ((t (:underline t :foreground ,teal))))
   `(org-formula ((t (:foreground ,brown))))
   `(org-headline-done ((t (:height 1.0 :weight normal :strike-through t :foreground ,green))))
   `(org-hide ((t (:foreground ,base02))))
   `(org-inlinetask ((t (:foreground ,yellow))))
   `(org-latex-and-related ((t (:foreground ,teal))))
   `(org-level-1 ((t (:foreground ,red))))
   `(org-level-2 ((t (:foreground ,orange))))
   `(org-level-3 ((t (:foreground ,yellow))))
   `(org-level-4 ((t (:foreground ,teal))))
   `(org-level-5 ((t (:foreground ,slate))))
   `(org-level-6 ((t (:foreground ,purple))))
   `(org-level-7 ((t (:foreground ,brown))))
   `(org-level-8 ((t (:foreground ,base05))))
   `(org-link ((t (:foreground ,yellow))))
   `(org-list-dt ((t (:weight bold :foreground ,teal))))
   `(org-macro ((t (:weight bold :foreground ,yellow))))
   `(org-meta-line ((t (:slant normal :foreground ,teal))))
   `(org-mode-line-clock ((t (:foreground ,base05))))
   `(org-mode-line-clock-overrun ((t (:weight bold :box (:line-width 1 :color ,teal) :foreground ,base07 :background ,red))))
   `(org-number-of-items ((t (:weight bold :foreground ,green))))
   `(org-property-value ((t (:foreground ,base04))))
   `(org-quote ((t (:slant italic :foreground ,base04))))
   `(org-scheduled ((t (:foreground ,slate))))
   `(org-scheduled-previously ((t (:foreground ,red))))
   `(org-scheduled-today ((t (:foreground ,orange))))
   `(org-sexp-date ((t (:foreground ,teal))))
   `(org-special-keyword ((t (:weight bold :foreground ,slate))))
   `(org-table ((t (:foreground ,green))))
   `(org-tag ((t (:weight normal :slant italic :foreground ,base02 :background ,base06))))
   `(org-target ((t (:foreground ,orange))))
   `(org-time-grid ((t (:foreground ,orange))))
   `(org-todo ((t (:weight bold :foreground ,red))))
   `(org-upcoming-deadline ((t (:foreground ,red))))
   `(org-verbatim ((t (:foreground ,teal))))
   `(org-verse ((t (:slant italic :foreground ,base05))))
   `(org-warning ((t (:weight bold :foreground ,base07 :background ,base00))))

   ;; org-habit
   `(org-habit-alert-face ((t (:background ,yellow-light :foreground ,base01))))
   `(org-habit-alert-future-face ((t (:background ,yellow))))
   `(org-habit-clear-face ((t (:background ,teal))))
   `(org-habit-clear-future-face ((t (:background ,teal-dark))))
   `(org-habit-overdue-face ((t (:background ,red))))
   `(org-habit-overdue-future-face ((t (:background ,red-dark))))
   `(org-habit-ready-face ((t (:background ,green))))
   `(org-habit-ready-future-face ((t (:background ,green-dark))))

   ;; flyspell
   (if (version< emacs-version "24.4")
       `(flyspell-duplicate ((t (:underline ,green :inherit nil))))
     `(flyspell-duplicate ((t (:underline (:style wave :color ,green) :inherit nil)))))
   (if (version< emacs-version "24.4")
       `(flyspell-incorrect ((t (:underline ,red :inherit nil))))
     `(flyspell-incorrect ((t (:underline (:style wave :color ,red) :inherit nil)))))

   ;; magit
   ;; `(magit-blame-header ((t (:inherit magit-diff-file-header))))
   ;; `(magit-diff-none ((t ,diff-none)))
   ;; `(magit-item-mark ((t ,marked-line)))
   ;; `(magit-log-head-label ((t (:box (:line-width 1 :color "blue" :style nil)))))
   ;; `(magit-log-tag-label ((t (:box (:line-width 1 :color "#00cc00" :style nil)))))
   ;; `(magit-section-title ((t (:family "sans serif" :height 1.8 :weight bold :foreground "cornflower blue" :inherit nil))))
   `(magit-branch ((t (:foreground ,red))))
   `(magit-diff-add ((t (:foreground ,green))))
   `(magit-diff-del ((t (:foreground, red))))
   `(magit-diff-file-header ((t (:weight bold :foreground ,teal))))
   `(magit-diff-hunk-header ((t :background ,base03)))
   `(magit-header ((t (:foreground ,red))))
   `(magit-item-highlight ((t (:background ,base02))))
   `(magit-log-sha1 ((t (:foreground ,red))))
   `(git-gutter:added ((t (:background ,green-dark :foreground ,green-light))))
   `(git-gutter:deleted ((t (:background ,red-dark :foreground ,red-light))))
   `(git-gutter:modified ((t (:background ,purple-dark :foreground ,purple-light))))

   ;; helm
   `(helm-selection ((t (:background ,base02))))
   `(helm-source-header ((t (:foreground ,base07 :weight bold))))
   `(helm-candidate-number ((t (:foreground ,yellow))))

   ;; guide-key
   `(guide-key/key-face ((t (:foreground ,base05))))
   `(guide-key/highlight-command-face ((t (:foreground ,orange))))
   `(guide-key/prefix-command-face ((t (:foreground ,yellow))))
   `(guide-key-tip/pos-tip-face ((t (:foreground ,base07 :weight bold))))

   ;; TODO diff:    https://github.com/fniessen/emacs-leuven-theme/blob/master/leuven-theme.el#L228
   ;; TODO company: https://github.com/fniessen/emacs-leuven-theme/blob/master/leuven-theme.el#L333-L344
   ;; TODO dired:   https://github.com/fniessen/emacs-leuven-theme/blob/master/leuven-theme.el#L412-L428
   )

  (custom-theme-set-variables
   'base16-ocean-brian

   `(ansi-color-names-vector
     ;; black, red, green, yellow, blue, magenta, cyan, white
     [,base00 ,red, green, yellow, slate, purple, teal, base07])

   `(when (not (facep ansi-term-color-vector-0))
      (ansi-term-color-vector
       ;; black, red, green, yellow, blue, magenta, cyan, white
       [unspecified ,base00 ,red, green, yellow, slate, purple, teal, base07]))))

(provide-theme 'base16-ocean-brian)
