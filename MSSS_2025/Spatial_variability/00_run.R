

pagedown::chrome_print("./MSSS_2025/Spatial_variability/MSSS_variability_2025.html",
                       output = "./MSSS_2025/Spatial_variability/MSSS_variability_2025.pdf",
                       options = list(printBackground = TRUE),
                       extra_args = "--font-render-hinting=none")



system(glue::glue("gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 ",
                  "-dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH ",
                  "-sOutputFile='./MSSS_2025/Spatial_variability/MSSS_variability_2025_sm.pdf' ",
                  "'./MSSS_2025/Spatial_variability/MSSS_variability_2025.pdf'"))
