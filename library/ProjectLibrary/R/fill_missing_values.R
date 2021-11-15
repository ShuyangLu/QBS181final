# Custom function to fill the missing data by averaging the former 6 days' data

#' Fill Missing Values.
#'
#' @param df Data Frame
#' @param newrow.id Row Index where the imputed row will be appended.
#' This will not overwrite the row that is currently at that row index.
#'
#' @return Vector with impouted values
#' @export
#'
#' @examples
#' fill.missing.values(dataframe, row_index)
fill.missing.values <- function(df,newrow.id){
  newrow <- list()
  value <- c()
  first.row=newrow.id-6
  last.row=newrow.id-1
  col.num=ncol(df)-2
  for (i in 1:col.num){
    subs<-weather.clean[first.row:last.row,i] # Create a new subset for each column
    value<-mean(subs) # Calculate the mean
    newrow<-append(newrow,value)
  }
  return(newrow)
}
