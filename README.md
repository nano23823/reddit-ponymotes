Some Ponymotes
==============

This repository contains emotes for several MLP related subs on reddit:

* [/r/AppleFritter](http://www.reddit.com/r/AppleFritter/)
* [/r/Blossomforth](http://www.reddit.com/r/Blossomforth/)
* [/r/CheeseSandwichmlp](http://www.reddit.com/r/CheeseSandwichmlp/)
* [/r/StarlightGlimmer](http://www.reddit.com/r/StarlightGlimmer/)

See the credits file in each sub's directory for source links. MLP and related characters remain the property of Hasbro.

Building
--------

Run `make` in the root directory to build everything at once. Each sub's directory has its own Makefile, and every sprite sheet is a buildable target in those. The `emotes.conf` file assigns the emotes to a sheet and determines their order.

In addition to basic GNU tools, you will need these graphics programs in your path:

* [apngasm](http://apngasm.sourceforge.net/)
* [apngdis](http://apngdis.sourceforge.net/)
* [gif2apng](http://gif2apng.sourceforge.net/)
* [ImageMagick](http://www.imagemagick.org/)
* [optipng](http://optipng.sourceforge.net/)

Scripts
-------

There are several utility scripts in the bin directory:

* `animote2css` - converts an APNG into a sprite sheet with CSS3 animation rules (requires ruby and [RMagick](http://www.imagemagick.org/RMagick/doc/))
* `cssgen` - generates CSS rules for the emotes (also requires ruby and [RMagick](http://www.imagemagick.org/RMagick/doc/))
* `gifsheet` - stacks animated GIFs of matching frame and rate into one (no longer necessary since reddit started supporting CSS3), or recolors GIFs; examples for the latter exist in this repository
* `mdtables` - generates Markdown tables containing the emotes for pasting into your sidebar
