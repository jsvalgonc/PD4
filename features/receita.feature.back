Feature: Criação e Manutenção de uma receita
 
Scenario: Cria uma unidade de medida
    Given I am on the paginaPrincipal
    When I follow "Nova Receita"
    And I fill in "descrição" with "Bacalhau com batatas"
    When I press "Criar Nova Receita"
    Then page should have notice message "Receita Criada com Sucesso."
    When I fill in "Ingrediente" with "Bacalhau" 
    And    I fill "Quantidade" with "1000" 
    And I press "Adicionar Ingrediente" 
    Then page should have notice message "Ingrediente Adicionado."
    When I fill in "Ingrediente" with "Batatas" 
    And    I fill "Quantidade" with "500" 
    And I press "Adicionar Ingrediente" 
    Then page should have notice message "Ingrediente Adicionado."
    When I fill in "Procedimento" with "Cozer tudo" 
    And I press "Adicionar Procedimento" 
    Then page should have notice message "Procedimento Adicionado."
        
    