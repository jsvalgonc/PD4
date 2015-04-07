Feature: Cria um novo ingrediente 


Scenario: Cria um ingrediente
    Given I am on ingrediente
    When I follow "Novo Ingrediente"
    And I fill in "ingredient_description" with "batatas"
    And I fill in "ingredient_measurment_unit_id" with "gr"
    When I press "Criar Ingrediente"
    Then page should have notice message "O ingrediente foi criado com sucesso."
    
