Feature: Forms practice

Background:
  Given my website is up and running
  
Scenario: Validate fields are not empty
  When I visit "practice/forms1.php"
  Then I should see 1 "form" elements on the page
  When I press "Submit"
  Then I should see "You need to enter a value."
  When I enter "Something" into the "field_1" field
  And I press "Submit"
  Then I should not see "You need to enter a value."
  
Scenario: Check for field is too long
  When I visit "practice/forms2.php"
  Then I should see 1 "form" elements on the page
  When I enter "Something that is too long" into the "field_1" field
  And I press "Submit"
  Then I should see "Maximum length is 10"
  When I enter "Something" into the "field_1" field
  And I press "Submit"
  Then I should not see "Maximum length is 10"
  
Scenario: Check for checkboxes, selects and radios
  When I visit "practice/forms3.php"
  Then I should see 1 "form" elements on the page
  Then I should see 5 "option" elements on the page
  Then I should see 5 "input[type=checkbox]" elements on the page
  Then I should see 5 "input[type=radio]" elements on the page
  
Scenario: Check for redirect after submit
  When I visit "practice/forms1.php"
  Then I should see 1 "form" elements on the page
  When I enter "Something" into the "field_1" field
  And I press "Submit"
  Then I should be on 'practice/afterSubmit.php'
  

  