#' Funcao que lê o arquivo Excel contendo a listagem oficial de municipios cadastrados no IBGE para o ano 2021. Baixado de: "https://geoftp.ibge.gov.br/organizacao_do_territorio/estrutura_territorial/divisao_territorial/2021/DTB_2021.zip" em 27/10/2023.

#'
#' @return Data frame dos municípios do IBGE
#' @export
read_municipios_ibge <- function() {

  # Le dados do Excel de municipios
  munic_ibge <- readxl::read_xls("data/RELATORIO_DTB_BRASIL_MUNICIPIO_2021.xls") |>
    janitor::clean_names()

  munic_ibge
}
