(TeX-add-style-hook
 "fig1"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "standalone"
    "standalone10"
    "tikz"
    "siunitx")
   (TeX-add-symbols
    "h"
    "sone"
    "stwo"))
 :latex)

