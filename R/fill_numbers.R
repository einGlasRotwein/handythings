
#' Fill numbers to a specified amount of digits
#'
#' @param number A vector of numbers that should be filled.
#' @param digits Integer. How many digits the final numbers should have.
#' @param filler Character or numeric of length 1. What the number should be filled up with.
#'
#' @details
#'
#' Fills up numbers to a specified amount of digits. E.g. 1 becomes 001,
#' 22 becomes 022 etc. Returns a string, which means that characters can be
#' used as fillers (e.g. "XXX43").
#'
#' Fillers are supposed to have a length of 1. Using longer fillers might lead to
#' unexpected results e.g. using "XX" as a filler for \code{c(4, 99, 123)} returns
#' \code{"XX4", "XX99", "123"}.
#'
#' @examples
#'
#' fill_numbers(c(4, 99, 123), digits = 3)
#'
#' fill_numbers(c(4, 99, 123), digits = 3, filler = "X")
#'
#' @author Juliane Tkotz \email{juliane.tkotz@@zi-mannheim.de}
#' @export
#'
# Fill up image numbers with 0s. (I.e. 1 becomes 001, 22 becomes 022 etc.)
fill_numbers <- function(number, digits, filler = 0) {
  for(i in 1:digits) {
    number[nchar(number) < i] <- paste0(filler, number[nchar(number) < i])
  }

  return(number)
}
