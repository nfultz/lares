####################################################################
#' Google Sheets Reading
#' 
#' This function lets the user read any Google Sheet's data
#' 
#' @param title Character. Textual title of Google Sheet
#' @param ws Character. Working sheet to import
#' @param first_time Boolean. Authenticate manualy
#' @export
readGS <- function(title, ws = "Hoja 1", first_time = FALSE) {
  
  if (first_time == TRUE) {
    options(httr_oob_default = TRUE)
    gs_auth(new_user = TRUE)
  }
  
  gs <- gs_title(title)
  gs <- invisible(gs_read(gs, ws = ws, verbose=F) %>% data.frame())

  return(gs)
  
}

####################################################################
#' Google Sheets Writing
#' 
#' This function lets the user write on any Google Sheet
#' 
#' @param data Data Frame. Data to export to Google Sheet 
#' @param title Character. Textual title of Google Sheet
#' @param ws Character. Working sheet to export to
#' @param cell Character. In which cell should we paste the data (upper left cell)
#' @param first_time Boolean. Authenticate manualy
#' @export
writeGS <- function(data, title, ws = "Hoja 1", cell = 'A1', first_time = FALSE) {

  if (first_time == TRUE) {
    options(httr_oob_default = TRUE)
    gs_auth(new_user = TRUE)
  }

  gs <- gs_title(title)
  invisible(gs_edit_cells(
    gs, ws = ws, input = data, anchor = cell, verbose=F) %>% data.frame())

}
