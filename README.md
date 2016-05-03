# GrandMA 2 CSV patching

This plugin imports a given .csv (Comma Seperated Values) file with fixture numbers and Universe/DMX addresses and uses this information to auto-patch fixtures.

**Please be aware that this plugin only works with onPC software as of now!**

## How to use

### CSV creation

In order to use the plugin, you first need to create the .csv file. Usually, M$ Excel can do this. Make sure, that there are only two columns and no headings in your file. Only CSV files with ; as delimiter and no encapsulating characters are supported.
The first column needs to be your fixture IDs (Channel IDs are not supported!) without any special characters - only numbers are allowed!
The second column should be the Universe/DMX Address information as entered into the MA patch window. E.g. 4.211 for universe 4, address 211.
Export your table as patch.csv and save it on a USB drive. The filename is important!

### Import to GMA2

Before starting to import, you first need to set up your fixtures. What the plugin cannot do for you is adding fixtures, layers, do the numbering or anything else!
This plugin is only intended to keep you from patching hundrets of fixtures, probably not addressed in a row, across several layers.
So what you need to do first, is import fixture profiles, give them fixture IDs, put them into layers etc. Like you would normally do.
The only difference is, that you do not need to add addresses yourself. Close the setup window and start the plugin (assuming you already imported it into your showfile).
You will be asked for the letter under which your USB drive is mounted. 'D' is common but it could also be 'E', 'F' or whatever.
When you hit PLEASE, the magic will happen.
But please have in mind: It is very important that the fixture IDs in the .csv file match the fixture IDs of your setup!
