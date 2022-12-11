
library(magick)
library(purrr)


file_names <- list.files(path="~/Downloads/2022/heic-folder", pattern='.HEIC', all.files=FALSE, full.names=FALSE)
file_names <- file_names %>%   substring(., 1, nchar(.)-5)

heic_function <- function(file){
  image_heic <- image_read(paste0('~/Downloads/2022/heic-folder/', file, '.heic'))
  image_jpeg <- image_convert(image_heic, 'jpeg')
  image_write(image_jpeg, path = paste0('~/Downloads/2022/jpg-folder/', file, '.jpeg'), format = ".jpeg")
}

map(file_names, heic_function)




            