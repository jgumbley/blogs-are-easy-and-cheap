Blogs are Easy and Free
~~~~~~~~~~~~~~~~~~~~~~~

Wherein I will demonstrate that a high tech blog is easy and cheap even if you are not a technology bad-ass. Blogs are low write high read web applications, which are infrequently updated by lets assume, a single person. The first thing we do is make the origin request cheap, i.e. no database calls, state or application stack. The second thing we almost get for free is using the power of HTTP and a content delivery network to cache the response, just in case HackerNews, Slashdot, or Mumsnet link to your self referencing inane prose. The technologies I've described are so insanely cheap nowadays that you can get all of this for free.

Clone this repo
===============

You want to have a versioned copy of the drivel you're going to write, plus the scripts which generate the HTML (we are not going to write plain HTML) and upload the whole lot to the cloud (or whatever). We can get for free as we are living in the future. All you need to do is fork this repository to your own account, using GitHub.com, then clone that locally so you can add blog posts to it.

When people come to read your blog, they are looking at plain HTML plus some styles. When you write your awesome blog post you are defining that set of HTML and style sheets. Instead of using some overweight web application framework integrated with an ACID compliant datastore, we are just going to write some plain text files and then use a simple script to generate the HTML files. Note you will have to run the script each time you add to the content on the site, but when you think how much more efficient this is than generating the HTML per read request you'll see this is fine. 


Choose a static site generation framework.
==========================================

When people come to read your blog, they are looking at plain HTML plus some styles. When you write your awesome blog post you are defining that set of HTML and style sheets. Instead of using some overweight web application framework integrated with an ACID compliant datastore, we are just going to write some plain text files and then use a simple script to generate the HTML files. Note you will have to run the script each time you add to the content on the site, but when you think how much more efficient this is than generating the HTML per read request you'll see this is fine.


