Kandan - Modern Open Source Chat
================================
The slickest chat app out there. Open-source and well-supported to boot.

![](http://github.com/Bushido/kandan/raw/master/public/preview.png)

Standard Features
=================
These are features that work out of the box on any provider:

 * Easy deploy to CloudFuji, CloudFoundry, Heroku, dotCloud, etc.
 * Collaborative team chat
 * Unlimited channels
 * Embed formats for images and youtube videos with requests for others (twitter, facebook, g+, etc.)
 * Synchronized sound player - play any audio-tag compatible url for the whole channel (Pending :P)
 * /me command!
 * Highly extensible plugin format

CloudFuji Extended Features
===========================
In addition to the standard features above, Kandan can take advantage of CloudFuji features when run on our cloud:

* One-click deploy
* Team-aware: Setup your team once, and have them in every CloudFuji app
* Event-aware: Build widgets that display build status, customer signups, website status, and much more

SHUT UP AND LET ME USE IT
=========================

## CloudFuji
If you're part of the CloudFuji Beta you should already have access to Kandan with all the enhanced features from the app store.

Just click launch on here https://bushi.do/apps/new?app=kandan; you and your team should be all setup.

## Cloud Foundry
Looking for community help here

## Heroku
You'll need to have the [heroku gem](https://github.com/heroku/heroku) installed and to have an existing heroku account. Assuming that, this should work reliably on Heroku:

    git clone https://github.com/Bushido/kandan.git
    cd kandan
    heroku create --stack cedar
    git push heroku master
    heroku run rake db:migrate kandan:bootstrap && heroku open
    
    
Your app should be up and running now. The admin email by default is `admin@kandan.me` with password `kandanadmin`, or you can sign up as another user.

## dotCloud
Looking for community help here.

TODO
====
See the issue tracker

Get Involved!
=============
That's not a question, it's an order! Or more of a friendly offer, really. Kandan is a fully open-source app, so dive in and start adding features, fixing bugs (what bugs?), and cleaning up the code.

* Talk with us on the [mailing list])(https://groups.google.com/forum/?fromgroups#!forum/cloudfuji)
* GitHub [issues tracker](https://github.com/Bushido/Kandan/issues)
* Twitter [@cloudfuji](https://twitter.com/#!/cloudfuji)
* [New-wave open-source meetup](www.meetup.com/San-Francisco-New-Wave-Open-Source-Apps/) - we meetup once a month to share tips on how developers grow business around super high-quality open source software
* ... is there a fifth way? Telegram maybe?

LICENSE
=======
Kandan's code and assets are dual-licensed. Kanda is available generally under the AGPL, and also under a custom license via special agreement. See LICENSE for the AGPL terms, and contact us at [support@cloudfuji.com](mailto:support@cloudfuji.com) if you're interested in development of Kandan under a custom license.
