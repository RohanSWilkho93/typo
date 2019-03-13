Feature: Create and Edit Categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add and edit categories 
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create and edit categories
    Given I am on the new categories page
    When I fill in "category_name" with "HW-4"
    And I fill in "category_keywords" with "ABC"
    And I fill in "category_permalink" with "DEF"
    And I fill in "category_description" with "GHI"
    And I press "Save"

    Then I should see "HW-4"
    Then I should see "ABC"
    Then I should see "DEF"
    Then I should see "GHI"
    
    When I follow "HW-4"

    And I fill in "category_keywords" with "123"
    And I fill in "category_permalink" with "456"
    And I fill in "category_description" with "789"
    And I press "Save"
    
    Then I should see "HW-4"
    Then I should see "123"
    Then I should see "456"
    Then I should see "789"