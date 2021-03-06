#' Custom theme for thesis plots
#'
#' @param text_size text size for thesis plots
#' @param line_size size of the axis lines
#' @param rect_size sizs of the background lines
#'
#' @return adds thesis theme to a plot generated by ggplot2
#'
#' @seealso Adapted from https://www.r-bloggers.com/custom-themes-in-ggplot2/
#'
#' @export
#' @importFrom ggplot2 theme_minimal
#' @importFrom ggplot2 '%+replace%'
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_text
#' @importFrom ggplot2 element_line
#' @importFrom ggplot2 rel
#' @importFrom grDevices rgb
theme_thesis <- function(text_size = 12,
                         line_size = text_size / 170,
                         rect_size = text_size / 170,
                         center_title = FALSE){
  # Take theme minimal ...
  theme_minimal(base_size = text_size) %+replace%
    # ... and replace these values
    theme(
      plot.title = element_text(
        color = rgb(25, 43, 65, maxColorValue = 255),
        face = "bold",
        hjust = 0,
        size = rel(1.7)),
      plot.subtitle = element_text(
        color = rgb(25, 43, 65, maxColorValue = 255),
        face = "italic",
        hjust = 0,
        size = rel(1.4)),
      legend.title = element_text(
        color = rgb(105, 105, 105, maxColorValue = 255),
        size = rel(1.4)),
      legend.text = element_text(
        color = rgb(105, 105, 105, maxColorValue = 255),
        size = rel(1.4)),
      axis.title = element_text(
        color = rgb(105, 105, 105, maxColorValue = 255),
        size = rel(1.4)),
      axis.text = element_text(
        color = rgb(105, 105, 105, maxColorValue = 255),
        size = rel(1.4)),
      strip.text = element_text(
        color = rgb(25, 43, 65, maxColorValue = 255),
        face = "bold",
        hjust = ifelse(center_title, 0.5, 0),
        size = rel(1.4)
      ),
      axis.line = element_line(color = rgb(105, 105, 105, maxColorValue = 255), size = 0.5),
      complete = TRUE
    )
}
