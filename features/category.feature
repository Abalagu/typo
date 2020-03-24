Feature: Create a category
  As an admin,
  In order to post blog posts,
  I want to be able to add categories to the blog site
  
Background:
  Given the blog is set up
  And I am logged into the admin panel
  
Scenario: Successfully created categories
  Given I am on the new category page
  When I fill in "category_name" with "new category"
  And I fill in "category_keywords" with "mystery"
  And I fill in "category_permalink" with "any permalink"
  And I fill in "category_description" with "the first category"
  And I press "Save"
  Then I should see "new category"
  Then I should see "mystery"
  Then I should see "any permalink"
  Then I should see "the first category"
  
  