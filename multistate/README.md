# MultiState
Multistate widget to control a group of switches, rollershutters, and other items.

The original widget is implemented by [Michael](https://community.openhab.org/u/martmiwp/summary) in this [thread]( https://community.openhab.org/t/custom-widget-multi-state-widget/35913/1).

Changes:

* Items are ordered by their label.
* The widget can be configured to align the buttons on top, handy to make several widgets of different sizes look neater.
* The switch items are now shown without the iOS style indicator, instead the state is indicated with background colour change. This saves space on small displays. The code for the old mode is still in the HTML file.
* Show summary of states and all on/off are now off by default.
* German words have been removed or changed to English.
* A new configuration setting to remove extra words from the items. For example, if the item labels end with "Light" for Amazon Alexa, it can be removed to make the widget more pleasant to the eye. The word can be be in any location of the label.
* Some extra checks to set the item to a good state when it has not been initialised by OpenHAB yet. This is the case, for example, for KNX devices that are not been activated after OpenHAB has been restarted.
