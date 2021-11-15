#function to change month to number


#' Convert three-letter month abvs to their corresponding numbers
#'
#' @param x 
#' Three-letter month abv
#'
#' @return number between 1 and 12 (inclusive)
#' @export
#'
#' @examples
#' numMonth("jan")
numMonth <- function(x) {
  months <- list(jan=1,feb=2,mar=3,apr=4,may=5,jun=6,jul=7,aug=8,sep=9,oct=10,nov=11,dec=12)
  x <- tolower(x)
  sapply(x,function(x) months[[x]])
}