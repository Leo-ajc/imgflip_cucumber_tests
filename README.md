#Technical exercise, automated testing

## What to test

Please test the meme creation functionality on "https://imgflip.com/".

Visit their homepage and from there proceed to the meme creation tool.  
Select a specific meme as the template image (do not use the default), add top and bottom sentences, and create the meme.

In the lightbox, verify that the "Image HTML" value contains syntactically valid HTML.

Proceed to "go to image page", and verify that the title matches the meme template.  
Also verify that the image description on the right contains the custom phrases used to create the meme.



## Requirements and instructions:

* Work with ruby.
* Use git, and write clear commit messages. The exercise must be submitted as a git repository (either as an archive or as a public repo on GitHub).
* You must use Cucumber as the test runner, but are free to use any other library you want, e.g. to interact with the DOM.
* Describe the tested features in Gherkin.
* You can structure the tests and the project in any way you want.
* No need to support multiple browsers. Pick one.
* Write a readme with instructions on how to run the tests.
* Make the meme funny.