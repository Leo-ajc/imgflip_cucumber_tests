#Technical exercise, automated testing

ImgFlip is a really crappy website. 

![Semantic Fry](https://i.imgflip.com/xxqnb.jpg)

Thanks guys! I really enjoyed spending a couple of hours testing the 
world's crappiest website. 

When the HTML markup is total rubbish, it makes it very difficult to 
write concise and easy to read tests. I have added comments to increase
the readability. Normally I wouldn't rely on comments, but would instead 
correct the markup in the UI to make it easier to test. Not possible in
the case of ImgFlip.

## Note

I would have liked to use a headless browser, however I wasn't able to 
find one that works properly. Given more time I would eventually find 
proper solution. Probably Capybara-Webkit.

I had to add a hack to make the browser wait for dynamic content to load. 
Capybara should do this automatically, but in my experience there is
no perfect solution to this, but there are many hacks. This is part of
javascript tests which I hate most.

##Quickstart

```
$ bundle install
$ cucumber features/image_flip.feature
```  