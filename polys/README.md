## Generating polygon symbology for your map

Basically, a symbolizer for polygon colors will usually look like this:

    [mapunit="Qy"] { polygon-fill: rgb(255, 255, 0); }
    
That follows a simple syntax:

    [{{ fieldname }}="{{ label }}"] { polygon-fill: {{ color }}; }
    
So you basically need to generate one of those lines for every different geologic unit on your map.

### If you're using an NCGMP Database:

... then you've got RGB values in your DescriptionOfMapUnits table, right?? If so, and your data is in a database that you can write SQL queries against (MS Access, PostgreSQL, SQL Server), then try a query like this one:

    SELECT 
    '[mapunit="' || label || '"] { polygon-fill: rgb(' || 
    split_part(areafillrgb, ';', 1)::int::char(3)
     || ', ' || 
    split_part(areafillrgb, ';', 2)::int::char(3)
     || ', ' || 
    split_part(areafillrgb, ';', 3)::int::char(3)
     || '); }' as cartocss 
     
    FROM descriptionofmapunits
    WHERE label != ''
    
That's specific to PostgreSQL and you'll have to jockey it around a little bit to make it work in another RDBMS, but the idea is simple: for each record in the DescriptionOfMapUnits table, concatenate the label field with the areafillrgb field in order to end up with a string like the one shown above.

### If your data is up already as an ESRI Map Service

... then I'll have a script for you in a minute.