#' Insert (\(x) ).
#'
#' Call this function as an addin to insert \code{ (\\(x)  ) }
#' at the cursor position and move two positions backwards.
#'
#' @export
insertAnonymousAddin <- function() {
  rstudioapi::insertText(text = "(\\(x)  )")
  pos <- rstudioapi::primary_selection(rstudioapi::getActiveDocumentContext())
  pos$range$end[2] <- pos$range$end[2] - 2
  rstudioapi::setCursorPosition(pos$range)
}
