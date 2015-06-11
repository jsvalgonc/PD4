Feature: Criação e Manutenção de uma receita
 
Scenario: Cria uma unidade de receita
    Given I am on the paginaPrincipal
    When I follow "Receitas"
    When I follow "Nova Receita"
    And I fill in "recipe_title" with "Bacalhau com batatas"
    And I click "Adiciona Ingredientes"
    When I select "Aipo" from "recipe_recipe_ingredients_attributes_0_ingredient_id" 
    And    I fill "recipe_recipe_ingredients_attributes_0_amout" with "1000" 
    When I fill in "recipe_recipe_ingredients_attributes_1_ingredient_id" with "Batatas" 
    And    I fill "recipe_recipe_ingredients_attributes_1_amout" with "500"
    When I fill in "recipe_recipe_ingredients_attributes_2_ingredient_id" with "Azeite" 
    And    I fill "recipe_recipe_ingredients_attributes_2_amout" with "10"
    And I press "Adicionar Ingrediente" 
    When I fill in "recipe_recipe_ingredients_attributes_3_ingredient_id" with "Alho" 
    And    I fill "recipe_recipe_ingredients_attributes_3_amout" with "1"
    When I fill in "recipe_procedure" with "Cozer tudo" 
    When I press "Criar"
    Then page should have notice message "Receita Criada com Sucesso."
        
    