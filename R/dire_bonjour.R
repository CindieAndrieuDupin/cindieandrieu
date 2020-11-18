#' Fonction pour dire bonjour
#'
#' Cette fonction dit bonjour à une personne qui lui donne son prénom.
#'
#' @param prenom Le prénom de la personne au format 'string'. Par défaut, le prénom est 'toi'.
#' @return print 'Bonjour, <prénom>'
#' @export
#' @importFrom assertthat is.string
#' @importFrom glue glue
#'
#' @examples
#' dire_bonjour("Cindie")
#' dire_bonjour()
dire_bonjour<- function(prenom = "toi") {
  stopifnot(assertthat::is.string(prenom))
  glue::glue("Bonjour, {prenom}")
}
