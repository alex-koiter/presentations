

pagedown::chrome_print("Reproducibility.html", "Reproducibility.pdf") 

# NOT necessary here
# Reduce size (prepress = 300 dpi, printer = 300 dpi, ebook = 150 dpi, screen = 72dpi)
# system(paste0("gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 ",
#               "-dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH ",
#               "-sOutputFile='Reproducibility.pdf' ",
#               "'Reproducibility_sm.pdf'"))