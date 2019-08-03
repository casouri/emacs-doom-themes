;;; doom-cyberpunk-theme.el --- tinspired by Atom One Dark

(require 'doom-themes)

;;
(defgroup doom-cyberpunk-theme nil
  "Options for doom-themes"
  :group 'doom-themes)

(defcustom doom-cyberpunk-bg 'violet
  "Color of bg, 'volet, 'dark, or 'blue."
  :group 'doom-cyberpunk-theme
  :type 'sybmol)

(defcustom doom-cyberpunk-dark-mode-line nil
  "If non-nil, Use a darker mode-line color."
  :group 'doom-cyberpunk-theme
  :type 'boolean)

;;
(def-doom-theme doom-cyberpunk
  "A dark theme inspired by Atom One Dark
light variant is from dracula, blue is from city light."

  ;; name        default   256       16
  ((bg         (pcase doom-cyberpunk-bg
                 ('dark   '("#130F26" nil       nil            ))
                 ('violet '("#352C44" nil       nil            ))
                 ('light  '("#282a36" nil       nil            ))
                 ('blue   '("#1D252C" nil       nil            ))))
   (bg-alt     (pcase doom-cyberpunk-bg
                 ('dark   '("#2d293f" nil       nil            ))
                 ('violet '("#1c1c33" nil       nil            ))
                 ('light  '("#363848" nil       nil            ))
                 ('blue   '("#151b20" nil       nil            ))))
   (fg-weak      (pcase doom-cyberpunk-bg
                   ('dark   '("#816B91" "#6b6b6b" "brightblack"  ))
                   ('violet '("#A894BD" "#6b6b6b" "brightblack"  ))
                   ('light  '("#778CB8" "#6b6b6b" "brightblack"  ))))
   (fg-strong      (pcase doom-cyberpunk-bg
                     ('dark   '("#AE98BA" "#dfdfdf" "white"        ))
                     ('violet '("#D4BDE3" "#dfdfdf" "white"        ))
                     ('light  '("#ABC4E5" "#dfdfdf" "white"        ))
                     ('blue   '("#9CAABB" "#dfdfdf" "white"        ))))
   (fg         (pcase doom-cyberpunk-bg
                 ('dark   '("#BAD2E0" "#bfbfbf" "brightwhite"  ))
                 ('violet '("#C5DEED" "#bfbfbf" "brightwhite"  ))
                 ('light  '("#ABC4E5" "#bfbfbf" "brightwhite"  ))
                 ('blue   '("#A0B3C5" "#bfbfbf" "brightwhite"  ))))
   (fg-alt     (pcase doom-cyberpunk-bg
                 ('dark   '("#A3B8C4" "#2d2d2d" "white"        ))
                 ('violet '("#A3B8C4" "#2d2d2d" "white"        ))
                 ('light  '("#92A8D1" "#2d2d2d" "white"        ))
                 ('blue   '("#728CA0" "#2d2d2d" "white"        ))))

   (grey        fg-weak)
   (red         '("#FF414A" "red1"            "red"          ))
   (orange      '("#FF8743" "OrangeRed1"      "brightred"    ))
   (green       '("#52DEA1" "#00d7af" "green"        ))
   ;; green #3DDE8C
   (teal        '("#72B9BD" "SkyBlue3"        "brightgreen"  ))
   (yellow      '("#FFF100" "#ffff00"         "yellow"       ))
   ;; dark violet #673DA5
   (blue-alt   (if doom-cyberpunk-dark-mode-line
                   '("#1E1230" "black"       "black"        )
                 '("#582EBF"   "#5f00d7"  "violet"       )))
   (blue        '("#79BEEF" "SteelBlue1"      "brightblue"   ))
   (magenta     '("#F975D4" "#ff87ff"         "brightmagenta"))
   (violet      '("#C792FF" "#d787ff"         "violet"       ))
   (violet2     (pcase doom-cyberpunk-bg
                  ('blue   '("#B5A4FF" "#d787ff"         "violet"       ))
                  (_       '("#ACA9FF" "#d787ff"         "violet"       ))))
   (cyan        '("#46EAFF" "#46D9FF"         "brightcyan"   ))

   ;; face categories -- required for all themes
   (hl-bg     violet)
   (hl-fg     bg-alt)
   (fg-hl     cyan)
   (fg-hl-2   yellow)
   (fg-hl-3   magenta)
   (vertical-bar   (doom-darken bg-alt 0.1))
   (selection-bg   cyan)
   (selection-fg   (doom-darken bg 0.2))
   (selection-fg-hl magenta)
   (builtin        cyan)
   (comments       fg-weak)
   (constants      yellow)
   (functions      magenta)
   (keywords       cyan)
   (methods        cyan)
   (operators      cyan)
   (type           yellow)
   (strings        green)
   (variables      violet)
   (numbers        orange)
   (region         (pcase doom-cyberpunk-bg
                     ;; "#432391"
                     ('light `("#42228F" ,@(doom-lighten (cdr bg-alt) 0.35)))
                     (_ `(,(doom-lighten (car bg-alt) 0.15) ,@(doom-lighten (cdr bg-alt) 0.35)))))
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   )


  ;; --- extra faces ------------------------
  ((lazy-highlight :background nil :weight 'bold)
   (cursor :background cyan :foreground selection-fg)
   (hl-line :background (doom-blend blue-alt (doom-lighten bg 0.07) 0.1))

   ;; helm
   (helm-separator :foreground yellow)
   (helm-source-header :height 1.1 :background bg-alt :weight 'bold)
   (helm-candidate-number :background blue :foreground bg)
   (helm-buffer-file :foreground magenta)
   (helm-buffer-modified :forground red)
   (helm-buffer-size :foreground yellow)
   (helm-buffer-directory :foreground violet)
   (helm-buffer-not-saved :foreground orange)
   (helm-buffer-process :foreground cyan)


   ;; variable pitch
   (variable-pitch :family "Source Serif Pro" :height 150 :weight 'medium)

   ;; mode-line
   (mode-line           :background blue-alt  :foreground fg :font (font-spec :family "SF Pro Text" :size 13.5 :weight 'light))
   (mode-line-inactive  :background bg-alt     :foreground fg-alt :font (font-spec :family "SF Pro Text" :size 13.5 :weight 'light))

   ;; helm
   (helm-swoop-target-word-face       :foreground yellow :inherit 'bold)

   ;; company
   (company-tooltip-common-selection :foreground nil)


   ;; fringe
   (fringe :foreground yellow)

   ;; latex
   (font-latex-script-char-face :foreground violet)

   ;; --- major-mode faces -------------------


   ;; --- extra variables ---------------------
   ;; ()
   ))

;;; doom-cyberpunk-theme.el ends here
