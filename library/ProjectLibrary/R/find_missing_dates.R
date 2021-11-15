#Custom function to find the missing date in the date column

#' Identify Missing Dates in Time Series Data
#' This function returns missing dates that should be included in the df
#'
#' @param d Data Frame containing time series data
#'
#' @return date object
#' @export
#'
#' @examples
#' find.missing.dates(data_frame)
find.missing.dates <- function(d) {
  date_range <- seq(min(d), max(d), by = 1)
  date_range[!date_range %in% d]
}
