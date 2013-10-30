Feature: Sprockets JST

  Scenario: EJS
    Given the Server is running at "sprockets-app2"
    When I go to "/javascripts/templates.js"
    Then I should see '["_templates/test"] = function'
    And I should see '["_templates/test2"] = function'
    
  Scenario: Multiple engine files should build correctly
    Given a successfully built app at "sprockets-app2"
    When I cd to "build"
    Then a file named "javascripts/templates.js" should exist
    And the file "javascripts/templates.js" should contain '["_templates/test"] = function'
    And the file "javascripts/templates.js" should contain '["_templates/test2"] = function'