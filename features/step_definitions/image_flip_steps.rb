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

  page.attach_file('mm-upload-file', File.absolute_path('./assets/futurama_fry.jpg'))
  fill_in 'customName', with: 'foo'
  click_button 'Upload'
end

When "add top and bottom sentences" do
  @dummy_top_text = 'Semantic'
  @dummy_bottom_text = 'HTML'
  find('textarea[placeholder="TOP TEXT"]').set(@dummy_top_text)
  find('textarea[placeholder="BOTTOM TEXT"]').set(@dummy_bottom_text)
end

Then "I create a preview" do

  find('#mm-settings > div.gen-wrap.clearfix > div.mm-generate.b.but').click # Show Preview

  # I don't like doing this. Capybara's 'find' method should already wait.
  # However it isn't working. This also lockes me into the Selenium Webdriver
  wait = Selenium::WebDriver::Wait.new(:timeout => 10)
  wait.until { find('#doneUrl > div:nth-child(3) > input') }

  # share html embed field
  generated_html = find('#doneUrl > div:nth-child(3) > input').value
  html_fragment_errors = Nokogiri::HTML5.fragment(generated_html).errors
  expect(html_fragment_errors.length).to eq(0)
  # The HTML image doesn't have a 'alt' attribute. Which should throw a
  # error. However Nokogumbo Gem doesn't seem to catch this.

  find('#doneLinks > a').click
end

Then "the image is stored and referenced correctly" do
  # Normally I would exactly specify the element to test.
  # However ImgFlip has shitty HTML markup.
  # This is my compromise to both specificity and sensitivity.

  # image description on the right contains the custom phrases used to create the meme.
  image_description = find('#fPanel').text  # ImgFlip upcases both top and bottom text
  expect(image_description).to match(%r{#{@dummy_top_text}}i)
  expect(image_description).to match(%r{#{@dummy_bottom_text}}i)

  # Verify that the title matches the meme template
  image_title = find('#im')['alt']
  expect(image_title).to match(%r{#{@dummy_top_text}}i)
  expect(image_title).to match(%r{#{@dummy_bottom_text}}i)

  puts '**************************************************************************'
  puts page.current_url
  puts '**************************************************************************'
end