#' Funcao que baixa o arquivo Excel contendo a listagem oficial de municipios cadastrados no IBGE.
#'
#' @return Data frame dos municípios do IBGE
#' @export
read_municipios_ibge <- function() {

  url_ibge <- "https://geoftp.ibge.gov.br/organizacao_do_territorio/estrutura_territorial/divisao_territorial/2022/DTB_2022.zip"

  # Cria uma pasta temporaria
  td <- tempdir()

  # Cria um arquivo .zip temporario
  tf <- tempfile(tmpdir = td, fileext = ".zip")

  # Realiza o download do arquivo do IBGE e salva no arquivo temporario
  utils::download.file(url_ibge, tf)

  # Lista os arquivos zipados dentro do arquivo temporario
  file_names <- utils::unzip(tf, list = TRUE)

  # Realiza a extracao dos arquivos temporarios dentro da pasta temporaria
  utils::unzip(tf, exdir = td, overwrite = TRUE)

  # Le dados do Excel de municipios
  munic_ibge <- readxl::read_xls(file.path(td, file_names$Name[4])) |>
    janitor::clean_names()

  # Deleta arquivos e pasta
  unlink(td)

  munic_ibge
}
