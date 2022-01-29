
# Cinco Principais Funções do Pacote dplyr -------------------------------------------------------------------------------------------------

# Página Instagram: r descomplicado --------------------------------------------------------------------------------------------------------

# Sobre o pacote ---------------------------------------------------------------------------------------------------------------------------

## O dplyr é uma gramática de manipulação de dados, fornecendo um conjunto consistente
## de funções que ajudam a resolver os desafios mais comuns de manipulações de dados.

# Instalação do pacote ---------------------------------------------------------------------------------------------------------------------

install.packages("dplyr")
library(dplyr)

# Funções ----------------------------------------------------------------------------------------------------------------------------------

## select(): escolhe variáveis com base em seus nomes

dplyr::starwars # Baixar dados

starwars %>%
  select(name, height, mass)

