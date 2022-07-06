

pagedown::chrome_print("MAW_Koiter_2021.html", "MAW_Koiter_2021.pdf", timeout = 120) 

# NOT necessary here
# Reduce size (prepress = 300 dpi, printer = 300 dpi, ebook = 150 dpi, screen = 72dpi)
# system(paste0("gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 ",
#               "-dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH ",
#               "-sOutputFile='Reproducibility.pdf' ",
#               "'Reproducibility_sm.pdf'"))