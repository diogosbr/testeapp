meme <- function(robin1, robin2, robin3 = "", 
                 batman1, batman2, batman3 = "",
                 bat.pos1 = c(430, 500),
                 bat.pos2 = c(420, 460),
                 bat.pos3 = c(420, 420),
                 rob.pos1 = c(150, 500),
                 rob.pos2 = c(150, 470),
                 rob.pos3 = c(150, 440),
                 ...){
  
  # plot base pic -----------------------------------------------------------
  pic <- jpeg::readJPEG("inst/app/www/batman.jpg")
  
  par(mar = c(0,0,0,0))
  plot(as.raster(pic))  
  
  # batman text -------------------------------------------------------------
  text(bat.pos1[1], bat.pos1[2], labels = batman1, ...)
  
  if(nchar(batman2) > 0){
    text(bat.pos2[1], bat.pos2[2], labels = batman2, ...)
  }
  if(nchar(batman3) > 0){
    text(bat.pos3[1], bat.pos3[2], labels = batman3, ...)
  }
  
  
  # robin text --------------------------------------------------------------
  text(rob.pos1[1], rob.pos1[2], labels = robin1, ...)
  
  if(nchar(robin2) > 0){
    text(rob.pos2[1], rob.pos2[2], labels = robin2, ...)
  }
  if(nchar(robin3) > 0){
    text(rob.pos3[1], rob.pos3[2], labels = robin3, ...)
  }
}