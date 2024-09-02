library(qrcode)

code <- qr_code("https://alex-koiter.github.io/presentations/ES_Orientation/orientation.html")
generate_svg(
  qrcode = code, filename = "./ES_Orientation/QR_code.svg", show = FALSE
)
