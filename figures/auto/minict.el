(TeX-add-style-hook
 "minict"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "standalone"
    "standalone10"
    "tkz-fct"
    "tkz-euclide"
    "amsmath"
    "color"
    "sansmath"))
 :latex)

