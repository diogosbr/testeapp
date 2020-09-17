meme_orig <- function(robin, batman, ...){
  
  # plot base pic -----------------------------------------------------------
  pic <- jpeg::readJPEG("inst/app/www/batman.jpg")
  
  par(mar = c(0,0,0,0))
  plot(as.raster(pic))  
  
  # batman text -------------------------------------------------------------
  #batman <- "É apenas um teste para poder dividir a frase. Mas, parece que"
  if(nchar(batman) > 61){stop("Escreva uma frase menor que 45 caracteres.")}
  
  batman1 <- stringr::str_trunc(batman, 26, "right", ellipsis = "...")
  text(430, 500, labels = batman1, ...)
  
  if(nchar(batman) > 26){
    batman2 <- stringr::str_trunc(batman, nchar(batman) - nchar(batman1) + 6, "left", ellipsis = "...")
    text(420, 460, labels = batman2, ...)
  }
  
  
  # robin text --------------------------------------------------------------
  #robin <- "É apenas um teste para poder dividir a frase."
  if(nchar(robin) > 45){stop("Escreva uma frase menor que 45 caracteres.")}
  
  
  # trunc string ------------------------------------------------------------
  robin1 <- stringr::str_trunc(robin, 26, "right", ellipsis = "...")
  text(150, 500, labels = robin1, ...)
  
  if(nchar(robin) > 26){
    robin2 <- stringr::str_trunc(robin, nchar(robin) - nchar(robin1) + 6, "left", ellipsis = "...")
    text(150, 470, labels = robin2, ...)
  }
}