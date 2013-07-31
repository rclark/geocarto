## FGDC Cartographic Standard for Geologic Maps

... has always been available in [text formats](http://ngmdb.usgs.gov/fgdc_gds/geolsymstd.php)

... and is now available in [CartoCSS](http://www.mapbox.com/carto/api/2.1.0/)


This is useful if you want to make geologic maps in TileMill, which is useful if you think geologic maps should be pretty and online. I tried to be as true to the spec as possible, but its hard to be precise about dimensions in terms like "mm" when you're dealing with a variable-zoom map.

The `svg` folder contains .svg files that provide line-decoration markers and structural symbols. Notice that the files are named according to their respective FGDC symbol identifier.

## To Use this in TileMill:

1. __Install [Node.js](http://nodejs.org/download/)__
2. __Download [TileMill](http://www.mapbox.com/tilemill/)__
3. __Get some geologic map data__ into a format that TileMill can read. This includes ESRI Shapefiles, KML, GeoJSON, GeoTIFF, PostGIS, CSV, and SQLite. 
    - The one requirement presently is that your map data needs to have a "fgdc_key" column. This column should contain the FGDC symbol identifiers such as "1.1.1" for an accurate contact (solid black line). Aside from that, it doesn't matter how your data is structured.
4. __Clone this repository__ into the right place. Generally TileMill makes a "MapBox" directory in your "Documents" folder (on OSX and Windows, at least). Inside that directory is a "project" one. This is where your various TileMill projects live. Clone this repository into that `project` directory. For example, on OSX:

        cd /Users/ryan/Documents/MapBox/project
        git clone https://github.com/rclark/geocarto.git
        
5. __Setup a Project__ by running `node build-project.js`
6. __Open TileMill__ and there should be a "FGDC Symbols" project.
7. __Add your data__ to the project. It is important that you give your layers appropriate class names.
    - Give your lines the class name `geolines`
    - Give your points the class name `structurepoints`
    - Give your polygons the class name `geopolys`
    
*Note: the given polygon color will likely not be valid for your map. Take a look in the `polys` folder for ways you might be able to quickly generate your polygon symbology.*

## OR!
If you want to be simple about it, just make a TileMill project and copy some of my code into your own .mss files. Make sure to grab any .svg files for the FGDC symbol rules that you're using.

## If you want to Help

... and you should! I won't be able to completely finish this myself, and you'll inevitably find that there are symbols you want from the FGDC standard that haven't been written out here yet. Follow the [fork my repository](https://help.github.com/articles/fork-a-repo) instructions provided by GitHub, make some changes, and then [make a pull request](https://help.github.com/articles/using-pull-requests). Also, read these things:
- [About CartoCSS in general](http://www.mapbox.com/tilemill/docs/manual/carto/)
- [CartoCSS Reference](http://www.mapbox.com/carto/api/2.1.0/)
- [FGDC Standard](http://ngmdb.usgs.gov/fgdc_gds/geolsymstd.php)
- My Style-Guide (coming soon...)

If you're working with the FGDC symbol standard in some other system, keep in mind that the most time-consuming part of this project is getting the .svg files for point symbols and line decorations. If your workflow includes a step where you might be able to export .svg files, do it, and ship them over to me! I'll be really grateful.

## Progress Report:
_This is what I've done so far..._

### Section 1: Contacts, Key Beds, and Dikes

Key | Name | Notes
--- | --- | --- 
1.1.1 | Contact | 
1.1.2 | Questionable contact | 
1.1.3 | Approximate contact | 
1.1.7 | Concealed contact | 

### Section 2: Faults

Key | Name | Notes
--- | --- | --- 
2.1.1 | Fault | 
2.1.3 | Approximate fault | 
2.1.7 | Concealed fault |
2.2.1 | Normal fault | bar and ball decoration
2.2.3 | Approximate normal fault | bar and ball decoration
2.2.7 | Concealed normal fault | bar and ball decoration
2.8.1 | Thrust fault (1st option) | filled triangle decoration
2.8.3 | Approximate thrust fault (1st option) | filled triangle decoration
2.8.7 | Concealed thrust fault (1st option) | filled triangle decoration
2.10.1 | Detachment fault | double hatch decoration
2.10.3 | Approximate detachment fault | double hatch decoration
2.10.7 | Concealed detachment fault | double hatch decoration
2.10.33 | Listric fault | single hatch decoration
2.10.35 | Approximate listric fault | single hatch decoration
2.10.39 | Concealed listric fault | single hatch decoration
2.12.1 | Scarp on fault | single hatch, closely spaced decoration

### Section 3: Boundaries Located by Geophysical Surveys

_nothing yet_

### Section 4: Lineaments and Joints

Key | Name | Notes
--- | --- | --- 
4.3.8 | Small joint | square

### Section 5: Folds

_nothing yet_

### Section 6: Bedding

Key | Name | Notes
--- | --- | --- 
6.1 | Horizontal bedding | 
6.2 | Bedding | classic strike-and-dip
6.3 | Vertical bedding | 
6.13 | Bedding with top known | strike-and-dip with ball on the end
6.33 | Approximate bedding | dashed strike-and-dip

### Section 7: Cleavage

Key | Name | Notes
--- | --- | --- 
7.2 | Cleavage | 
7.14 | Disjunctive, spaced cleavage | 
7.20 | Symmetric crenulation clevage | 
7.26 | S-shaped asymmetric cleavage | 

### Section 8: Foliation

Key | Name | Notes
--- | --- | --- 
8.1.2 | Generic foliation | hollow triangle with a hash inside
8.2.3 | Igneous foliation | hollow triangle
8.3.2 | Metamorphic foliation | solid triangle
8.3.3 | Vertical metamorphic foliation | solid black triangles

### Section 9: Lineation

Key | Name | Notes
--- | --- | --- 
9.1 | Generic lineation (1st option) | black arrow
9.2 | Generic lineation (2nd option) | hollow arrow
9.9 | Parting lineation | solid arrow with double hash
9.17 | Slickenline or fault striation (1st) | 
9.18 | Slickenline or fault striation (2nd) | 
9.25 | Aligned-object lineation |
9.121 | Symmetric minor fold hinge (1st) | 
9.122 | Symmetric minor fold hinge (2nd) | 
9.123 | Horizontal symmetric minor fold hinge | 
9.133 | Crenulation lineation (1st) | 

### Section 12: Fluvial and Alluvial Features

Key | Name | Notes
--- | --- | --- 
12.5 | Fluvial transport direction | May also be shown in black or other colors
12.6 | Sediment transport direction determined from imbrication | May also be shown in black or other colors
12.7 | Sediment transport direction determined from crossbeds | May also be shown in black or other colors
12.8 | Sediment transport direction determined from flute casts | May also be shown in black or other colors

### Section 13: Glacial and Glaciofluvial Features

Key | Name | Notes
--- | --- | --- 
13.20 | Drumlin—Showing bearing and direction of flow | Point of observation is at the midpoint of the bearing line
13.21 | Drumlin, flow direction unknown (1st option)-Showing bearing | Point of observation is at the midpoint of the bearing line
13.22 | Drumlin, flow direction unknown (2nd option)-Showing bearing | Point of observation is at the midpoint of the bearing line
13.25 | Kettle | May also be shown in black or other colors
13.29 | Younger glacial striation or groove-Showing general bearing and direction of flow | May also be shown in black or other colors
13.30 | Younger glacial striation or groove-Showing measured bearing and direction of flow | May also be shown in black or other colors
13.31 | Older glacial striation or groove-Showing general bearing and direction of flow | May also be shown in black or other colors
13.32 | Older glacial striation or groove-Showing measured bearing and direction of flow | May also be shown in black or other colors
13.33 | Younger glacial striation or groove, flow direction unknown-Showing general bearing | May also be shown in black or other colors
13.34 | Younger glacial striation or groove, flow direction unknown-Showing measured bearing | May also be shown in black or other colors
13.35 | Older glacial striation or groove, flow direction unknown-Showing general bearing | May also be shown in black or other colors
13.36 | Older glacial striation or groove, flow direction unknown-Showing measured bearing. O | May also be shown in black or other colors

### So far so good...
