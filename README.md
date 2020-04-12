# openhab-widgets
Some OpenHAB widgets I've found from the net and then improved to fit my needs. To keep track of my changes, I've added them to this repository. Hopefully someone else finds them useful, too.

The repository contains the following widgets. **N.B.** The widgets are separate from each others, I just happen to use them all and thus have collected them together.

Read the separate README.md files in each widget directory for more information.

* **MultiState** – provides a handy widget to control a group of switches or rollershutters.

## Widget files

Each widget directory contains the following files:

* **[WidgetName].template** – Widget JSON template used as a skeleton in the widget building process.
* **[WidgetName].widget.html** – HTML / Angular code of the widget.
* **[WidgetName].settings.json** – Settings of the widget, used to generate the configuration user interface.

I ended up splitting the widget into several files so that they are easier to change and still there is a possibility to create a widget file for OpenHAB.

## Generating OpenHAB widget

OpenHAB stores a widget in a JSON file that contains everything and is thus quite hard to edit. This repository contains a script `build-widget.sh`that can be used to build a widget from the aforementioned files.

To use the script, execute it in the shell:

`./build-widget.sh multistate/MultiState

The command builds `MultiState` widget in `multistate` directory and creates the final widget JSON into `multistate/widget/MultiState.widget.json`file, ready to be uploaded to OpenHAB.
