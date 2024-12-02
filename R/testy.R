#' A function for testing your own function
#'
#' This function allows you to parse the default parameters in the function you are testing.
#' @param func A function in testing
#' @export
testy <- function(func) {
  # Extract the parameters of the given function
  params <- formals(func)

  # Loop through each parameter and assign it to the global environment
  for (param_name in names(params)) {
    # Use 'assign' to put each parameter in the global environment
    assign(param_name, eval(params[[param_name]]), envir = .GlobalEnv)
  }

  cat("Parameters have been assigned to the global environment.\n")
}
