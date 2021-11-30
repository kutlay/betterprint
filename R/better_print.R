#' Better Print
#'
#' This function prints the given arguments in the best possible way. Unlike R's base function,
#' function can take unlimited arguments, and simply puts them together.
#'
#' @param ... Arguments to print
#' @return No return, just prints the output.
#' @export
better_print = function(...) {
  arguments = list(...)
  types = c()
  for(argument in arguments) {
    types = c(types, typeof(argument))
  }
  if(all(types == "character")) {
    print(paste0(arguments))
  }
}
