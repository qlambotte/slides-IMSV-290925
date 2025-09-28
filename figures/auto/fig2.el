(TeX-add-style-hook
 "fig2"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "standalone"
    "standalone10"
    "tikz"
    "tkz-euclide")
   (TeX-add-symbols
    "h"
    "sone"
    "stwo"))
 :latex)

