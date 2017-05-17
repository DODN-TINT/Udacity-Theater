Udacity Theater
==============

This is a super simple iOS application that displays the Udacity web interface in full screen "desktop" view. This enables playback speed and other advanced adjustments on the embedded YouTube videos within courses.

Since WKWebView isn't a full browser, there will probably be some UI that doesn't work anymore, like popups and external links.

Instructions
-----------
* Clone this repository
* Open Udacity Theather.xcoeproj in XCode
* Update Team settings to a valid profile on your computer
* Run on your device

How does it work
---------------

The useragent is changed to "Chrome Safari", which triggers desktop display for the loaded page.


License
------
MIT
