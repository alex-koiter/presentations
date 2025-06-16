

pagedown::chrome_print("./IASWS_2025/IASWS_2025.html",
                       output = "./IASWS_2025/IASWS_2025.pdf",
                       options = list(printBackground = TRUE),
                       extra_args = "--font-render-hinting=none")



# system(glue::glue("gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 ",
#                   "-dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH ",
#                   "-sOutputFile='intro_to_rmarkdown_sm.pdf' ",
#                   "'intro_to_rmarkdown.pdf'"))
