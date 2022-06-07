

pagedown::chrome_print("IASWS_2022.html", "IASWS_Koiter_2022.pdf", timeout = 120) 

# NOT necessary here
# Reduce size (prepress = 300 dpi, printer = 300 dpi, ebook = 150 dpi, screen = 72dpi)
system(paste0("gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 ",
              "-dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH ",
              "-sOutputFile='IASWS_Koiter_2022_sm.pdf' ",
              "'IASWS_Koiter_2022.pdf'"))
