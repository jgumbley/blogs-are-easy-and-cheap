Blogs are easy and cheap!
=========================

People tell me I need a blog and it's easy to be skeptical. However in the IT industry communicating with other humans is at least as important as anything else and a blog is just another way of doing that. Quite recently someone posted on an internal company mailing list where I work asking what an easy and cheap way of setting up a blog would be. In a smart alec kind of way, I responded that "site generation + AWS + a free CDN" was the way forward. Someone came back and argued this was potentially wrong for non-technical folk, however I am technical, so there follows the story of a few hours wasted over a weekend, which in a meta kind of way has also become a first blog post to test out the stack.

When people come to read your blog, they are looking at plain HTML plus some styles. When you write your awesome blog post you are defining that set of HTML and style sheets. Instead of using some overweight web application framework integrated with an ACID compliant datastore, it does seem more efficient to simply write some plain text files and then use a script to generate the HTML files only once. As the script only gets run each time content is added to the site, we save generating the HTML per read request, as would happen with Wordpress or whatever.

Tools of the trade
~~~~~~~~~~~~~~~~~~

The first thing needed is a versioned copy of the drivel I'm going to write, plus the scripts which will generate the HTML and upload the whole lot to the cloud (or whatever). We can get all this for free thanks to open-source software and free-tier commerical cloud services.

For generating the HTML I chose a library for Python, called Tinkerer [#]_. This is based on the pretty mature Sphinx documentation system which is widely used to generate documentation for Python projects. As far as versioning is concerned, Git [#]_ is fine, and the Github.com service adds an off laptop backup and all sorts of other bells and whistles. To host the static files, a free Amazon S3 bucket does the trick- I used a precanned Python script and the Boto AWS integration library [#]_ to automate uploading the files. To tie the whole thing together I decided to go old-school and write a Make script. Finally, so I don't get confused next time I get a new laptop, I wrote a shell script to ensure all the software dependencies are installed- I copped out a little and made it pretty much Mac only, but at least if I do end up wanting to use a Windows or Linux laptop, I can eyeball it to recall how I got here.

Messing around with the Stylesheet
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

After installing all the required tools, initialising the blog with Tinkerer and commiting the non-generated files, I pulled out the theme folder (calles _themes) and commited those into Git as well. Tinkerer worked out pretty well, as it has a pretty minimal initial theme, and I like minimal layouts for things. After fiddling around with the styles (changed font, changed some colours), I removed a few additional sections to make it more minimal. Additionally I added an image of a Powerloom as I love those things and they feel like a good historical analogy for the Cloud Infrastructure of the modern world (which is kind of my thing).

Adding a Makefile
~~~~~~~~~~~~~~~~~

So now the whole thing basically consists of a set of ReStructured text files which represent the posts, the aforementioned themes folder, plus a rubbish script for uploading to S3. While all this is simple enough I added a Makefile to capture and remind myself of the commands needed to manipulate the thing. I added three phony targets - one to create a new post [simply invokes Tinkerer with the required params] another to build the HTML and show it in a Browser [again Mac specific, I used "open"] and other one to invoke the upload script.

.. code-block:: bash 

   make post
   make show
   make upload

Adding a CDN
~~~~~~~~~~~~

I've always enjoyed reading the Cloudflare blog [#]_ , which from time to time contains outstanding articles about technical subjects. Their free tier offering is pretty good, and I already had www.jgumbley.com on there. As I had named my S3 bucket for the intended domain, blog.jgumbley.com, all I needed to was add a CNAME DNS record and I had a nice friendly URL instead of the S3 URL, plus the added benefit of caching just in case any large group of people are foolish enough to look at my blog.

Done
~~~~

Pretty pleased with the effort. I've been concerned about being post-technical for the past few months, and very busy out of work hours. It was pretty satisfying to spend a few hours wiring things together and get a result that I'm pleased with - and satisfies my inital comment on the internal mailing list. I'm not convinced the approach is workable for non-technical people who have no interest in learning technical skills, but if someone had the inclination to learn a bit of Git, Python, Make, and a little about DNS and AWS I'm sure they could fork my repo and work everything out - or else wire things up in their own way.

.. [#] http://tinkerer.me/
.. [#] http://www.git-scm.com/
.. [#] https://github.com/boto/boto 
.. [#] http://blog.cloudflare.com/

.. author:: default
.. categories:: none
.. tags:: none
.. comments::
