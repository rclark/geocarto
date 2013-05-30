# FGDC Cartographic Standard for Geologic Maps

... has always been available in [text formats](http://ngmdb.usgs.gov/fgdc_gds/geolsymstd.php)

... and is now available in [CartoCSS](http://www.mapbox.com/carto/api/2.1.0/)


This is useful if you want to make geologic maps in TileMill, which is useful if you think geologic maps should be pretty and online. I tried to be as true to the spec as possible, but its hard to be precise about dimensions in terms like "mm" when you're dealing with a variable-zoom map.

There are three .mss files: one for polygons, one for lines, and one for points. 

- `geologic-units` is an example of symbolizing polygons by giving them a color based on the geologic unit label
- `contacts-and-faults` is an attempt to (eventually) exhaustively define symbols for lines in the FGDC cartographic standard. Notice that the .mss defines the properties of lines themselves, while line-decorations are represented by .svg markers.
- `structure-points` is the beginning of symbology for structural measurements. This is pretty straightforward, assuming .svg files are present

The `svg` folder contains .svg files that provide line-decoration markers and structural symbols. Notice that the files are named according to their respective FGDC symbol identifier.

## Progress Report:

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

### So far so good...
