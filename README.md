Affiliate View Controller
=============


About
-----

Affiliate View Controller provides a modal TabViewController which can display a list of links and an about page.  It was developed for use in the [UFO Invader iPhone Game](http://itunes.apple.com/us/app/ufo-invader/id453319490?&partnerId=30&tduid=gmE3OVNK0cQ).

To use it, copy the code into your project, modify the list of apps to display in the AppListDataSource.m file with your own list of affiliate links.

Display it within your app using a modal display.


Using Affiliate View Controller:
-------------------------------

1. Download the code from GitHub:

        git clone git@github.com:mfwarren/AffiliateViewController.git

1. Copy code into your project

1. Modify the list of Apps to show in the AppListDataSource.m file  (sign up at linkshare to become an iTunes affiliate)

1. Display it:
	
    InfoViewController *infoViewController = [[[InfoViewController alloc] init] autorelease];
    AppDelegate * appDelegate = [[UIApplication sharedApplication] delegate];
    [appDelegate presentModalViewController:infoViewController animated:YES];

1. Profit.


Links:
------

1. [Sign up for The LinkShare Affiliate Network](http://click.linksynergy.com/fs-bin/stat?id=gmE3OVNK0cQ&offerid=7097.10000001&type=3&subid=0)

2. [HalOtis Developer Blog](http://halotis.com)

License (MIT)
=============

Copyright (c) 2011 HalOtis Inc.

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.
