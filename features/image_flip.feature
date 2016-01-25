Feature: ImageFlip Meme Creation

  Please test the meme creation functionality on "https://imgflip.com/".

  Visit their homepage and from there proceed to the meme creation tool.
  Select a specific meme as the template image (do not use the default),
  add top and bottom sentences, and create the meme.

  In the lightbox, verify that the "Image HTML" value contains
  syntactically valid HTML.

  Proceed to "go to image page", and verify that the title matches the meme
  template. Also verify that the image description on the right contains
  the custom phrases used to create the meme.

  @javascript
  Scenario: Make Meme
    Given I visit imgflip.com
    When I click the meme creation tool
    And upload a photo template
    And add top and bottom sentences
    Then I create a preview
    And the image is stored and referenced correctly

