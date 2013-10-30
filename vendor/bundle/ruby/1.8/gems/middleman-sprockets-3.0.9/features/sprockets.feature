Feature: Sprockets

  Scenario: Sprockets JS require
    Given the Server is running at "sprockets-app2"
    When I go to "/javascripts/sprockets_base.js"
    Then I should see "sprockets_sub_function"
    
  Scenario: javascript_include_tag with opts
    Given the Server is running at "sprockets-app"
    When I go to "/index.html"
    Then I should see "data-name"

  Scenario: asset_path helper
    Given the Server is running at "sprockets-app2"
    When I go to "/javascripts/asset_path.js"
    Then I should see "templates.js"
    
  Scenario: Sprockets JS require with custom :js_dir
    Given the Server is running at "sprockets-app"
    When I go to "/library/js/sprockets_base.js"
    Then I should see "sprockets_sub_function"
    
  Scenario: Plain JS require with custom :js_dir
    Given the Server is running at "sprockets-app"
    When I go to "/library/css/plain.css"
    Then I should see "helloWorld"
    
  Scenario: Sprockets JS should have access to yaml data
    Given the Server is running at "sprockets-app2"
    When I go to "/javascripts/multiple_engines.js"
    Then I should see "Hello One"
    
  Scenario: Sprockets JS should only contain body when requested
    Given the Server is running at "sprockets-app2"
    When I go to "/javascripts/sprockets_base.js?body=1"
    Then I should see "base"
    And I should not see "sprockets_sub_function"
    
  Scenario: Script tags should be provided individually while debugging assets
    Given the Server is running at "sprockets-app-debug-assets"
    When I go to "/index.html"
    Then I should see "data-name"
    Then I should see 'src="/javascripts/dependency2.js?body=1"'
    Then I should see 'src="/javascripts/dependency1.js?body=1"'
    Then I should see 'src="/javascripts/main.js?body=1"'
    
  Scenario: Multiple engine files should build correctly
    Given a successfully built app at "sprockets-app2"
    When I cd to "build"
    Then a file named "javascripts/multiple_engines.js" should exist
    And the file "javascripts/multiple_engines.js" should contain "Hello One"
  
  Scenario: Sprockets CSS require //require
    Given the Server is running at "sprockets-app2"
    When I go to "/stylesheets/sprockets_base1.css"
    Then I should see "hello"
    
  Scenario: Sprockets CSS require @import
    Given the Server is running at "sprockets-app2"
    When I go to "/stylesheets/sprockets_base2.css"
    Then I should see "hello"

  Scenario: Sprockets CSS require with custom :css_dir //require
    Given the Server is running at "sprockets-app"
    When I go to "/library/css/sprockets_base1.css"
    Then I should see "hello"
    
  Scenario: Plain CSS require with custom :css_dir
    Given the Server is running at "sprockets-app"
    When I go to "/library/css/plain.css"
    Then I should see "helloWorld"
    
  Scenario: Sprockets CSS require with custom :css_dir @import
    Given the Server is running at "sprockets-app"
    When I go to "/library/css/sprockets_base2.css"
    Then I should see "hello"