Feature: Sass should glob partials like sass-rails

  Scenario: Sass globbing should work
    Given the Server is running at "glob-app"
    When I go to "/stylesheets/main.css"
    Then I should see "module1"
    And I should see "module2"
    And I should see "shared-root"
    And I should see "bootstrap"