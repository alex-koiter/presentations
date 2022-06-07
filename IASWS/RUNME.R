
f <- "CAG_2021_R1"

# Open in Chrome
#system(paste0("google-chrome '", f, ".html'"))

# Save PDF through Chrome Headless (puppeteer)
l <- normalizePath(list.files(pattern = paste0(f, ".html"), full.names = TRUE))

system(paste0("node ./Print_PDF/print_pdf.js 'file://", l, "' 3000 '", paste0(f, ".pdf"), "'"))

# Reduce size (prepress = 300 dpi, printer = 300 dpi, ebook = 150 dpi, screen = 72dpi)
system(paste0("gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -sOutputFile='", f, "_small.pdf' '", f, ".pdf'"))


