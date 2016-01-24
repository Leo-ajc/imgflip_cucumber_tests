Given "I visit imgflip\.com" do
  visit 'https://imgflip.com'
end

When "I click the meme creation tool" do
  find('#nav-make-inner').hover # activate drop down menu.
  click_link 'Caption a Meme or Image' # click drop down menu element.
end

When "upload a photo template" do
  find('#mm-show-upload').click # Click to reveal upload controls.
  #WTF shitty HTML

  page.attach_file('mm-upload-file', File.absolute_path('./assets/long_cat_is_long.jpg'))
  fill_in 'customName', with: 'foo'
  click_button 'Upload'
end

When "add top and bottom sentences" do
  pending # Write code here that turns the phrase above into concrete actions
end

Then "create a preview" do
  pending # Write code here that turns the phrase above into concrete actions
end

Then "the image is stored and referenced correctly" do
  pending # Write code here that turns the phrase above into concrete actions
end