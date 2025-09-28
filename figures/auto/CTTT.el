(TeX-add-style-hook
 "CTTT"
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

