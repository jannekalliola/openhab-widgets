# SonosControlWithArt
Widget to control Sonos playback while showing the currently playing album image.

The original widget is implemented by [scootaash](https://community.openhab.org/u/scootaash/summary) in this [thread](https://community.openhab.org/t/habpanel-sonos-widgets/70987).

Changes:

* Changed the widget to use URL instead of image. My suspicion is that OpenHAB leaks memory with Image items.
* Changed the layout to use absolute position so that the texts and buttons are on top of the image. Added translucent background to the areas to make the text more readable.
* Added an option to turn off displaying the artist. My Sonos adds the artist name to the title, so this is just extra.
* Added some checks to reduce errorenous image displays.
* Provided two rules (file `widget/sonos.rules`) to increase and decrease volume. These can be used instead of chill and loud volume rules provided by Scootaash.
