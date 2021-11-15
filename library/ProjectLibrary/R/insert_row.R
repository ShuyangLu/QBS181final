# Custom function to insert the new row


#' insert a row into a data frame at a specified row index.
#'
#' @param existingDF data frame
#' data frame you want to add a row to.
#' @param newrow integer
#' row index where the row should be added
#' @param r vector
#' row that you want to add to the data frame.
#'
#' @return updated data frame
#' @export
#'
#' @examples
#' insertRow(existingDF, newrow, r)
#'
insertRow <- function(existingDF, newrow, r) {
  existingDF[seq(r+1,nrow(existingDF)+1),] <- existingDF[seq(r,nrow(existingDF)),]
  existingDF[r,] <- newrow
  existingDF
}
