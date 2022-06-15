# comarcasTJMG
Baixa Dados das Comarcas do TJMG

Esse pacote visa facilitar a obtenção de informação relacionada às comarcas do TJMG em relação aos municípios do estado de Minas Gerais.

Para instalar o pacote basta digitar no console:

`remotes::install_github("rdornas/comarcasTJMG")`

Existem três funções no pacote:

1) `read_tjmg`: permite baixar os dados do TJMG e gera um data frame com os municípios, distritos e comarcas em Minas Gerais;
2) `read_municipios_ibge`: baixa uma lista completa de todos os municípios do Brasil com diversas colunas informativas;
3) `comarcas_tjmg`: realiza a consolidação da lista, exibindo os municípios de Minas Gerais e suas respectivas comarcas, complementado com informações do IBGE;

Para rodar as funções, basta digitar o seu nome seguido de parênteses:
`comarcas_tjmg()`

Se esse pacote é útil para você, por favor, cite-o em suas publicações utilizando os dados em `citation("comarcasTJMG")`
