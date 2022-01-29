
# Cinco Principais Funções do Pacote dplyr -------------------------------------------------------------------------------------------------

# Página Instagram: r descomplicado --------------------------------------------------------------------------------------------------------

# Sobre o pacote ---------------------------------------------------------------------------------------------------------------------------

## O dplyr é uma gramática de manipulação de dados, fornecendo um conjunto consistente
## de funções que ajudam a resolver os desafios mais comuns de manipulações de dados.

# Instalação do pacote ---------------------------------------------------------------------------------------------------------------------

install.packages("dplyr")
library(dplyr)

# Funções ----------------------------------------------------------------------------------------------------------------------------------

## select(): escolhe variáveis com base em seus nomes.

dplyr::starwars # Baixar dados

starwars %>%
  select(name, height, mass)

## mutate(): adiciona novas variáveis que são funções de variáveis existentes.

starwars %>%
  mutate(peso_kg = height/100, 
         IMC = mass/peso_kg^2) %>%
  select(name, IMC)

## filter(): escolhe casos de variáveis com base em seus valores.

starwars %>%
  filter(species == 'Human') %>%
  select(name, height, mass)

## arrange(): altera a ordem das linhas.

starwars %>%
  filter(species == "Human") %>%
  arrange(height) %>%
  select(name, height, mass)

## summarise(): reduz vários valores a um único resumo.

starwars %>%
  filter(species == "Human") %>%
  summarise(mean(height, na.rm = TRUE))

## group_by(): agrupa as variáveis segundo alguma categoria.

starwars %>%
  group_by(species) %>%
  summarise(mean(height, na.rm = T))
