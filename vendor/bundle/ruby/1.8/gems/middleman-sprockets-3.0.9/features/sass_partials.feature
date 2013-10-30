Feature: Sass partials should work with Sprockets

  Scenario: The preview server should update stylesheets when Sprockets partials change
    Given the Server is running at "preview-app"
    And the file "source/stylesheets/main2.css.sass" has the contents
      """
      //= require "_partial2.css.sass"

      red
        color: red
      """
    And the file "source/stylesheets/_partial2.css.sass" has the contents
      """
      body
        font-size: 14px
      """
    When I go to "/stylesheets/main2.css"
    Then I should see "color: red;"
    Then I should see "font-size: 14px"
    And the file "source/stylesheets/main2.css.sass" has the contents
      """
      //= require "_partial2.css.sass"

      red
        color: blue
      """
    And the file "source/stylesheets/_partial2.css.sass" has the contents
      """
      body
        font-size: 18px
      """
    When I go to "/stylesheets/main2.css"
      Then I should see "color: blue;"
    Then I should see "font-size: 18px"