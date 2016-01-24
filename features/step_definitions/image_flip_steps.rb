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
  find('textarea[placeholder="TOP TEXT"]').set('topText')
  find('textarea[placeholder="BOTTOM TEXT"]').set('bottomText')
end

Then "create a preview" do
  find('#mm-settings > div.gen-wrap.clearfix > div.mm-generate.b.but').click
  generated_html = find('#doneUrl > div:nth-child(3) > input').value
  #generated_html = page.all(:css, '.img-code.html').first.value

end

Then "the image is stored and referenced correctly" do
  pending # Write code here that turns the phrase above into concrete actions
end