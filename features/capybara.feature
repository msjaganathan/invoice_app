Feature: Capybara's cucumber integration
  In order to integrate with the plain text testing framework
  As Capybara
  I want to integrate successfully with Cucumber
  
  @test1
  Scenario: Searching for invoice list
    Given I visit the root page
    When I should see "INVOICE CREATOR"
    Then I should see "Search" button
    And I fill "Raja" in search options
    And I click "Search" button
    Then I should see "Raja" 
    Then I should see "New" link
  
  @test2
  Scenario: Create New Invoice
    Given I visit the root page
    When I should see "INVOICE CREATOR"
    Then I click "New" link
    Then I should see "New Invoice"
    Then I should see "<name>":
    |name|
    |InvoiceNo.|
    |Name|
    |Total Amount|
    And I fill "Faruk" in name 
    #And I fill in the fields:
    #|field      |value|
    #|Slno       |1010|
    #|Unit       |20|
    #|Description|Provisonary products|
    #|Amount     |2500|
    #Then I should see "Submit" button
    #And I click "Submit" button
    
  @test3  
  Scenario: Validate the Invoice form
    Given I visit the root page
    When I should see "INVOICE CREATOR"
    Then I click "New" link
    Then I should see "New Invoice"
    Then I should see "<name>":
    |name|
    |InvoiceNo.|
    |Name|
    |Total Amount|
    And I fill "Faruk" in name 
    Then I should see "Submit" button
    And I click "Submit" button
    Then I should see "Total Amount is required"
    Then I should see "Total Amount must be in numbers"
  
  @test4
  Scenario: Showing Invoice list
    Given I visit the root page
    When I should see "INVOICE CREATOR"
    Then I click "Next" link
    Then I should see "Show" link
    Then I click "Show" link
    And I should see "Showing Invoice"
    Then I should see "<name>":
    |name|
    |InvoiceNo.|
    |Name|
    |Total Amount|
    |Slno|
    |Unit|
    |Description|
    |Amount|
    Then I should see "Edit" link
    Then I should see "Back" link







