# News-APIs
An example of how to pull in and visualize data from news websites

I initially used this tutorial to start http://blog.blprnt.com/blog/blprnt/processing-json-the-new-york-times 
It is a great tutorial and walks through everything clearly.  There were only a few issues I had with it.
1. It was created before the NYT updated their api so the http protocols were outdated.  I updated those
2. It was created before Processing had built their own JSON library into processing.  The person who designed this tutorial was awesome and made their own library.. but ultimately it is easier to use the one that processing created.  
3. I learned that in order to pull a piece of data out you have to pull the larger layers that data is wrapped in first, and essentially jump down into the data that you want.  You cant just ask for it right off the bat.

I created a really simple visualization here since this is just an example, but you can filter data a lot of different ways.  A good way to find all of the filters you can use is by going to the NYT developer page.  You can find that here:  http://developer.nytimes.com/
Personally, I think you are best able to debug and see what is going on when you look at the article search in console mode.  It gives you a peek underneath the hood. 

