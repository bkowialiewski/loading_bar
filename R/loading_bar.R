#' @export
loading_bar = function(start, end, current) {

    n = 40
    proportion_done = (current - start) / (end - start)
    done_display = floor(n * proportion_done)

    to_display = rep(" ", n)
    for (i in 1:n) {
        if (i <= done_display) {
            to_display[i] = "="
        }
    }

    to_display = c("[", to_display, "] ", floor((done_display/n) * 100), "%")
    to_display = paste(to_display, collapse = "")

    # print status
    cat('\r',to_display)
    flush.console()

}
