;;; doom-one-light-theme.el --- inspired by Atom One Light
(require 'doom-themes)

;;
(def-doom-theme doom-one-light
  "A light theme inspired by Atom One"

  ;; name        default   256       16
  ((bg         (doom-gencolor "#fafafa"))
   (bg-alt     (doom-gencolor "#f0f0f0")) ; base0123
   (fg-weak    (doom-gencolor "#9ca0a4")) ; base4567
   (fg         (doom-gencolor "#383a42"))
   (fg-strong  (doom-gencolor "#1b2229")) ; base8

   (grey       fg-weak)
   (red        (doom-gencolor "#e45649"))
   (orange     (doom-gencolor "#da8548"))
   (green      (doom-gencolor "#50a14f"))
   (teal       (doom-gencolor "#4db5bd"))
   (yellow     (doom-gencolor "#986801"))
   (blue       (doom-gencolor "#4078f2"))
   (blue-alt   (doom-gencolor "#a0bcf8"))
   (magenta    (doom-gencolor "#a626a4"))
   (violet     (doom-gencolor "#b751b6"))
   (cyan       (doom-gencolor "#0184bc"))

   ;; face categories -- required for all themes
   (hl-bg      blue)
   (hl-fg      (doom-gencolor "#f0f0f0"))
   (fg-hl      blue)
   (fg-hl-2   orange)
   (fg-hl-3   violet)
   (vertical-bar   (doom-darken bg-alt 0.1))
   (selection-bg   blue)
   (selection-fg   hl-fg)
   (selection-fg-hl selection-fg)
   (builtin        magenta)
   (constants      violet)
   (functions      magenta)
   (keywords       red)
   (methods        cyan)
   (operators      blue)
   (type           yellow)
   (strings        green)
   (variables      (doom-darken magenta 0.36))
   (numbers        orange)
   (region         `(,(doom-darken (car bg-alt) 0.1) ,@(doom-darken (cdr hl-fg) 0.3)))
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)
   (modeline-bg (doom-darken bg 0.1))
   (modeline-fg fg)
   (modeline-bg-inactive (doom-darken bg 0.05))
   (modeline-fg-inactive (doom-darken fg 0.3)))


  ;; --- extra faces ------------------------
  ((cursor :background "black")
   (font-lock-doc-face :slant 'italic :foreground fg-weak)
   (hl-line :background (doom-darken bg-alt 0.03))
   (mode-line
    :background modeline-bg :foreground modeline-fg
    :font (font-spec :family "SF Pro Text" :size 13.0 :weight 'light))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-inactive
    :font (font-spec :family "SF Pro Text" :size 13.0 :weight 'light))
   (mode-line-emphasis
    :foreground hl-fg)
   (variable-pitch :family "Source Serif Pro" :height 150 :weight 'medium)

   ;; --- major-mode faces -------------------
   )

  ;; --- extra variables ---------------------
  ()
  )

;;; doom-one-light-theme.el ends here
