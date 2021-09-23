
f <- "Reproducibility"

# Open in Chrome
#system(paste0("google-chrome ", f, ".html"))

# Save PDF through Chrome Headless (puppeteer)
l <- normalizePath(list.files(pattern = paste0(f, ".html"), full.names = TRUE))
system(paste0("node ./Print_PDF/print_pdf.js 'file://", l, "' 6000 '", paste0(f, ".pdf"), "'"))

# Reduce size (prepress = 300 dpi, printer = 300 dpi, ebook = 150 dpi, screen = 72dpi)
system(paste0("gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 -dPDFSETTINGS=/printer -dNOPAUSE -dBATCH -sOutputFile=", f, "_small.pdf ", f, ".pdf"))

#system(paste0("pdftk A=06_Hillslopes_38-278_2019.pdf B=06_Hillslopes_38-278_2018_small.pdf cat A1 B2-42 A8 output 06_Hillslopes_38-278_2019_small.pdf"))

# Make Handouts
# system(paste0("pdfjam-slides3up --pagenumbering true --outfile './Upload_2020/' --suffix 'handout' ", "./Upload_2020/", f, "_small.pdf"))

library(glue)
  system(glue("pdfjam --nup 1x3 --frame true --noautoscale false --delta '0cm 0.2cm' ",
              "--scale 0.87 --offset '-2.8cm 0cm' ",
              "--preamble '\\footskip 3.1cm' --pagecommand '\\thispagestyle{{plain}}' ",
              "--outfile '{f}_small_handout.pdf' --suffix 'handout' ",
              "'{f}_small.pdf'")) 

