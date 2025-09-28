(TeX-add-style-hook
 "fig10"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "standalone"
    "standalone10"
    "tkz-fct"
    "amsmath"
    "tkz-tab"
    "tkz-euclide"
    "color"
    "sansmath"))
 :latex)

